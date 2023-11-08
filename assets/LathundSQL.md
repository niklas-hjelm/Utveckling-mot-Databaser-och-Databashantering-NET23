## Datatype
```sql
SELECT len(firstname), firstname FROM users
SELECT len(firstname), DATALENGTH(firstname), firstname FROM users -- stränglängd och datalängd
SELECT IDENTITY(int, 1, 1) as Ident, * into users2 FROM users -- skapa identitykolumn med SELECT into
```
## Datetime
```sql
SELECT getdate() -- Dagens datum och tid
SELECT getUTCdate() -- Dagens datum och tid UTC (GMT)
SELECT dateadd(year, 3, dateadd(hour, 2, getdate())) -- addera på tid
SELECT dateadd(year, -5, '2018-10-12 15:10:00.13') -- ett exempel till..
SELECT datediff(year, '1981-02-04', getdate()) -- diff mellan två datum
SELECT DATE FROM PARTS (1981, 2, 4);
SELECT isdate('2018-13-12 15:10:00.13') -- Korrekt datum?
set datefirst 1
SELECT datepart(WEEKDAY, getdate()) -- Ta ut del av datetime som int
--year, month, week, day, hour, minute, second, millisecond
--dayofyear, quarter, weekday
```
## Math function
```sql
SELECT abs(-5)
SELECT sin(1), sin(1 + 2 * pi()), cos(1), tan(1)
SELECT DEGREES(pi()) -- omvandla radianer till grader.
SELECT Radians(180.0) -- omvandla grader till radianer.
SELECT FLOOR(4.7), CEILING(4.7), ROUND(4.743534, 2)
SELECT power(10, 3) -- Upphöjt
SELECT rand(123), rand(), rand() -- random värde mellan 0 och 1
SELECT round(rand() * 4 + 3.5, 0) -- random värde mellan ?
SELECT sign(-15), sign(0), sign(37) -- plus eller minus?
SELECT square(3) -- Kvadrat
SELECT sqrt(9) -- Square root
```
## Logical
```sql
SELECT choose(1, 'röd', 'grön', 'blå', 'vit'); -- välj ett värde genom index.
SELECT iif(1=2, 'japp', 'nope') -- if sats som funktion.
```
## String
```sql
SELECT ascii('A') -- Ger ASCII-koden för ett tecken
SELECT char(65) -- Ger tecknet för angiven ASCII-kod
SELECT unicode(N'庪') -- Ger unicode för ett tecken
SELECT nchar(24234) -- Get tecknet för given unicode
SELECT concat('röd', 'grön', 'blå') -- Lägg ihop strängar .. (konvererar automatiskt andra datatyper till varchar)
SELECT 'röd' + 'grön' + 'blå' -- ... man kan även göra så här!
SELECT concat_ws(', ', 'röd', 'grön', 'blå') -- concat With Separator
SELECT format(getdate(), 'yyyy-MM-dd') -- formatera till nvarchar med c# formats
SELECT left('Fredrik', 3), right('Fredrik', 4) -- första X bokstäver från vänster, respektive höger.
SELECT len('Fredrik') -- längd på sträng
SELECT lower('Fredrik'), upper('Fredrik') -- lower och uppercase
SELECT '-' + ltrim('   X    ') + '-', '-' + trim('    X    ') + '-', '-' + rtrim('   X    ') + '-' -- ta bort inledande och avslutande spaces
SELECT trim('x' FROM 'xxxyyxxxzzzxxx') -- som trim fast med annat tecken än space
SELECT replace('Hello world!', 'world', 'there') -- byt ut alla förekomster av sökord i sträng.
SELECT reverse('Fredrik') -- Vänd bakochfram.
SELECT replicate('hej', 5) -- upprepar en sträng x antal gånger
SELECT '-' + space(5) + '-'; -- ger en sträng med x antal space/mellanslag
SELECT stuff('Hello world!', 3, 5, 'xxx') -- klipp in en sträng i en annan.
SELECT substring('Hello world!', 2, 3) -- del av sträng
SELECT charindex('or', 'Hello world!') -- få ett index på första träffen på en sökning i sträng
```
## Övrigt
```sql
SELECT isnull(null, 'hej')
SELECT isnull(dst, '-') FROM Airports -- ge ett alternativt värde om första är null
SELECT coalesce(null, null, null, 'test', null, 'hej') -- ge första värdet som inte är null
SELECT coalesce(dst, time, ICAO, IATA) FROM Airports -- exempel på coalesce med flera kolumner
SELECT newid() -- generar ett GUID
SELECT top 10 * FROM users order by newid() -- trick för att sortera i random ording`
```