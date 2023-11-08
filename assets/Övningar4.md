# Övningsuppgifter 4 – Vyer och stored procedures

1. Kopiera hela tabellen Users till en ny tabell. Skapa sedan en vy
med kolumnerna ID, Firstname, Lastname, Phone som listar alla
kvinnliga användare från den nya tabellen. Om man lägger till nya
användare i vyn så ska det bara gå om personnummret indikerar
att det är en kvinna.

2. Skapa en tabell ”ActiveUsers” med all data från ”Users”. Skapa en
tabell ”DeletedUsers” med samma struktur men utan några rader.
Skapa sedan en stored procedure ”DeleteUser” som tar ett
username som argument. När man exekverar SP:n så ska de rader
som matchar username i ”ActiveUsers” flyttas över till
”DeletedUsers”. SP:n ska returnera hur många rader som flyttats.

3. Skapa en SP som tar ett startdatum och ett slutdatum som
parameterar och visar (select) en kolumn med datum och en
kolumn med veckodag för alla dagar mellan (inklusive) start- och
slutdatumet.

4. Antag att vi har en fabrik med 4 produktionslinjer där vi då och då
kollar av hur många enheter som producerats sedan senaste
avcheckning och lagrar en timestamp, vilken linje och hur många
produkter. Skapa en ny tabell med testdata för att simulera att vi
samlat in sådan data under 10 års tid. Tabellen ska innehålla
1 miljon rader med kolumnerna ”timestamp” som är random
datum och tid i spannet 10 år tillbaks och nu; ”line” som är ett
random värde ’A’, ’B’, ’C’ eller ’D’; samt ”count” som är ett
random värde 1-5.

5. Skriv en SP som tar en linje, en starttid, en stoptid, och ett
intervall (antal minuter) som inparametrar. SP:n arbetar med
tabellen vi skapade i uppgift (d), och ska visa en tabell med antal
producerade enheter på en given linje, per intervall. Dvs, om vi
skickar in linje A, starttid ’2015-02-01 10:00’, stopptid ’2015-02-01
12:00’ och intervallet 30 (minuter), så vill vi ha ut 4 rader som
visar summan av producerade enheter på linjen per 30 minuter,
med start- och stop-tid på varje intervall.
Exempel output:

    |Start| End |Units|
    |-----|-----|-----|
    |2015-02-01 10:00| 2015-02-01 10:30| 6|
    |2015-02-01 10:30| 2015-02-01 11:00| 3|
    |2015-02-01 11:00| 2015-02-01 11:30| 0|
    |2015-02-01 11:30| 2015-02-01 12:00| 5|

6. Skapa en funktion som tar ett personnummer (varchar) som inparameter och kontrollerar så att det är korrekt formaterat, samt
om kontrollsiffran stämmer. Funktionen ska returnera 1 om det är
ett riktigt personnummer, annars 0. 