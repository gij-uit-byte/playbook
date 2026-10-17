# Ontwerp

De kwaliteitsvloer voor alles met een voorkant. Dit is de vloer, niet het
plafond: elk project kiest zijn eigen merk, kleuren en letters, maar zakt hier
nooit onder.

De lat ligt op het niveau van Apple's Human Interface Guidelines. Niet omdat
alles op een iPhone moet lijken, maar omdat dat de maat is waarop mensen
onbewust afrekenen: rustig, helder, en het doet wat je verwacht.

## Wat iedere voorkant doet

**Leesbaar en bedienbaar door iedereen**

- Contrast minimaal WCAG AA: 4,5:1 voor tekst, 3:1 voor grote tekst en iconen.
- Alles is met het toetsenbord te bedienen, met een **zichtbare focusring**.
- Raakvlakken minimaal 44 bij 44 punten. Een vinger is geen muiscursor.
- Lettergrootte in `rem`, zodat hij meeschaalt met de instelling van de
  gebruiker. Nooit kleiner dan 16px voor lopende tekst.
- Status nooit alleen via kleur: altijd ook een woord of een icoon.

**Overal goed**

- Werkt op 390px breed zonder horizontaal scrollen. Mobiel eerst ontwerpen.
- Licht én donker, of een bewuste keuze voor één van beide die je vastlegt.
- `prefers-reduced-motion` en `prefers-reduced-transparency` worden gerespecteerd.
- Snel: grootste element in beeld binnen 2,5 seconden, geen layout die
  verspringt tijdens het laden.

**Rustig**

- **Beweging alleen als hij iets betekent.** Een overgang die laat zien waar iets
  vandaan komt mag; versiering niet. Duur 150 tot 300 ms.
- **Geen zware schaduwen of verlopen als decoratie.** Diepte alleen waar hij iets
  vertelt — wat boven ligt, wat je kunt oppakken.
- **Geen emoji als icoon in een interface.** Gebruik SVG-iconen in één stijl.
- Typografie doet de hiërarchie. Hoe minder kaders, lijnen en kleurvlakken je
  nodig hebt om structuur te tonen, hoe beter.
- Eén signatuur per ontwerp: één ding waar het om onthouden wordt. Al het andere
  blijft stil.

**Eerlijk**

- Geen verzonnen reviews, klanten, tellers of "nog 2 op voorraad".
- Lege toestanden zijn een uitnodiging om iets te doen, geen gat.
- Nooit "Verstuurd!" tonen als er niets verstuurd is.

## Woorden

Tekst is ontwerpmateriaal, geen opvulling.

- **Schrijf vanaf de kant van de gebruiker.** Noem dingen naar wat iemand
  herkent en bedient, niet naar hoe het systeem gebouwd is.
- **Een knop zegt wat er gebeurt.** "Bestelling plaatsen", niet "Doorgaan".
  Hetzelfde woord door de hele stroom: wie op "Publiceren" klikt, krijgt
  "Gepubliceerd" terug.
- **Een foutmelding zegt wat er misging en wat je nu doet.** Zonder excuses,
  zonder vaagheid.
- Actief, concreet, zinnen in gewone hoofdletters. Geen superlatieven.
- **Het klinkt niet als AI.** De patronen om te vermijden staan in
  [`VINDBAARHEID.md`](VINDBAARHEID.md).

## Humor: een droge knipoog, en alleen waar het mag

Humor is een **merkkeuze per project**, geen huisregel. Elk project legt in zijn
`AGENTS.md` vast of het aan staat:

```
humor: droge knipoog     # of: geen
```

Staat hij aan, dan is het de droge knipoog in de kleine teksten — zoals de beste
Nederlandse webwinkels dat doen. Serieus waar het moet, een glimlach waar het
kan.

**Wél**, in de microcopy: lege toestanden, 404-pagina's, laadteksten,
bevestigingen, de kleine letters onder een formulier.

**Nooit** bij: prijs, levering, garantie, betalen, juridische tekst, en elke
fout die iemand geld of tijd kost. Daar wil een mens zekerheid, geen grap.

Drie regels die altijd gelden:

1. **De informatie gaat voor.** De grap mag de mededeling nooit vervangen. Haal
   je de knipoog weg, dan moet de tekst nog steeds alles zeggen.
2. **Nooit ten koste van de gebruiker.** Lach mét iemand, of om de situatie.
   Nooit om de persoon die net iets fout deed.
3. **Eén per scherm.** Twee grappen is een cabaretier, en die heeft niemand
   besteld.

Voorbeelden:

| plek | zonder | met een droge knipoog |
|---|---|---|
| lege winkelmand | Je winkelmand is leeg. | Je winkelmand is leeg. Dat is in elk geval goedkoop. |
| 404 | Pagina niet gevonden. | Deze pagina bestaat niet. We hebben goed gezocht. |
| bevestiging | Bericht verzonden. | Verstuurd. Nu is het hun beurt. |
| **betaling mislukt** | **De betaling is niet gelukt. Er is niets afgeschreven. Probeer het opnieuw of kies een andere betaalmethode.** | — *(hier nooit)* |
