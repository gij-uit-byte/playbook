<!-- playbook
project: <naam>
stack: <wat het draait>
live: <url, of "nog niet gedeployed">
bewaakt: <paden die drift verraden, komma-gescheiden>
geverifieerd: <JJJJ-MM-DD>
-->

# <Projectnaam> — werkinstructies voor agents

Huisregels: https://github.com/gij-uit-byte/playbook — lees die eerst.
Kort: werk dit bestand bij in dezelfde commit, en is `geverifieerd` hierboven
ouder dan 90 dagen, behandel dit document dan als aanwijzing, niet als waarheid.

Lees daarna in deze volgorde:

0. de huisregels hierboven: `WERKWIJZE.md`, `PRINCIPES.md`, `ONTWERP.md`,
   `VINDBAARHEID.md`, `DOCUMENTATIE.md`

1. `docs/spec.md` — wat we bouwen en wat we bewust niet bouwen
2. `docs/beslissingen.md` — waar we staan en waarom

## Wat dit is

<Eén alinea. Waarvoor bestaat dit project, voor wie.>

## Merk

<Alleen als dit project een voorkant heeft. Wat hier staat gaat boven
ONTWERP.md uit het playbook — maar zakt nooit onder de vloer die daar staat.>

```
humor: <droge knipoog | geen>
kleuren: <tokens, of een verwijzing naar het bestand waar ze staan>
letters: <display, body, labels>
signatuur: <het ene ding waar dit ontwerp om onthouden wordt>
```

## Draaien

```bash
<de commando's die je zelf hebt zien werken>
```

## Regels van dít project

<Alleen wat hier anders is dan normaal. Niets algemeens — dat staat in de
huisregels. Voeg een regel toe als een agent iets consequent fout doet.>

## Waar wat staat

```
<mappenstructuur, alleen de paden die ertoe doen>
```

## Status

Zie `docs/beslissingen.md`.
