# Övningsuppgifter 3 – Aggregering av data
Nu när vi lärt oss grunderna i hur man plockar ut data ur tabeller med hjälp av
SQL så ska vi kolla på hur vi får ut sådan information som inte står i klartext,
men som vi kan räkna ut och sammanställa på olika vis.


1. Ta ut (select) en rad för varje (unik) period i tabellen ”Elements” med
följande kolumner: ”period”, ”from” med lägsta atomnumret i perioden,
”to” med högsta atomnumret i perioden, ”average isotopes” med
genomsnittligt antal isotoper visat med 2 decimaler, ”symbols” med en
kommaseparerad lista av alla ämnen i perioden.

2. För varje stad som har 2 eller fler kunder i tabellen Customers, ta ut
(select) följande kolumner: ”Region”, ”Country”, ”City”, samt
”Customers” som anger hur många kunder som finns i staden.

3. Skapa en varchar-variabel och skriv en select-sats som sätter värdet:
”Säsong 1 sändes från april till juni 2011. Totalt
sändes 10 avsnitt, som i genomsnitt sågs av 2.5
miljoner människor i USA.”, följt av radbyte/char(13), följt av
”Säsong 2 sändes …” osv.
När du sedan skriver (print) variabeln till messages ska du alltså få en rad
för varje säsong enligt ovan, med data sammanställt från tabellen
GameOfThrones.
Tips: Ange ’sv’ som tredje parameter i format() för svenska månader.

4. Ta ut (select) alla användare i tabellen ”Users” så du får tre kolumner:
”Namn” som har fulla namnet; ”Ålder” som visar hur många år personen
är idag (ex. ’45 år’); ”Kön” som visar om det är en man eller kvinna.
Sortera raderna efter för- och efternamn.

5. Ta ut en lista över regioner i tabellen ”Countries” där det för varje region
framgår regionens namn, antal länder i regionen, totalt antal invånare,
total area, befolkningstätheten med 2 decimaler, samt
spädbarnsdödligheten per 100.000 födslar avrundat till heltal.

6. Från tabellen ”Airports”, gruppera per land och ta ut kolumner som visar:
land, antal flygplatser (IATA-koder), antal som saknar ICAO-kod, samt hur
många procent av flygplatserna i varje land som saknar ICAO-kod.