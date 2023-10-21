use context essentials2021

#Dette definerer fargene til det norske flagget basert på RGB-data fra fargekodene som er oppført på Wikipedia-siden. Ved å gjøre dette blir fargene helt korrekt i motsetning til de predefinerte fargene i Pyret. 
include color

#De første tre tallene i parantesene representerer rød-, grønn- og blå-verdiene, mens det siste tallet representerer opasiteten fra 0 til 1.   
hoyrod = color(186, 12, 47, 1)

morkeblaa = color(0, 32, 91, 1)


#Her defineres et rødt rektangel som skal fungere som basen til flagget. Tar utgangspunkt i proporsjonen 22:16 som er oppgitt på Wikipedia-siden og ganger dette med 10 for å få en fornuftig størrelse og en verdi som er enkel å jobbe utifra. Her brukes variabelen for den selvdefinerte rødfargen til å bestemme fargen istedenfor Pyret sin predefinerte. 
red-rect = rectangle(220, 160, "solid", hoyrod)

#Her defineres den horisontale hvite linjen. Lages av et hvitt rektangel med tilsvarende dimensjon fra Wikipedia-siden ganget med 10.
whiteline-hor = rectangle(220, 40, "solid", "white")

#Her defineres vertikale hvite linjen. Lages av et hvitt rektangel med tilsvarende dimensjon fra Wikipedia-siden ganget med 10.  
whiteline-vert = rectangle(40, 160, "solid", "white")

#Her defineres horisontale blå linjen. Lages av et blått rektangel med tilsvarende dimensjon fra Wikipedia-siden ganget med 10. På samme måte som det rød rektangelet er det brukt variabelen for den selvdefinerte blåfargen for å bestemme fargen. 
blueline-hor = rectangle(220, 20, "solid", morkeblaa)

#Her defineres vertikale blå linjen. Lages av et blått rektangel med tilsvarende dimensjon fra Wikipedia-siden ganget med 10. På samme måte som det rød rektangelet er det brukt variabelen for den selvdefinerte blåfargen for å bestemme fargen.
blueline-vert = rectangle(20, 160, "solid", morkeblaa)

#Til nå har egentlig bare alle de nødvendige "byggeklossene" blitt definert, men flagget er enda ikke produsert. Dette blir gjort under ved hjelp av put-image syntaksen. Denne plasserer "byggeklossene" på en valgt base, i dette tilfellet det røde rektangelet, ved hjelp av koordinater relativ til den. Koordinatene tar utgangspunkt i senter på figuren som plasseres. 

#For å få riktig plassering går det enten an å prøve seg frem eller man kan regne det ut fra proporsjonene til flagget.

#Det å få de hvite og blå linjene riktig plassert innenfor det røde rektangelet var det enkleste. Siden koordinatene tar utgangspunkt i senter på figuren, var det bare å bruke halvparten av 220 og 160 for å få riktig plassering. 

#Det å få riktig plassering av de vertikale blå og hvite linjene var også enkelt, men krevde litt mer tenking. Heldigvis, siden det ble tatt utgangspunkt i proporsjonene fra Wikipedia-siden var det bare å telle seg fra venstre mot høyre til man traff senter av den blå linjen. I dette tilfellet var det 8,5 som ble ganget med 10 for å få verdien 85 for å plassere begge linjene på riktig plass.  

put-image(blueline-hor, 110, 80,
  put-image(blueline-vert, 85, 80, 
    put-image(whiteline-hor, 110, 80, 
      put-image(whiteline-vert, 85, 80, red-rect))))


#Fordelen med å løse oppgaven på denne måten var, spesielt for min del, at det ble enklere å visualisere hvordan det skulle settes sammen når jeg først hadde byggeklossene klare. 

#Ulempen kommer gjerne i at f.eks. endringer på størrelse vil kreve endring i alle verdiene på hver linje. I tillegg er det også spørsmål rundt optimalisering om dette er den mest effektive måten å gjøre dette på.


