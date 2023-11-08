db.authors.insertMany([
  {
    FirstName: "Astrid",
    LastName: "Lindgren",
    Birth: 1907,
    Death: 2002,
    Books: [
      "Bröderna Lejonhjärta",
      "Här kommer Pippi Långstrump",
      "Mio min Mio",
    ],
  },
  {
    FirstName: "Hjalmar",
    LastName: "Söderberg",
    Birth: 1869,
    Death: 1941,
    Books: ["Den allvarsamma leken", "Martin Bircks ungdom", "Doktor Glas"],
  },
  {
    FirstName: "Karin",
    LastName: "Boye",
    Birth: 1900,
    Death: 1941,
    Books: ["Samlade dikter", "Kallocain"],
  },
  {
    FirstName: "August",
    LastName: "Strindberg",
    Birth: 1849,
    Death: 1912,
    Books: ["Hemsöborna", "Röda rummet"],
  },
]);
