# Vindbaarheid

Hoe je gevonden wordt zonder de trucs die Google afstraft. Dit gaat over
zoekmachines, maar het is dezelfde regel als overal hier: iets wat echt nuttig
is, eerlijk gebracht.

## Wat Google werkelijk afstraft

Google zegt zelf wat verboden is:

> "many pages generated for the primary purpose of manipulating search
> rankings and not helping users … no matter how it's created."
>
> — [Google Search spam policies](https://developers.google.com/search/docs/essentials/spam-policies), bijgewerkt 28 augustus 2026

AI gebruiken mag. Maar met AI maak je in een middag duizend pagina's waar
niemand op zat te wachten, en wie dat doet riskeert niet alleen die pagina's
maar de hele site.

## De regels

1. **Eén pagina per echte vraag, met eigen inhoud.** Geen pagina per stad, per
   zoekwoord of per variant als die pagina's verder hetzelfde zeggen. Moet zo'n
   pagina bestaan — voor werving, voor een link, voor later — dan krijgt hij
   `noindex` tot hij iets eigens heeft.
2. **Laat zien wat alleen jij weet.** Eigen foto's, eigen metingen, eigen
   prijzen, eigen ervaring, een naam onder het stuk. Dat kan een model niet
   namaken.
3. **Elk getal heeft een bron.** Zonder bron schrijf je het niet op. Een cijfer
   dat je niet kunt herleiden, is een cijfer dat je verzonnen hebt.
4. **Een mens is verantwoordelijk.** AI mag het eerste concept schrijven. Een mens
   leest het voor het live gaat en staat ervoor in.
5. **Het klinkt niet als AI.** Zie hieronder. Lezers haken af zodra ze het
   herkennen.
6. **De sitemap noemt alleen wat geïndexeerd mag worden.** Geen `noindex`-pagina's
   in de sitemap; dat zijn twee tegenstrijdige signalen.
7. **Gestructureerde data alleen als het klopt.** Geen sterren, reviews of
   voorraad in schema.org die niet echt bestaan.

## Tekst die niet naar AI klinkt

AI-tekst herken je aan patronen, niet aan woorden alleen. De belangrijkste:

- **Niet-X-maar-Y.** "Het is niet zomaar een fiets, het is een levensstijl."
- **Drietallen uit gewoonte.** "Snel, betrouwbaar en betaalbaar." Noem er één,
  of noem er vier als het er vier zijn.
- **Een eenregelige afsluiter die diep wil klinken.** "En dat maakt het verschil."
- **Opgeblazen woorden.** cruciaal, naadloos, ontdek, ontgrendel, in het hart
  van, een wereld van, tot in de puntjes.
- **Een aanloop voor het eigenlijke punt.** "Laten we eerlijk zijn:", "Het mooie
  is:", "Hier komt het:".
- **Gedachtestreepjes als universeel lijm.** Eén per alinea is genoeg.
- **Vet als versiering.** Vet is voor wat iemand bij het scannen echt moet zien.

De volledige lijst, met uitleg waarom modellen zo schrijven:
[Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing).
In Claude Code doet de skill `humanizer` deze controle; in andere harnesses
gebruik je die pagina als checklist.

Wat ervoor in de plaats komt: zeg het gewoon. Concreet, actief, met het getal
erbij. "Levert binnen twee werkdagen, gratis vanaf 99 euro" in plaats van
"snelle en voordelige levering".
