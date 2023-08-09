use  MyTestDb;

create table if not exists MyUsers(
 id int not null AUTO_INCREMENT PRIMARY KEY,
 First_Name varchar(25) Not null,
 Last_Name varchar(25) Not null,
 UserId varchar(25),
 Pswd varchar(25),
 isAdmin int,
 isActive int
);


create table if not exists MyWebDocs(
 id int not null AUTO_INCREMENT PRIMARY KEY,
 Title varchar(25) Not null,
-- Category varchar(25),
 Header1 varchar(25),
 Text1 varchar(225),
 ParentPage int DEFAULT 0,
 SortOrder int DEFAULT 2,
 isActive int
);

create table if not exists Movies(
 id int not null AUTO_INCREMENT PRIMARY KEY,
 Title varchar(25) Not null,
 MovieDescription varchar(25),
 Genre varchar(225),
 Rating varchar(225),
 ReleaseYear int,
 isActive int,
);

-- Sample data
INSERT INTO MyUsers ( id, First_Name, Last_Name, UserId, Pswd, isAdmin, isActive)
VALUES    (1, 'uFirstName', 'uLastName', 'myuser', 'a', 0, 1)
ON DUPLICATE KEY UPDATE
First_Name = 'uFirstName', Last_Name = 'uLastName', UserId = 'myuser', Pswd = 'a', isAdmin = 0, isActive = 1;

INSERT INTO MyUsers ( id, First_Name, Last_Name, UserId, Pswd, isAdmin, isActive)
VALUES    (2, 'aFirstName', 'aLastName', 'myadmin', 'a', 1, 1)
ON DUPLICATE KEY UPDATE
First_Name = 'aFirstName', Last_Name = 'aLastName', UserId = 'myadmin', Pswd = 'a', isAdmin = 1, isActive = 1;

INSERT INTO MyUsers ( id, First_Name, Last_Name, UserId, Pswd, isAdmin, isActive)
VALUES    (2, 'aFirstName', 'aLastName', 'myadmin', 'a', 1, 1)
ON DUPLICATE KEY UPDATE
First_Name = 'aFirstName', Last_Name = 'aLastName', UserId = 'myadmin', Pswd = 'a', isAdmin = 1, isActive = 1;

-- --------------------------------------
-- Main links/pages
INSERT INTO MyWebDocs ( id, Title, Header1, Text1, SortOrder, isActive)
VALUES    (1, 'Home', 'Movies', 'My text, asfaf af af af a sag asf saf', 0, 1)
ON DUPLICATE KEY UPDATE
Title = 'Home', Header1 = 'Movies', Text1 = 'My text, asfaf af af af a sag asf saf', SortOrder = 0, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, SortOrder, isActive)
VALUES    (2, 'About', 'About Us', 'My text, asfaf af af af a sag asf saf', 2, 1)
ON DUPLICATE KEY UPDATE
Title = 'About', Header1 = 'About Us', Text1 = 'My text, asfaf af af af a sag asf saf', SortOrder = 2, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, SortOrder, isActive)
VALUES    (3, 'Add', 'Add a new movie', 'My text, asfaf af af af a sag asf saf', 3, 1)
ON DUPLICATE KEY UPDATE
Title = 'Add', Header1 = 'Add a new movie', Text1 = 'My text, asfaf af af af a sag asf saf', SortOrder = 3, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, SortOrder, isActive)
VALUES    (4, 'Genres', 'Genres', 'My text, asfaf af af af a sag asf saf', 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Genres', Header1 = 'Genres', Text1 = 'My text, asfaf af af af a sag asf saf', SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, SortOrder, isActive)
VALUES    (5, 'Lists', 'Your Lists', 'My text, asfaf af af af a sag asf saf', 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Lists', Header1 = 'Your Lists', Text1 = 'My text, asfaf af af af a sag asf saf', SortOrder = 4, isActive = 1;

-- ---------------------
-- Sub pages
-- Note Parent Id points to the record with id=1
INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (5, 'Home 1', 'Sub Header number 1', 'My text, asfaf af af af a sag asf saf', 1, 3, 1)
ON DUPLICATE KEY UPDATE
Title = 'Home 1', Header1 = 'Sub Header number 1', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 1, SortOrder = 3, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (6, 'Home 2', 'Sub Header number 2', 'My text, asfaf af af af a sag asf saf', 1, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Home 2', Header1 = 'Sub Header number 2', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 1, SortOrder = 4, isActive = 1;

--genres  animation,Christmas, comedy,fantasy, horror, sci-fi,  
INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (7, 'Animation', 'Animation', 'My text, asfaf af af af a sag asf saf', 4, 3, 1)
ON DUPLICATE KEY UPDATE
Title = 'Animation', Header1 = 'Animation', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 3, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Christmas', 'Christmas', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Christmas', Header1 = 'Christmas', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Comedy', 'Comedy', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Comedy', Header1 = 'Comedy', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Fantasy', 'Fantasy', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Fantasy', Header1 = 'Fantasy', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Horror', 'Horror', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Horror', Header1 = 'Horror', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Sci-fi', 'Sci-fi', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Sci-fi', Header1 = 'Sci-fi', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

--Lists History, watch later, edit lists
INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Edit Lists', 'Sci-fi', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Sci-fi', Header1 = 'Sci-fi', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Sci-fi', 'Sci-fi', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Sci-fi', Header1 = 'Sci-fi', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;

INSERT INTO MyWebDocs ( id, Title, Header1, Text1, ParentPage, SortOrder, isActive)
VALUES    (8, 'Sci-fi', 'Sci-fi', 'My text, asfaf af af af a sag asf saf', 4, 4, 1)
ON DUPLICATE KEY UPDATE
Title = 'Sci-fi', Header1 = 'Sci-fi', Text1 = 'My text, asfaf af af af a sag asf saf', ParentPage = 4, SortOrder = 4, isActive = 1;


--About Locations email
--Insert into Movie table 
INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (1, 'Shrek', 'Once upon a time, in a far away swamp, there lived an ogre named Shrek (Mike Myers) whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad (John Lithgow). Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona (Cameron Diaz) to be Farquaads bride. Rescuing the Princess may be small compared to her deep, dark secret.', 'Comedy', 'PG', 2001, 1)
ON DUPLICATE KEY UPDATE
Title = 'Shrek', MovieDescription = 'Once upon a time, in a far away swamp, there lived an ogre named Shrek (Mike Myers) whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad (John Lithgow). Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona (Cameron Diaz) to be Farquaads bride. Rescuing the Princess may be small compared to her deep, dark secret.', Genre = 'Comedy', Rating = 'PG', ReleaseYear = 2001, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (2, 'Shrek 2', 'After returning from their honeymoon and showing home movies to their friends, Shrek and Fiona learn that her parents have heard that she has married her true love and wish to invite him to their kingdom, called Far Far Away. The catch is: Fionas parents are unaware of the curse that struck their daughter and have assumed she married Prince Charming, not a 700-pound ogre with horrible hygiene and a talking donkey pal.', 'Comedy', 'PG', 2004, 1)
ON DUPLICATE KEY UPDATE
Title = 'Shrek 2', MovieDescription = 'After returning from their honeymoon and showing home movies to their friends, Shrek and Fiona learn that her parents have heard that she has married her true love and wish to invite him to their kingdom, called Far Far Away. The catch is: Fionas parents are unaware of the curse that struck their daughter and have assumed she married Prince Charming, not a 700-pound ogre with horrible hygiene and a talking donkey pal.', Genre = 'Comedy', Rating = 'PG', ReleaseYear = 2004, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (3, 'Shrek 3', 'When King Harold suddenly croaks, Shrek (Mike Myers) learns he will have to rule the land of Far, Far Away, unless he can find a suitable heir to the throne. The most-promising candidate is Princess Fionas (Cameron Diaz) cousin Artie (Justin Timberlake), a teenage slacker in a medieval high-school. Shrek and his trusted companions, Donkey (Eddie Murphy) and Puss in Boots (Antonio Banderas), set out to bring Artie back but find their mission is a bigger challenge than they expected.', 'Animation', 'PG', 2007, 1)
ON DUPLICATE KEY UPDATE
Title = 'Shrek 3', MovieDescription = 'When King Harold suddenly croaks, Shrek (Mike Myers) learns he will have to rule the land of Far, Far Away, unless he can find a suitable heir to the throne. The most-promising candidate is Princess Fionas (Cameron Diaz) cousin Artie (Justin Timberlake), a teenage slacker in a medieval high-school. Shrek and his trusted companions, Donkey (Eddie Murphy) and Puss in Boots (Antonio Banderas), set out to bring Artie back but find their mission is a bigger challenge than they expected.', Genre = 'Animation', Rating = 'PG', ReleaseYear = 2007, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (4, 'Shrek Forever After', 'Long-settled into married life and fully domesticated, Shrek (Mike Myers) begins to long for the days when he felt like a real ogre. Duped into signing a contract with devious Rumpelstiltskin, he finds himself in an alternate version of Far Far Away, where ogres are hunted, Rumpelstiltskin rules, and he and Fiona (Cameron Diaz) have never met. Shrek must find a way out of the contract to restore his world and reclaim his true love.', 'Animation', 'PG', 2010, 1)
ON DUPLICATE KEY UPDATE
Title = 'Shrek Forever After', MovieDescription = 'Long-settled into married life and fully domesticated, Shrek (Mike Myers) begins to long for the days when he felt like a real ogre. Duped into signing a contract with devious Rumpelstiltskin, he finds himself in an alternate version of Far Far Away, where ogres are hunted, Rumpelstiltskin rules, and he and Fiona (Cameron Diaz) have never met. Shrek must find a way out of the contract to restore his world and reclaim his true love.', Genre = 'Animation', Rating = 'PG', ReleaseYear = 2010, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (5, 'Shrek The Halls', 'This half-hour animated TV special features the Shrek characters putting their own spin on holiday traditions.', 'Christmas', 'Not Rated', 2007, 1)
ON DUPLICATE KEY UPDATE
Title = 'Shrek The Halls', MovieDescription = 'This half-hour animated TV special features the Shrek characters putting their own spin on holiday traditions.', Genre = 'Christmas', Rating = 'Not Rated', ReleaseYear = 2007, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (6, 'Halloween', 'On a cold Halloween night in 1963, six year old Michael Myers brutally murdered his 17-year-old sister, Judith. He was sentenced and locked away for 15 years. But on October 30, 1978, while being transferred for a court date, a 21-year-old Michael Myers steals a car and escapes Smiths Grove. He returns to his quiet hometown of Haddonfield, Illinois, where he looks for his next victims.', 'Horror', 'R', 1978, 1)
ON DUPLICATE KEY UPDATE
Title = 'Halloween', MovieDescription = 'On a cold Halloween night in 1963, six year old Michael Myers brutally murdered his 17-year-old sister, Judith. He was sentenced and locked away for 15 years. But on October 30, 1978, while being transferred for a court date, a 21-year-old Michael Myers steals a car and escapes Smiths Grove. He returns to his quiet hometown of Haddonfield, Illinois, where he looks for his next victims.', Genre = 'Horror', Rating = 'R', ReleaseYear = 3, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (7, 'Halloween II', 'After failing to kill stubborn survivor Laurie (Jamie Lee Curtis) and taking a bullet or six from former psychiatrist Dr. Sam Loomis (Donald Pleasence), Michael Myers (Jonathan Prince) has followed Laurie to the Haddonfield Memorial Hospital, where she has been admitted for Myers attempt on her life. The institution proves to be particularly suited to serial killers, however, as Myers cuts, stabs and slashes his way through hospital staff to reach his favorite victim.', 'Horror', 'R', 1981, 1)
ON DUPLICATE KEY UPDATE
Title = 'Halloween II', MovieDescription = 'After failing to kill stubborn survivor Laurie (Jamie Lee Curtis) and taking a bullet or six from former psychiatrist Dr. Sam Loomis (Donald Pleasence), Michael Myers (Jonathan Prince) has followed Laurie to the Haddonfield Memorial Hospital, where she has been admitted for Myers attempt on her life. The institution proves to be particularly suited to serial killers, however, as Myers cuts, stabs and slashes his way through hospital staff to reach his favorite victim.', Genre = 'Horror', Rating = 'R', ReleaseYear = 1981, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (8, 'Star Wars: The Phantom Menace', 'Obi-Wan Kenobi (Ewan McGregor) is a young apprentice Jedi knight under the tutelage of Qui-Gon Jinn (Liam Neeson) ; Anakin Skywalker (Jake Lloyd), who will later father Luke Skywalker and become known as Darth Vader, is just a 9-year-old boy. When the Trade Federation cuts off all routes to the planet Naboo, Qui-Gon and Obi-Wan are assigned to settle the matter.', 'Sci-Fi', 'PG', 1999, 1)
ON DUPLICATE KEY UPDATE
Title = 'Star Wars: The Phantom Menace', MovieDescription = 'Obi-Wan Kenobi (Ewan McGregor) is a young apprentice Jedi knight under the tutelage of Qui-Gon Jinn (Liam Neeson) ; Anakin Skywalker (Jake Lloyd), who will later father Luke Skywalker and become known as Darth Vader, is just a 9-year-old boy. When the Trade Federation cuts off all routes to the planet Naboo, Qui-Gon and Obi-Wan are assigned to settle the matter.', Genre = 'Sci-Fi', Rating = 'PG', ReleaseYear = 1999, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (9, 'Star Wars: Attack of the Clones', 'Set ten years after the events of "The Phantom Menace," the Republic continues to be mired in strife and chaos. A separatist movement encompassing hundreds of planets and powerful corporate alliances poses new threats to the galaxy that even the Jedi cannot stem. These moves, long planned by an as yet unrevealed and powerful force, lead to the beginning of the Clone Wars -- and the beginning of the end of the Republic.', 'Sci-Fi', 'PG', 2002, 1)
ON DUPLICATE KEY UPDATE
Title = 'Star Wars: Attack of the Clones', MovieDescription = 'Set ten years after the events of "The Phantom Menace," the Republic continues to be mired in strife and chaos. A separatist movement encompassing hundreds of planets and powerful corporate alliances poses new threats to the galaxy that even the Jedi cannot stem. These moves, long planned by an as yet unrevealed and powerful force, lead to the beginning of the Clone Wars -- and the beginning of the end of the Republic.', Genre = 'Sci-Fi', Rating = 'PG', ReleaseYear = 2002, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (10, 'Star Wars: Revenge of The Sith', 'It has been three years since the Clone Wars began. Jedi Master Obi-Wan Kenobi (Ewan McGregor) and Jedi Knight Anakin Skywalker (Hayden Christensen) rescue Chancellor Palpatine (Ian McDiarmid) from General Grievous, the commander of the droid armies, but Grievous escapes. Suspicions are raised within the Jedi Council concerning Chancellor Palpatine, with whom Anakin has formed a bond. Asked to spy on the chancellor, and full of bitterness toward the Jedi Council, Anakin embraces the Dark Side.', 'Sci-Fi', 'PG-13', 2005, 1)
ON DUPLICATE KEY UPDATE
Title = 'Star Wars: Revenge of The Sith', MovieDescription = 'It has been three years since the Clone Wars began. Jedi Master Obi-Wan Kenobi (Ewan McGregor) and Jedi Knight Anakin Skywalker (Hayden Christensen) rescue Chancellor Palpatine (Ian McDiarmid) from General Grievous, the commander of the droid armies, but Grievous escapes. Suspicions are raised within the Jedi Council concerning Chancellor Palpatine, with whom Anakin has formed a bond. Asked to spy on the chancellor, and full of bitterness toward the Jedi Council, Anakin embraces the Dark Side.', Genre = 'Sci-Fi', Rating = 'PG-13', ReleaseYear = 2005, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (11, 'Lord of The Rings: The Fellowship of The Ring', 'The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged.', 'Fantasy', 1, 3, 1)
ON DUPLICATE KEY UPDATE
Title = 'Lord of The Rings: The Fellowship of The Ring', MovieDescription = 'The future of civilization rests in the fate of the One Ring, which has been lost for centuries. Powerful forces are unrelenting in their search for it. But fate has placed it in the hands of a young Hobbit named Frodo Baggins (Elijah Wood), who inherits the Ring and steps into legend. A daunting task lies ahead for Frodo when he becomes the Ringbearer - to destroy the One Ring in the fires of Mount Doom where it was forged.', Genre = 'Fantasy', Rating = 'PG-13', ReleaseYear = 2001, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (11, 'Lord of The Rings: The Two Towers', '"The Two Towers" follows the continuing quest of Frodo (Elijah Wood) and the Fellowship to destroy the One Ring. Frodo and Sam (Sean Astin) discover they are being followed by the mysterious Gollum. Aragorn (Viggo Mortensen), the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Sarumans deadly spell.', 'Fantasy', 'PG-13', 2002, 1)
ON DUPLICATE KEY UPDATE
Title = 'Lord of The Rings: The Two Towers', MovieDescription = '"The Two Towers" follows the continuing quest of Frodo (Elijah Wood) and the Fellowship to destroy the One Ring. Frodo and Sam (Sean Astin) discover they are being followed by the mysterious Gollum. Aragorn (Viggo Mortensen), the Elf archer Legolas and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Sarumans deadly spell.', Genre = 'Fantasy', Rating = 'PG-13', ReleaseYear = 2002, isActive = 1;

INSERT INTO Movies ( id, Title, MovieDescription, Genre, Rating, ReleaseYear, isActive)
VALUES    (12, 'Lord of The Rings: The Return of The King', 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits Frodo and Sam reach Mordor in their quest to destroy the "one ring", while Aragorn leads the forces of good against Saurons evil army at the stone city of Minas Tirith.', 'Fantasy', 'PG-13', 2003, 1)
ON DUPLICATE KEY UPDATE
Title = 'Lord of The Rings: The Return of The King', MovieDescription = 'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Hobbits Frodo and Sam reach Mordor in their quest to destroy the "one ring", while Aragorn leads the forces of good against Saurons evil army at the stone city of Minas Tirith.', Genre = 'Fantasy', Rating = 'PG-13', ReleaseYear = 2003, isActive = 1;






