#!/usr/bin/env bash
# /playbook check — diagnose, schrijft niets.
# Draai vanuit de projectroot:  curl -sS https://raw.githubusercontent.com/gij-uit-byte/playbook/main/check.sh | bash
#
# Leest het statusblok bovenin AGENTS.md en controleert vier dingen:
#   1. is de verificatie ouder dan 90 dagen
#   2. is een bewaakt pad gewijzigd na die verificatie
#   3. doen de commando's die AGENTS.md belooft het nog
#   4. bestaat de structuur die AGENTS.md beschrijft
set -uo pipefail

RED=$'\033[31m'; GRN=$'\033[32m'; YEL=$'\033[33m'; OFF=$'\033[0m'
problemen=0
meld() { printf '  %s%s%s %s\n' "$1" "$2" "$OFF" "$3"; }

[ -f AGENTS.md ] || { echo "${RED}Geen AGENTS.md in $(pwd) — dit project heeft nog geen playbook.${OFF}"; exit 2; }

veld() { grep -m1 "^$1:" AGENTS.md | cut -d: -f2- | sed 's/^ *//'; }
GEV=$(veld geverifieerd)
BEW=$(veld bewaakt)

echo "playbook check — $(veld project)  ($(pwd))"
echo

# --- 1. leeftijd -------------------------------------------------------------
echo "1. leeftijd van de verificatie"
if [ -z "$GEV" ]; then
  meld "$RED" "!" "geen 'geverifieerd'-datum in het statusblok"; problemen=$((problemen+1))
else
  dagen=$(python3 -c "from datetime import date;print((date.today()-date.fromisoformat('$GEV')).days)" 2>/dev/null || echo "?")
  if [ "$dagen" = "?" ]; then
    meld "$RED" "!" "datum '$GEV' is onleesbaar"; problemen=$((problemen+1))
  elif [ "$dagen" -gt 90 ]; then
    meld "$RED" "!" "$dagen dagen oud — ONBEVESTIGD, behandel dit playbook als aanwijzing"; problemen=$((problemen+1))
  else
    meld "$GRN" "ok" "$dagen dagen oud"
  fi
fi
echo

# --- 2. bewaakte paden -------------------------------------------------------
echo "2. bewaakte paden gewijzigd na $GEV"
if [ -z "$BEW" ]; then
  meld "$YEL" "?" "geen 'bewaakt'-lijst — drift op code valt hier niet op"
else
  for f in ${BEW//,/ }; do
    laatst=$(git log -1 --format=%cs -- "$f" 2>/dev/null)
    if [ -z "$laatst" ]; then
      meld "$YEL" "?" "$f (niet in git-historie)"
    elif [[ "$laatst" > "$GEV" ]]; then
      meld "$RED" "!" "$f gewijzigd op $laatst — NA verificatie"; problemen=$((problemen+1))
    else
      meld "$GRN" "ok" "$f (laatst $laatst)"
    fi
  done
fi
echo

# --- 3. beloofde commando's --------------------------------------------------
# Alleen scripts die in package.json staan; een belofte die faalt is drift.
echo "3. doen de beloofde commando's het nog"
if [ -f package.json ]; then
  for s in lint build test typecheck; do
    if node -e "process.exit(require('./package.json').scripts?.['$s']?0:1)" 2>/dev/null; then
      if npm run "$s" >/tmp/playbook-$s.log 2>&1; then
        meld "$GRN" "ok" "npm run $s"
      else
        meld "$RED" "!" "npm run $s FAALT — zie /tmp/playbook-$s.log"; problemen=$((problemen+1))
      fi
    fi
  done
else
  meld "$YEL" "?" "geen package.json — niets om te draaien"
fi
echo

# --- 4. beschreven structuur -------------------------------------------------
# Elk pad dat in AGENTS.md tussen `backticks` staat, een / bevat en op een
# bestandsextensie of slash eindigt, moet bestaan. De / is nodig: zonder die eis
# vangt de controle ook losse bestandsnamen in lopende tekst, en dat is ruis.
echo "4. bestaat wat AGENTS.md beschrijft"
gevonden=0
while IFS= read -r pad; do
  case "$pad" in */*) ;; *) continue ;; esac            # moet een pad zijn, geen losse naam
  case "$pad" in *"<"*|*"*"*|*"{"*) continue ;; esac   # patroon of plekhouder, geen echt pad
  case "$pad" in /*|http*|*://*) continue ;; esac       # URL of route op de site, geen bestand in de repo
  case "$pad" in node_modules/*) continue ;; esac       # niet ons werk
  case "$pad" in *.md|*.ts|*.tsx|*.sql|*.json|*.css|*/) ;; *) continue ;; esac
  gevonden=$((gevonden+1))
  if [ -e "$pad" ]; then meld "$GRN" "ok" "$pad"
  else meld "$RED" "!" "$pad staat in AGENTS.md maar bestaat niet"; problemen=$((problemen+1)); fi
done < <(grep -o '`[^`]*`' AGENTS.md | tr -d '`' | sort -u)
[ "$gevonden" -eq 0 ] && meld "$YEL" "?" "geen paden genoemd in AGENTS.md"
echo

if [ "$problemen" -eq 0 ]; then
  echo "${GRN}Playbook klopt met de werkelijkheid.${OFF}"
else
  echo "${RED}$problemen punt(en) lopen uit de pas.${OFF} Werk de betrokken sectie bij en zet 'geverifieerd' op vandaag."
fi
exit 0
