1. Starta MongoDB Shell
Öppna din terminal och skriv mongo för att ansluta till din MongoDB-instans.

2. Skapa en Databas
Använd use för att skapa eller växla till din databas:

```javascript
use myTestDB
```

3. Create (Skapa) med insertOne
insertOne används för att skapa en ny post i en samling. Om samlingen inte finns skapas den.

```javascript
db.users.insertOne({ name: "Anna", age: 25, city: "Gothenburg" })
```

1. Read (Läs)
Använd find för att läsa poster. För att visa alla poster:

```javascript
db.users.find()
```

För att hitta en specifik post:

``` js
db.users.find({ name: "Anna" })
```

1. Update (Uppdatera) med updateOne
updateOne uppdaterar första posten som matchar kriteriet.

```javascript
db.users.updateOne({ name: "Anna" }, { $set: { age: 26 } })
```

Detta kommando hittar första posten där namnet är "Anna" och uppdaterar åldern till 26.

1. Delete (Ta Bort) med deleteOne
deleteOne tar bort första posten som matchar kriteriet.

```javascript
db.users.deleteOne({ name: "Anna" })
```

Detta kommando tar bort första posten där namnet är "Anna".

1. Avsluta Shell
För att avsluta MongoDB Shell, skriv quit().

Notering
insertOne, updateOne och deleteOne påverkar endast en (den första) post som matchar det angivna kriteriet. Om du behöver hantera flera poster samtidigt, skulle du använda insertMany, updateMany, eller deleteMany.
Var försiktig med updateOne och deleteOne för att säkerställa att du riktar in dig på rätt post.
