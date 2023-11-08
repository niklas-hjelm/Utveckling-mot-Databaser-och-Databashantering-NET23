# Manipulera data i mongo Shell
Lös uppgifterna nedan och skriv ner kommandona du använder, samt responsen
från MongoDB, i en text fil (.txt). 

Lös gärna uppgifterna i grupper om 2-3 personer, men det går också bra att göra
på egenhand för den som vill det. 


Exampel på hur ni skriver textfilen (NiklasHjelm.txt):</br>
Fråga 1: Använd en databas med namn myDB.
    use myDB <= Detta är vad du skrivit in i mongo Shell</br>
    switched to db myDB <= Detta är responsen på ditt kommando</br>
Fråga 2: Skapa ett dokument med innehåll {FirstName: ”Selma”, LastName:</br>
    Lagerlöf och sätt in det i en kollektion med namn ”authors”.</br>
    db.authors.insertOne({FirstName: "Selma", "LastName": "Lagerlöf"});</br>
    {</br>
     "acknowledged" : true,</br>
     "insertedId" : ObjectId("5ffb0c809ce3f50389992eb0")</br>
    }</br>
## Anslut mot en lokal MongoDB server:
1. Använd en databas med namn myDB.
2. Skapa ett dokument med innehåll FirstName: ”Selma”, LastName: Lagerlöf
och sätt in det i en kollektion med namn ”authors”.
3. Lägg till ytterligare ett dokument i ”authors” med FirstName: ”August”,
LastName: ”Bondeson”, Birth: 1854
4. Uppdatera dokumentet för August Bondeson och lägg till Death: 1906 
5. Lägg till ytterligare författare i ”authors” genom att köra kommandot
load(”addAuthors.js”) från mongo Shell. [addAuthors.js](./addAuthors.js). Eller öppna den filen och copy/pasta innehållet i mongosh.
6. Räkna hur många dokument det finns totalt i ”authors”.
7. Räkna hur många författare som heter August i förnamn.
8. Lägg till Birth: 1858 och Death: 1940 för Selma Lagerlöf
9. Lägg till en array ”Books” för Selma Lagerlöf med följande böcker:
”Gösta Berlings saga”, ”En herrgårdssägen”,
”Nils Holgerssons underbara resa genom Sverige”
10. Lägg till boken ”Vi på Saltkråkan” bland Astrid Lindgrens böcker.
11. Ta bort boken ”Bröderna Lejonhjärta” från Astrid Lindgrens böcker.
12. Visa dokument för de författare som dog år 2000 eller senare.
13. Räkna hur många författare som dog på 1940-talet.
14. Visa endast attributen FirstName, LastName och Death för de författare
som dog på 1940-talet.
15. Lägg till Gender: ”Male” i dokument med FirstName = ”Hjalmar”.
16. Lägg till Gender: ”Female” i dokument där FirstName är Astrid, Karin eller
Selma.
17. Ta bort arrayen Books från dokumentet med August Strindberg.
18. Ta bort dokumenten där FirstName = ”August”. 
## Anslut mot molntjänst – uppgifter med aggregering:
Använd MongoDB Atlas, och sätt upp en server i en molntjänst t.ex Azure.
Ladda in Atlas sample dataset, och connecta till servern från mongo Shell för att
göra uppgifterna nedan.

Använd dig gärna av MongoDB Compass Community för
att underlätta när du kollar igenom större dokument.


Använd dig av kollektionen listingsAndReviews i databasen sample_airbnb:
1. Ta ut (projicera) attributen name, price, och listing_url för de dokument
med property_type: ”House” och som har följande amenities:
"Pool", "Air conditioning", ”BBQ grill" och ”Gym”.


Använd dig av kollektionen movies i databasen sample_mflix:
1. Räkna antalet filmer där Drew Barrymore spelar mot Adam Sandler.
2. Gruppera på attribut ”rated”, räkna antal filmer i varje grupp och sortera
efter antal i fallande ordning (högst antal först).
4. Ta fram antalet filmer med Harrison Ford, och det lägsta, det högsta, samt
genomsnittliga betyget bland dessa filmer på IMDB.


Använd dig av kollektionen sales i databasen sample_supplies:
1. Skapa en vy (view) med namn satisfaction som visar genomsnittlig
satisfaction per gender och purchaseMethod. 
