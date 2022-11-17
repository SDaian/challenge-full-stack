# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

francis = Director.create(name: "Francis Ford Coppola")
steven = Director.create(name: "Steven Spielberg")
nolan = Director.create(name: "Christopher Nolan")
peter = Director.create(name: "Peter Jackson")
robert = Director.create(name: "Robert Zemeckis")
martin = Director.create(name: "Martin Scorsese")
quentin = Director.create(name: "Quentin Tarantino")
brian = Director.create(name: "Brian De Palma")
ricky = Director.create(name: "Ricky Gervais")

Movie.create([
  {
    title: "The Godfather",
    description: "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
    rating: 4.8,
    director_id: francis.id
  },
  {
    title: "The Godfather II",
    description: "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
    rating: 4.6,
    director_id: francis.id
  },
  {
    title: "The Godfather III",
    description: "In the midst of trying to legitimize his business dealings in 1979 New York and Italy, aging mafia don, Michael Corleone seeks forgiveness for his sins while taking a young protege under his wing.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/lm3pQ2QoQ16pextRsmnUbG2onES.jpg",
    rating: 4.4,
    director_id: francis.id
  },
  {
    title: "Jurassic Park",
    description: "A wealthy entrepreneur secretly creates a theme park featuring living dinosaurs drawn from prehistoric DNA. Before opening day, he invites a team of experts and his two eager grandchildren to experience the park and help calm anxious investors. However, the park is anything but amusing as the security systems go off-line and the dinosaurs escape.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/b1xCNnyrPebIc7EWNZIa6jhb1Ww.jpg",
    rating: 4.3,
    director_id: steven.id
  },
  {
    title: "Schindler's List",
    description: "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg",
    rating: 4.6,
    director_id: steven.id
  },
  {
    title: "Batman Begins",
    description: "Driven by tragedy, billionaire Bruce Wayne dedicates his life to uncovering and defeating the corruption that plagues his home, Gotham City. Unable to work within the system, he instead creates a new identity, a symbol of fear for the criminal underworld - The Batman.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8RW2runSEc34IwKN2D1aPcJd2UL.jpg",
    rating: 4.5,
    director_id: nolan.id
  },
  {
    title: "Batman The Dark Knight",
    description: "Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    rating: 4.5,
    director_id: nolan.id
  },
  {
    title: "Batman The Dark Knight Rises",
    description: "Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent's crimes to protect the late attorney's reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham's finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/hrJUZ5Jo2G3Czy391evhlxgbEdJ.jpg",
    rating: 4.5,
    director_id: nolan.id
  },
  {
    title: "The Lord of the Rings",
    description: "Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg",
    rating: 4.2,
    director_id: peter.id
  },
  {
    title: "Forrest Gump",
    description: "A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do. But despite all he has achieved, his one true love eludes him.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/saHP97rTPS5eLmrLQEcANmKrsFl.jpg",
    rating: 4.4,
    director_id: robert.id
  },
  {
    title: "The Wolf of Wall Street",
    description: "A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort's autobiography.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg",
    rating: 4.3,
    director_id: martin.id
  },
  {
    title: "GoodFellas",
    description: "The true story of Henry Hill, a half-Irish, half-Sicilian Brooklyn kid who is adopted by neighbourhood gangsters at an early age and climbs the ranks of a Mafia family under the guidance of Jimmy Conway.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg",
    rating: 4.7,
    director_id: martin.id
  },
  {
    title: "Inglourious Bastards",
    description: "In Nazi-occupied France during World War II, a group of Jewish-American soldiers known as The Basterds are chosen specifically to spread fear throughout the Third Reich by scalping and brutally killing Nazis. The Basterds, lead by Lt. Aldo Raine soon cross paths with a French-Jewish teenage girl who runs a movie theater in Paris which is targeted by the soldiers.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/7sfbEnaARXDDhKm0CZ7D7uc2sbo.jpg",
    rating: 4.5,
    director_id: quentin.id
  },
  {
    title: "Once upon a time... in Hollywood",
    description: "Los Angeles, 1969. TV star Rick Dalton, a struggling actor specializing in westerns, and stuntman Cliff Booth, his best friend, try to survive in a constantly changing movie industry. Dalton is the neighbor of the young and promising actress and model Sharon Tate, who has just married the prestigious Polish director Roman Polanski…",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/8j58iEBw9pOXFD2L0nt0ZXeHviB.jpg",
    rating: 3.8,
    director_id: quentin.id
  },
  {
    title: "Scarface",
    description: "After getting a green card in exchange for assassinating a Cuban government official, Tony Montana stakes a claim on the drug trade in Miami. Viciously murdering anyone who stands in his way, Tony eventually becomes the biggest drug lord in the state, controlling nearly all the cocaine that comes through Miami. But increased pressure from the police, wars with Colombian drug cartels and his own drug-fueled paranoia serve to fuel the flames of his eventual downfall.",
    image_url: "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/iQ5ztdjvteGeboxtmRdXEChJOHh.jpg",
    rating: 3.8,
    director_id: brian.id
  },
  {
    title: "The Office",
    description: "The everyday lives of office employees in the Scranton, Pennsylvania branch of the fictional Dunder Mifflin Paper Company.",
    image_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qWnJzyZhyy74gjpSjIXWmuk0ifX.jpg",
    rating: 5.0,
    director_id: ricky.id
  },
])
