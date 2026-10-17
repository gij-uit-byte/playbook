# Playbook

Huisregels voor alles wat ik bouw: websites, tools, automatisering, agents.
Bedoeld voor mensen én voor AI-agents, in welke harness dan ook — Claude Code,
Cursor, OpenCode, of wat er daarna komt.

Deze repo is bewust openbaar, zodat een agent op een verse machine de regels
zonder inloggen kan ophalen. Er staat daarom niets in wat bedrijfsspecifiek of
gevoelig is: alleen werkwijze.

## Zes bestanden, elk één onderwerp

| bestand | waarover | lees je wanneer |
|---|---|---|
| [`WERKWIJZE.md`](WERKWIJZE.md) | hoe een agent werkt: bewijs vóór bewering, andermans werk niet aanraken | altijd, voor je begint |
| [`PRINCIPES.md`](PRINCIPES.md) | hoe je iets opbouwt: architectuur, keuzes, grenzen | je iets nieuws ontwerpt of toevoegt |
| [`ONTWERP.md`](ONTWERP.md) | de kwaliteitsvloer voor alles met een voorkant, en toon | je een scherm, pagina of tekst maakt |
| [`VINDBAARHEID.md`](VINDBAARHEID.md) | gevonden worden zonder trucs, en tekst die niet naar AI klinkt | je iets publiceert dat gevonden moet worden |
| [`DOCUMENTATIE.md`](DOCUMENTATIE.md) | hoe een project wordt vastgelegd zodat een ander het oppakt | je een project begint, overdraagt of afsluit |
| [`TEMPLATE.md`](TEMPLATE.md) | een lege `AGENTS.md` om mee te beginnen | je een nieuw project aanlegt |

En [`check.sh`](check.sh): een controle die vertelt of de documentatie van een
project nog klopt met de werkelijkheid.

```bash
curl -sS https://raw.githubusercontent.com/gij-uit-byte/playbook/main/check.sh | bash
```

## Hoe een project dit gebruikt

Elk project heeft een `AGENTS.md` die hierheen verwijst en daarnaast alleen
opschrijft wat voor dát project anders is: zijn merk, zijn stack, zijn
besluiten. De regels hier worden niet gekopieerd — een kopie loopt uit de pas
met het origineel, en dan is er geen waarheid meer.

## Wanneer een regel hier hoort

Als hij voor meer dan één project geldt en je hem zonder schaamte openbaar kunt
maken. Geldt hij alleen voor één project, dan hoort hij in de `AGENTS.md` van
dat project. Is hij gevoelig, dan hoort hij in een privé-repo.

Een regel komt erbij als er iets twee keer misging. Niet voor de volledigheid.
