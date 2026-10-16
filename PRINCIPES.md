# Principes

Hoe je iets opbouwt. Deze regels gelden voor elke laag: code, automatisering,
data, agents. Ze zijn bedoeld om één ding te voorkomen: een systeem waarvan
niemand meer weet hoe het samenhangt.

## 1. Eerst weghalen, dan pas toevoegen

**`REMOVE > REUSE > EXTEND > ADD`.** Kun je iets weghalen in plaats van
toevoegen, doe dat. Bestaat het al, gebruik het. Kun je iets bestaands
uitbreiden, doe dat. Pas als niets daarvan kan, bouw je iets nieuws.

Elk nieuw onderdeel kost onderhoud, zolang het bestaat. De goedkoopste code is
de code die er niet is.

## 2. Geen spaghetti: hub-and-spoke, altijd

Systemen koppelen niet kriskras aan elkaar. Elk soort gegeven heeft één thuis,
en andere systemen praten met dat thuis — niet met elkaar.

Waarom dit de belangrijkste regel is: spaghetti ontstaat nooit in één keer. Het
is elke keer één kleine, redelijke koppeling. Na tien daarvan staat dezelfde
klant in vijf lijsten, komt een melding langs zes routes binnen, en ziet niemand
meer dat iemand al dagen wacht.

Concreet:

- Eén plek voor taken. Eén manier om meldingen te sturen.
- Een nieuwe directe koppeling tussen twee systemen, of een nieuwe kopie van
  bedrijfsgegevens, is een **besluit dat je vastlegt** met de reden erbij — geen
  bijzaak in een commit.
- Een agent krijgt nooit een eigen koppeling met mail, chat of een winkel. Hij
  gebruikt dezelfde gedeelde ingangen als de rest.

## 3. De waarheid staat in een database, niet in een gesprek

Wat er speelt, wat er afgesproken is, wat er openstaat: dat staat in een
database of in een bestand in git. Niet in de chatgeschiedenis van een agent,
niet in iemands hoofd, en niet in een prompt.

Een afspraak die alleen in een chat bestaat, bestaat niet. Leg hem vast, of hij
is er morgen niet meer.

## 4. Agents denken, code bewaakt

Een AI-agent is goed in redeneren en slecht in garanderen. Wat echt mis mag
gaan — geld, klantgegevens, iets versturen, iets verwijderen — wordt bewaakt
door code, niet door een zin in een prompt.

"Vraag eerst toestemming" in een prompt is een wens. Een goedkeuring die
technisch afgedwongen wordt is een regel.

## 5. Grenzen leggen waar ze niet te omzeilen zijn

Controle in de browser is gemak voor de gebruiker, geen beveiliging: de browser
is van de bezoeker. Wat echt moet gelden, staat in de database (constraints,
rechten per kolom en per rol) of op de server.

Ga uit van de minst vertrouwde partij die bij een gegeven kan komen, en geef die
precies genoeg rechten. Ingelogd is niet hetzelfde als vertrouwd.

## 6. API, dan webhook, dan pas browser

Een officiële API of MCP gaat voor. Daarna een webhook. Een browser
automatiseren is de laatste keuze: breekbaar, traag, en het valt om bij de
eerste wijziging aan andermans site.

## 7. Alles is terug te herleiden

Bij elke belangrijke actie is te zien wie of wat hem deed, waarom, en op basis
waarvan. Als iets misgaat moet je kunnen nagaan hoe het zo kwam, zonder te
raden.

## 8. Ontwikkeling, test, productie

Niet experimenteren op het systeem waar klanten op draaien. Probeer het eerst
ergens waar het mag breken.

## 9. Mainstream en vervangbaar

Open standaarden en gangbare tools boven slimme eigen oplossingen en
leveranciersspecifieke opslag. Wat mainstream is, kan iemand anders overnemen;
wat slim is, kan straks niemand meer onderhouden.

Dat geldt ook voor de AI-kant: geen enkel onderdeel mag afhankelijk zijn van één
specifieke harness of één model. Daarom staan deze regels hier, in platte tekst,
en niet in de instellingen van één tool.

## 10. Niets verzinnen

Geen verzonnen klanten, cijfers, reviews, voorraad, partners of geschiedenis.
Ook niet als plekhouder die "later wel" vervangen wordt — die blijft staan.

Geloofwaardigheid komt van systemen die kloppen, niet van schaal die er niet is.
Wat nog niet gecontroleerd is, zeg je er eerlijk bij.
