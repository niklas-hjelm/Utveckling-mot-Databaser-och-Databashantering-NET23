# Introduktionsövningar

Dessa övningar är ämnade till att introducera er till SQL och SQL Server.

Installera *SQL Server 2019* **och** *SQL Server Management studio* i den ordningen.

Starta SSMS och öppna en *New Query*. Spara med **ctrl+s** och döp filen till dittNamnIntro ex: NiklasIntro.sql. Spara sedan filen i en mapp med namnet SQLÖvningarDittNamn ex: SQLÖvningarNiklas. Spara kontinuerligt och kommentera ut de rader som du redan kört med **ctrl+k+c**. Denna filen ska finnas till Torsdagens lektion.

1. Skapa en databas med namnet DjurDb
2. Lägg till en tabell som heter DjurTbl med kolumnerna Id och Namn där Id är **PRIMARY KEY** och Namn får inte vara null.

    |Id|Namn|
    |-|-|
    |int Primary Key| nvarchar(max) not  null |

3. Lägg till dessa fyra djur i tabellen DjurTbl: Hamster, Hund, Katt, Kanin
4. Lista hela innehållet i tabellen DjurTbl
    |Id|Namn|
    |-|-|
    |1| Hamster |
    |2| Hund |
    |3| Katt |
    |4| Kanin |
5. Lista alla djur med a i namnet
    |Id|Namn|
    |-|-|
    |1| Hamster |
    |3| Katt |
    |4| Kanin |
6. Ta bort tabellen och databasen
7. Skapa en databas fom heter KlassenDb
8. Skapa en tabell för personer i KlassenDb som ska ha 5 kolumner: Id, Förnamn, Efternamn, ålder och Hemort
    |Id|Förnamn|Efternamn|Ålder|Hemort|
    |-|-|-|-|-|
    |int Primary Key| nvarchar(max) not  null | nvarchar(max) not  null |int  | nvarchar(max) not  null |
8. Fyll på tabellen med alla personer i din studiegrupp inklusive dig själv.

När du är klar med detta ska du gå in på GitHub.com och skapa ett repo med namnet DatabaserDiverse med en tom README.md, hämta repot och lägg in din SQLÖvningar-mapp och pusha sedan. Använd Github Desktop för att underlätta.
