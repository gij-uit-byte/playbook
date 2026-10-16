# Playbook

Werkafspraken voor het vastleggen van een project, zodat elke AI-agent het koud
kan oppakken — Claude Code, Cursor, OpenCode, of wat er daarna komt.

Deze repo is bewust openbaar. Niet omdat er iets bijzonders in staat, maar omdat
een agent op een verse machine de regels dan zonder inloggen kan ophalen.

## Waarom dit bestaat

Een agent die een oude README leest, scant hem sceptisch. Een agent die een oude
`AGENTS.md` leest, gehoorzaamt hem met volle overtuiging: verkeerd bouwcommando,
vervallen conventie, allemaal tot de letter uitgevoerd.

Verouderde projectdocumentatie is daarom gevaarlijker dan geen documentatie.
Alles hieronder is daarop gericht: niet op mooi opschrijven, maar op merken
wanneer het niet meer klopt.

## De vorm

```
AGENTS.md                de voordeur: statusblok, verwijzing hierheen, projectfeiten
CLAUDE.md                één regel: "zie AGENTS.md"
docs/spec.md             wat we bouwen + BEWUST NIET GEBOUWD
docs/beslissingen.md     elk besluit met datum en reden + open punten
docs/designsysteem.md    alleen bij iets met een voorkant
```

`AGENTS.md` is de bron van waarheid en `CLAUDE.md` verwijst ernaar — nooit
andersom. Reden: Cursor leest `AGENTS.md`, en OpenCode leest `AGENTS.md` maar
valt terug op `CLAUDE.md` als die er niet is. Twee gevulde bestanden lopen uit
elkaar, en dan is er geen waarheid meer.

**Scheid houdbaar van vluchtig.** Een besluit als "waarom niet dit framework"
gaat jaren mee. "Wat er live staat" veroudert in weken. Staan ze door elkaar in
één bestand, dan vertrouwt een agent het hele document niet meer. Vluchtige
status hoort in het statusblok, kort en gedateerd, en nergens anders.

## Het statusblok

Bovenin `AGENTS.md`, machineleesbaar zodat een script het over alle projecten
heen kan uitlezen:

```markdown
<!-- playbook
project: <naam>
stack: <wat het draait>
live: <url, of "nog niet gedeployed">
bewaakt: <paden die drift verraden, komma-gescheiden>
geverifieerd: <JJJJ-MM-DD>
-->
```

`bewaakt` is een **korte, krappe** lijst architectuur-significante bestanden.
Een te brede lijst laat de controle bij elke commit afgaan, en een controle die
altijd afgaat wordt genegeerd — dan heb je de drift én de ruis.

`geverifieerd` is de dag waarop iemand de beweringen echt heeft nagelopen. Niet
de dag van de laatste tekstwijziging.

## De vier regels

1. **In dezelfde commit.** Verandert een conventie, een commando, een besluit of
   de structuur, dan gaat de wijziging in de documentatie mee in diezelfde
   commit. Niet aan het eind van de sessie — een sessie die vastloopt of wordt
   afgekapt haalt dat eind niet.
2. **Ouder dan 90 dagen is onbevestigd.** Loopt `geverifieerd` verder achter,
   dan behandelt een agent het document als aanwijzing en niet als waarheid:
   eerst controleren, dan handelen. Dit is de enige regel die zonder enige
   infrastructuur in elke harness werkt.
3. **Verwijderen hoort erbij.** Vervalt een conventie, haal de regel weg. Voeg
   een sectie toe als een agent iets consequent fout doet, niet voor de
   volledigheid. `AGENTS.md` blijft onder de 200 regels.
4. **Geen dubbele waarheid.** Staat iets in `docs/spec.md`, dan staat het niet
   ook in `AGENTS.md`. Verwijs ernaar. Dat geldt ook voor deze regels: een
   project verwijst hierheen en kopieert ze niet.

## De controle

Draai vanuit de projectroot:

```bash
curl -sS https://raw.githubusercontent.com/eBikeXL/playbook/main/check.sh | bash
```

Hij controleert vier dingen en schrijft niets:

1. Is `geverifieerd` ouder dan 90 dagen.
2. Is een bewaakt pad gewijzigd ná die datum.
3. **Doen de commando's die `AGENTS.md` belooft het nog** — lint, build, test
   worden echt uitgevoerd. Een belofte die faalt is het bewijs dat de
   documentatie niet meer klopt.
4. Bestaan de paden die in `AGENTS.md` genoemd worden.

Schrijf paden altijd volledig (`src/lib/data.ts`, niet `data.ts`). Stap 4
controleert alleen wat een `/` bevat; een losse bestandsnaam in lopende tekst is
niet van gewone tekst te onderscheiden.

## Wat er niet in een playbook hoort

- Wat de code zelf al vertelt. Geen opsomming van elke functie.
- Geheimen, sleutels, tokens. Verwijs naar waar ze staan.
- Verzonnen status. "Waarschijnlijk live" bestaat niet: kijk, of schrijf
  "niet gecontroleerd".
- Problemen verzwijgen. Een ongetest schema of een ontbrekende deploy hoort er
  expliciet in — anders loopt de volgende agent erin.
