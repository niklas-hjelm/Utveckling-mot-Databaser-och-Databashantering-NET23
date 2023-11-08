# Fortsatta Övningar med Repository Pattern och UnitOfWork

## Övningar med Repository Pattern (16-20)

### Övning 16: Skapa ett grundläggande Repository
- **Mål**: Förstå och implementera grunden för repository-mönstret.
- **Uppgift**:
  - Skapa ett `IRepository` interface med grundläggande CRUD-operationer.
  - Implementera en `Repository` klass som använder `AppDbContext` och implementerar `IRepository`.

### Övning 17: Repository för specifika entiteter
- **Mål**: Skapa specialiserade repository för specifika entiteter.
- **Uppgift**:
  - Utveckla `IProductRepository`, `ICategoryRepository`, och `ISupplierRepository` som ärver från `IRepository`.
  - Implementera klasser för varje repository som innehåller specifika metoder för sina entiteter, till exempel `FindProductsByCategory`.

### Övning 18: Använda Repository i affärslogik
- **Mål**: Integrera repository-mönstret i applikationens affärslogik.
- **Uppgift**:
  - Skapa en affärslogik klass, `ProductService`, som använder `IProductRepository` för att hantera produktrelaterade operationer.
  - Implementera affärsregler i `ProductService`, som kan innefatta validering och komplexa förfrågningar.

### Övning 19: Utöka Repository med avancerade förfrågningar
- **Mål**: Utöka repository-klasserna med mer avancerade förfrågningsmetoder.
- **Uppgift**:
  - Lägg till metoder för att hämta data med komplexa förfrågningar, som `GetTopSellingProducts` eller `GetProductsBySupplierAndCategory`.

### Övning 20: Repository-prestandaoptimering
- **Mål**: Optimering av repository-förfrågningar för bättre prestanda.
- **Uppgift**:
  - Använd profileringsverktyg för att identifiera och förbättra långsamma repository-förfrågningar.
  - Implementera caching-strategier i repository-klasserna där det är lämpligt.

## Bonusövningar med UnitOfWork (21-22)

### Bonusövning 21: Skapa ett UnitOfWork-interface
- **Mål**: Förstå och definiera ett UnitOfWork-interface för att hantera transaktioner.
- **Uppgift**:
  - Skapa ett `IUnitOfWork` interface som innehåller metoder som `SaveChanges`, `BeginTransaction`, och `CommitTransaction`.
  - Implementera `UnitOfWork` klassen som hanterar `AppDbContext` och implementerar `IUnitOfWork`.

### Bonusövning 22: Integrera UnitOfWork i affärslogiken
- **Mål**: Använda UnitOfWork-mönstret i applikationens affärslogik för att hantera transaktioner.
- **Uppgift**:
  - Anpassa `ProductService` och andra affärslogik klasser att använda `IUnitOfWork` för att säkerställa transaktionsintegritet.
  - Skapa scenarier där flera databasoperationer måste utföras som en del av en transaktion, till exempel att uppdatera lager och skapa order i en enda operation.
