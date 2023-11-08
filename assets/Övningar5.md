# .NET Backend-utvecklingsövningar med Entity Framework Core och SQL Server

## Övningar med Code First-ansatsen (1-5)

### Övning 1: Skapa en ny entitet och DbContext
- **Mål**: Förstå grunderna i att skapa en DbContext och entiteter.
- **Uppgift**:
  - Skapa en enkel `Blog`-entitet med egenskaper som `Id`, `Title` och `Content`.
  - Implementera en `AppDbContext`-klass som ärver från `DbContext` och innehåller en `DbSet<Blog>`.

### Övning 2: Migrationer och uppdatering av databas
- **Mål**: Lär dig hantera databasmigrationer.
- **Uppgift**:
  - Lägg till en migration för att skapa databasschemat baserat på den nya `Blog`-entiteten.
  - Använd `Update-Database` för att skapa databasen.

### Övning 3: Lägga till fler entiteter
- **Mål**: Förstå att arbeta med flera entiteter och relationer.
- **Uppgift**:
  - Skapa entiteter för `Author` och `Comment`, definiera relationerna (t.ex. en författare har många blogginlägg, ett blogginlägg kan ha många kommentarer).

### Övning 4: Förfrågningar och CRUD-operationer
- **Mål**: Lär dig att utföra grundläggande CRUD-operationer med EF Core.
- **Uppgift**:
  - Implementera funktioner för att skapa, läsa, uppdatera och radera blogginlägg och författare.
  - Utforska användningen av LINQ för att ställa förfrågningar till databasen.

### Övning 5: Avancerade relationer och förfrågningar
- **Mål**: Hantera komplexa relationer och utföra avancerade förfrågningar.
- **Uppgift**:
  - Lägg till funktioner för att hantera kommentarer, inklusive att lägga till en kommentar till ett inlägg och hämta alla kommentarer för ett specifikt inlägg.
  - Använd LINQ för att utföra förfrågningar som involverar joins mellan tabeller.

## Övningar för databasuppsättning och applikationsutveckling (6-15)

### Övning 6: Design av en databas med tre tabeller
- **Mål**: Skapa och designa en databas med tre relaterade tabeller.
- **Uppgift**:
  - Definiera en databas med tabellerna `Product`, `Category` och `Supplier`.
  - `Product` bör inkludera kolumner för `Id`, `Name`, `Price`, `CategoryId` och `SupplierId`.
  - `Category` bör inkludera `Id` och `Name`.
  - `Supplier` bör ha `Id`, `Name` och `ContactInformation`.
  - Upprätta relationer där `Product` har en `CategoryId` som är en främmande nyckel till `Category` och en `SupplierId` som är en främmande nyckel till `Supplier`.

### Övning 7: CRUD-operationer för en entitet
- **Mål**: Implementera CRUD för en enskild entitet.
- **Uppgift**:
  - Skriv funktioner för att hantera CRUD-operationer för `Category`-entiteten.
  - Inkludera funktioner för att skapa en ny kategori, lista alla kategorier, uppdatera en kategori och ta bort en kategori.

### Övning 8: En-till-många-relationer
- **Mål**: Hantera en-till-många-relationer.
- **Uppgift**:
  - Implementera funktioner för att lägga till produkter och koppla dem till en kategori.
  - Visa alla produkter inom en specifik kategori.

### Övning 9: Många-till-en-relationer
- **Mål**: Förstå många-till-en-relationer.
- **Uppgift**:
  - Skapa funktioner för att visa alla produkter för en leverantör och uppdatera leverantörsinformation för en produkt.
  - Lägg till och uppdatera kontaktinformation för leverantörer.

### Övning 10: Många-till-många-relationer
- **Mål**: Hantera många-till-många-relationer.
- **Uppgift**:
  - Designa en ny `Tag`-entitet för att hantera många-till-många-relationen mellan `Product` och `Tag`.
  - Implementera CRUD-operationer för `Tag` och funktioner för att tilldela taggar till produkter.

### Övning 11: Sökningar och filtrering
- **Mål**: Utföra sökningar och filtrera data.
- **Uppgift**:
  - Implementera sökfunktioner för att hitta produkter baserat på kategori, leverantör eller taggar.
  - Lägg till funktioner för att filtrera produkter efter prisintervall.

### Övning 12: Sortering och paginering
- **Mål**: Implementera sortering och paginering.
- **Uppgift**:
  - Lägg till funktioner för att sortera produkter efter pris eller namn.
  - Implementera paginering för produktlistningar.

### Övning 13: Aggregering och gruppering
- **Mål**: Använda aggregerings- och grupperingsfunktioner.
- **Uppgift**:
  - Skapa rapporter som visar totala försäljningen per kategori, genomsnittspriset per leverantör.
  - Gruppera produkter efter kategori och visa antalet produkter per kategori.

### Övning 14: Använda transaktioner
- **Mål**: Förstå användningen av databastransaktioner.
- **Uppgift**:
  - Implementera en funktion där flera databasoperationer utförs inom en transaktion, såsom att uppdatera lagerstatus och skapa en order.

### Övning 15: Optimering och prestandaförbättringar
- **Mål**: Lär dig att optimera förfrågningar och förbättra prestanda.
- **Uppgift**:
  - Använd profileringverktyg för att hitta och optimera långsamma förfrågningar.
  - Implementera caching där det är lämpligt, till exempel för produktlistor som sällan ändras.
