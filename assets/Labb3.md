# Labb 3 - Applikation med MongoDB Code First
## Utveckla en databasapp med MongoDB.Driver
I denna övning utvecklar vi en applikation i C# som använder MongoDB.Driver
för att låta användaren läsa och uppdatera data i en databas. Ni väljer själva om ni
vill göra en Console- eller WPF-App, så länge funktionaliteten är på plats.
Ni kan välja på ett av de föreslagna projekten nedan, eller hitta på en egen idé.
## Förslag 1
Skriv en Quiz-applikation som använder MongoDB.
Detta ska göras med en collection för frågor(en frågebank) och en för quizzar.
Användaren ska kunna lista frågor för de olika quizzarna, samt
kunna lägga till och ta bort frågor från quizzarna. När man lägger till frågor ska
man kunna välja från samtliga frågor som redan finns (i frågebanken).
En fråga ska ha: frågetext och minst tre svarsalternativ varav ett är korrekt.
Ett Quiz ska ha: namn, beskrivning och en lista med frågor.

För VG ska användaren dessutom kunna sätta kategorier på frågorna och sortera efter dessa,
och då kunna välja bland befintliga kategorier. Man ska även kunna lägga till nya
kategorier. När man lägger in nya frågor ska man kunna mata in allt som behövs för frågan.
När man ändrar i ett Quiz ska man kunna sortera frågor på kategorier och söka efter frågor baserat på namn.
## Förslag 2
Skriv om eran Butiks-applikation från Labb 2 eller 3 i C# för att använda MongoDB.
Detta ska göras med en collection för produkter(en alla produkter) och en för användare med kundvagnar.
Man ska kunna handla så som man kunde i Labb 2 och läga till/ta bort produkter ur sortimentet. 
När användaren väljer att checka ut/bekräfta köp ska kundvagnen för den aktuella användaren tömmas.

För VG ska man implementera `butiker`. En butik ska ha sitt eget lager med produkter och antal av sådana.
När en användare väljer att handla ska hen kunna välja butik och sedan placera ordrar från den butiken.
Det behövs således en collection för butiker och en för ordrar.
## Egna projekt
Ni kan föreslå egna projekt, men kom ihåg att ni i så fall ska beskriva idén och
omfånget och få den godkänd av mig innan ni påbörjar utvecklingsarbetet.
Minst två tabeller och att användaren både kan läsa
och uppdatera data i databasen på något sätt.
Samt ytterligare någon eller några tabeller och mer funktionalitet.

För VG se förslag 1 och 2 ovan för att få en idé om hur stort omfånget på projektet bör vara. (Överenskommelse krävs)

Några förslag på idéer:

App där man kan bygga ihop lekar av pokemon-/magic-kort från en databas.

Kokbok-app där användare kan lägga in recept och kommentera och betygsätta.

## Redovising
Detta är en individuell uppgift. Repo för genomförande finnes på: [Github Classroom](https://classroom.github.com/a/_kuONCiL)

## Betygskriterier

### För godkänt krävs

* Man ska kunna utföra samtliga CRUD-operationer mot en MongoDB-databas med MongoDB.Driver
* Applikationen ska ansvara för att skapa det som behövs i MongoDB.
* Applikationen ska använda minst två collections.
* Det ska gå att clona repot och köra applikationen på ett smidigt sätt.

### För väl godkänt krävs:

* Samtliga krav för godkänt är uppfyllda.
* VG-uppgiften för det valda förslaget är uppfllt.

## Deadline är 28/01 23:59
### Sen inlämning kommer inte rättas och innebär komplettering i Maj.
