PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Generations (
  genID INTEGER,
  added INTEGER,
  total INTEGER,
  PRIMARY KEY (genID)
);
INSERT INTO "Generations" VALUES(1,151,151);
INSERT INTO "Generations" VALUES(2,100,251);
INSERT INTO "Generations" VALUES(3,135,386);
INSERT INTO "Generations" VALUES(4,107,493);
INSERT INTO "Generations" VALUES(5,156,649);
INSERT INTO "Generations" VALUES(6,72,721);
CREATE TABLE Regions (
  regionID INTEGER,
  name TEXT,
  league TEXT,
  grass_starter TEXT,
  fire_starter TEXT,
  water_starter TEXT,
  PRIMARY KEY (regionID)
);
INSERT INTO "Regions" VALUES(1,'Kanto','Indigo League','Bulbasaur','Charmander','Squirtle');
INSERT INTO "Regions" VALUES(2,'Johto','Johto League','Chikorita','Cyndaquil','Totodile');
INSERT INTO "Regions" VALUES(3,'Hoenn','Hoenn League','Treecko','Torchic','Mudkip');
INSERT INTO "Regions" VALUES(4,'Sinnoh','Sinnoh League','Turtwig','Chimchar','Piplup');
INSERT INTO "Regions" VALUES(5,'Unova','Unova League','Snivy','Tepig','Oshawott');
INSERT INTO "Regions" VALUES(6,'Kalos','Kalos League','Chespin','Fennekin','Froakie');
CREATE TABLE Games (
  gameID INTEGER,
  genID INTEGER,
  regionID INTEGER,
  title TEXT,
  system TEXT,
  year INTEGER,
  cover TEXT,
  PRIMARY KEY (gameID),
  FOREIGN KEY (genID) REFERENCES Generations (genID),
  FOREIGN KEY (regionID) REFERENCES Regions (regionID)
);
INSERT INTO "Games" VALUES(0,1,1,'Pokemon Red','Game Boy',1996,'Charizard');
INSERT INTO "Games" VALUES(1,1,1,'Pokemon Green','Game Boy',1996,'Venusaur');
INSERT INTO "Games" VALUES(2,1,1,'Pokemon Blue','Game Boy',1996,'Blastoise');
INSERT INTO "Games" VALUES(3,1,1,'Pokemon Yellow','Game Boy Color',1998,'Pikachu');
INSERT INTO "Games" VALUES(4,2,2,'Pokemon Gold','Game Boy Color',1999,'Ho-oh');
INSERT INTO "Games" VALUES(5,2,2,'Pokemon Silver','Game Boy Color',1999,'Lugia');
INSERT INTO "Games" VALUES(6,2,2,'Pokemon Crystal','Game Boy Color',2000,'Suicune');
INSERT INTO "Games" VALUES(7,3,3,'Pokemon Ruby','Game Boy Advance',2002,'Groudon');
INSERT INTO "Games" VALUES(8,3,3,'Pokemon Sapphire','Game Boy Advance',2002,'Kyogre');
INSERT INTO "Games" VALUES(9,3,1,'Pokemon FireRed','Game Boy Advance',2004,'Charizard');
INSERT INTO "Games" VALUES(10,3,1,'Pokemon LeafGreen','Game Boy Advance',2004,'Venusaur');
INSERT INTO "Games" VALUES(11,3,3,'Pokemon Emerald','Game Boy Advance',2004,'Rayquaza');
INSERT INTO "Games" VALUES(12,4,4,'Pokemon Diamond','Nintendo DS',2006,'Dialga');
INSERT INTO "Games" VALUES(13,4,4,'Pokemon Pearl','Nintendo DS',2006,'Palkia');
INSERT INTO "Games" VALUES(14,4,4,'Pokemon Platinum','Nintendo DS',2008,'Giratina');
INSERT INTO "Games" VALUES(15,4,2,'Pokemon HeartGold','Nintendo DS',2009,'Ho-oh');
INSERT INTO "Games" VALUES(16,4,2,'Pokemon SoulSilver','Nintendo DS',2009,'Lugia');
INSERT INTO "Games" VALUES(17,5,5,'Pokemon Black','Nintendo DS',2010,'Reshiram');
INSERT INTO "Games" VALUES(18,5,5,'Pokemon White','Nintendo DS',2010,'Zekrom');
INSERT INTO "Games" VALUES(19,5,5,'Pokemon Black 2','Nintendo DS',2012,'Kyurem');
INSERT INTO "Games" VALUES(20,5,5,'Pokemon White 2','Nintendo DS',2012,'Kyurem');
INSERT INTO "Games" VALUES(21,6,6,'Pokemon X','Nintendo 3DS',2013,'Xerneas');
INSERT INTO "Games" VALUES(22,6,6,'Pokemon Y','Nintendo 3DS',2013,'Yveltal');
INSERT INTO "Games" VALUES(23,6,3,'Pokemon Omega Ruby','Nintendo 3DS',2014,'Groudon');
INSERT INTO "Games" VALUES(24,6,3,'Pokemon Alpha Sapphire','Nintendo 3DS',2014,'Kyogre');
CREATE TABLE Leaders (
  leaderID INTEGER,
  name TEXT,
  gender TEXT,
  type TEXT,
  city TEXT,
  badge TEXT,
  PRIMARY KEY (leaderID)
);
INSERT INTO "Leaders" VALUES(0,'Brock','M','Rock','Pewter City','Boulder Badge');
INSERT INTO "Leaders" VALUES(1,'Misty','F','Water','Cerulean City','Cascade Badge');
INSERT INTO "Leaders" VALUES(2,'Lt. Surge','M','Electric','Vermilion City','Thunder Badge');
INSERT INTO "Leaders" VALUES(3,'Erika','F','Grass','Celadon City','Rainbow Badge');
INSERT INTO "Leaders" VALUES(4,'Koga','M','Poison','Fuchsia City','Soul Badge');
INSERT INTO "Leaders" VALUES(5,'Sabrina','F','Psychic','Saffron City','Marsh Badge');
INSERT INTO "Leaders" VALUES(6,'Blaine','M','Fire','Cinnabar Island','Volcano Badge');
INSERT INTO "Leaders" VALUES(7,'Giovanni','M','Ground','Viridian City','Earth Badge');
INSERT INTO "Leaders" VALUES(8,'Falkner','M','Flying','Violet City','Zephyr Badge');
INSERT INTO "Leaders" VALUES(9,'Bugsy','M','Bug','Azalea Tow','Hive Badge');
INSERT INTO "Leaders" VALUES(10,'Whitney','F','Normal','Goldenrod City','Plain Badge');
INSERT INTO "Leaders" VALUES(11,'Morty','M','Ghost','Ecruteak City','Fog Badge');
INSERT INTO "Leaders" VALUES(12,'Chuck','M','Fighting','Cianwood City','Storm Badge');
INSERT INTO "Leaders" VALUES(13,'Jasmine','F','Steel','Olivine City','Mineral Badge');
INSERT INTO "Leaders" VALUES(14,'Pryce','M','Ice','Mahogany Town','Glacier Badge');
INSERT INTO "Leaders" VALUES(15,'Clair','F','Dragon','Blackthorn City','Rising Badge');
INSERT INTO "Leaders" VALUES(16,'Roxanne','F','Rock','Rustboro City','Stone Badge');
INSERT INTO "Leaders" VALUES(17,'Brawly','M','Fighting','Dewford Town','Knuckle Badge');
INSERT INTO "Leaders" VALUES(18,'Wattson','M','Electric','Mauville City','Dynamo Badge');
INSERT INTO "Leaders" VALUES(19,'Flannery','F','Fire','Lavaridge Town','Heat Badge');
INSERT INTO "Leaders" VALUES(20,'Norman','M','Normal','Petalburg City','Balance Badge');
INSERT INTO "Leaders" VALUES(21,'Winona','F','Flying','Fortree City','Feather Badge');
INSERT INTO "Leaders" VALUES(22,'Tate','M','Psychic','Mossdeep City','Mind Badge');
INSERT INTO "Leaders" VALUES(23,'Wallace','M','Water','Sootopolis City','Rain Badge');
INSERT INTO "Leaders" VALUES(24,'Juan','M','Water','Sootopolis City','Rain Badge');
INSERT INTO "Leaders" VALUES(25,'Roark','M','Rock','Oreburgh City','Coal Badge');
INSERT INTO "Leaders" VALUES(26,'Gardenia','F','Grass','Eterna City','Forest Badge');
INSERT INTO "Leaders" VALUES(27,'Maylene','F','Fighting','Veilstone City','Cobble Badge');
INSERT INTO "Leaders" VALUES(28,'Crasher Wake','M','Water','Pastoria City','Fen Badge');
INSERT INTO "Leaders" VALUES(29,'Fantina','F','Ghost','Hearthome City','Relic Badge');
INSERT INTO "Leaders" VALUES(30,'Byron','M','Steel','Canalave City','Mine Badge');
INSERT INTO "Leaders" VALUES(31,'Candice','F','Ice','Snowpoint City','Icicle Badge');
INSERT INTO "Leaders" VALUES(32,'Volkner','M','Electric','Sunyshore City','Beacon Badge');
INSERT INTO "Leaders" VALUES(33,'Cilan','M','Grass','Striation City','Trio Badge');
INSERT INTO "Leaders" VALUES(34,'Chili','M','Fire','Striation City','Trio Badge');
INSERT INTO "Leaders" VALUES(35,'Cress','M','Water','Striation City','Trio Badge');
INSERT INTO "Leaders" VALUES(36,'Lenora','F','Normal','Nacrene City','Basic Badge');
INSERT INTO "Leaders" VALUES(37,'Burgh','M','Bug','Castelia City','Insect Badge');
INSERT INTO "Leaders" VALUES(38,'Elesa','F','Electric','Nimbasa City','Bolt Badge');
INSERT INTO "Leaders" VALUES(39,'Clay','M','Ground','Driftveil City','Quake Badge');
INSERT INTO "Leaders" VALUES(40,'Skyla','F','Flying','Mistralton City','Jet Badge');
INSERT INTO "Leaders" VALUES(41,'Brycen','M','Ice','Icirrus City','Freeze Badge');
INSERT INTO "Leaders" VALUES(42,'Drayden','M','Dragon','Opelucid City','Legend Badge');
INSERT INTO "Leaders" VALUES(43,'Iris','F','Dragon','Opelucid City','Legend Badge');
INSERT INTO "Leaders" VALUES(44,'Cheren','M','Normal','Aspertia City','Basic Badge');
INSERT INTO "Leaders" VALUES(45,'Roxie','F','Poison','Virbank City','Toxic Badge');
INSERT INTO "Leaders" VALUES(46,'Marlon','M','Water','Humilau City','Wave Badge');
INSERT INTO "Leaders" VALUES(47,'Viola','F','Bug','Santalune City','Bug Badge');
INSERT INTO "Leaders" VALUES(48,'Grant','M','Rock','Cyllage City','Cliff Badge');
INSERT INTO "Leaders" VALUES(49,'Korrina','F','Fighting','Shalour City','Rumble Badge');
INSERT INTO "Leaders" VALUES(50,'Ramos','M','Grass','Coumarine City','Plant Badge');
INSERT INTO "Leaders" VALUES(51,'Clemont','M','Electric','Lumiose City','Voltage Badge');
INSERT INTO "Leaders" VALUES(52,'Valerie','F','Fairy','Laverre City','Fairy Badge');
INSERT INTO "Leaders" VALUES(53,'Olympia','F','Psychic','Anistar City','Psychic Badge');
INSERT INTO "Leaders" VALUES(54,'Wulfric','M','Ice','Snowbelle City','Iceberg Badge');
CREATE TABLE Gyms (
  gameID INTEGER,
  leaderID INTEGER,
  size INTEGER,
  tm TEXT,
  money INTEGER,
  PRIMARY KEY (gameID, leaderID),
  FOREIGN KEY (gameID) REFERENCES Games (gameID),
  FOREIGN KEY (leaderID) REFERENCES Leaders (leaderID)
);
INSERT INTO "Gyms" VALUES(0,0,2,'Bide',1386);
INSERT INTO "Gyms" VALUES(1,0,2,'Bide',1386);
INSERT INTO "Gyms" VALUES(2,0,2,'Bide',1386);
INSERT INTO "Gyms" VALUES(3,0,2,'Bide',1188);
INSERT INTO "Gyms" VALUES(9,0,2,'Rock Tomb',1400);
INSERT INTO "Gyms" VALUES(10,0,2,'Rock Tomb',1400);
INSERT INTO "Gyms" VALUES(0,1,2,'BubbleBeam',2079);
INSERT INTO "Gyms" VALUES(1,1,2,'BubbleBeam',2079);
INSERT INTO "Gyms" VALUES(2,1,2,'BubbleBeam',2079);
INSERT INTO "Gyms" VALUES(3,1,2,'BubbleBeam',2079);
INSERT INTO "Gyms" VALUES(9,1,2,'Water Pulse',2100);
INSERT INTO "Gyms" VALUES(10,1,2,'Water Pulse',2100);
INSERT INTO "Gyms" VALUES(0,2,3,'Thunderbolt',2376);
INSERT INTO "Gyms" VALUES(1,2,3,'Thunderbolt',2376);
INSERT INTO "Gyms" VALUES(2,2,3,'Thunderbolt',2376);
INSERT INTO "Gyms" VALUES(3,2,1,'Thunderbolt',2772);
INSERT INTO "Gyms" VALUES(9,2,3,'Shock Wave',2400);
INSERT INTO "Gyms" VALUES(10,2,3,'Shock Wave',2400);
INSERT INTO "Gyms" VALUES(0,3,3,'Mega Drain',2871);
INSERT INTO "Gyms" VALUES(1,3,3,'Mega Drain',2871);
INSERT INTO "Gyms" VALUES(2,3,3,'Mega Drain',2871);
INSERT INTO "Gyms" VALUES(3,3,3,'Mega Drain',3168);
INSERT INTO "Gyms" VALUES(9,3,3,'Giga Drain',2900);
INSERT INTO "Gyms" VALUES(10,3,3,'Giga Drain',2900);
INSERT INTO "Gyms" VALUES(0,4,4,'Toxic',4257);
INSERT INTO "Gyms" VALUES(1,4,4,'Toxic',4257);
INSERT INTO "Gyms" VALUES(2,4,4,'Toxic',4257);
INSERT INTO "Gyms" VALUES(3,4,4,'Toxic',4950);
INSERT INTO "Gyms" VALUES(9,4,4,'Toxic',4300);
INSERT INTO "Gyms" VALUES(10,4,4,'Toxic',4300);
INSERT INTO "Gyms" VALUES(0,5,4,'Psywave',4257);
INSERT INTO "Gyms" VALUES(1,5,4,'Psywave',4257);
INSERT INTO "Gyms" VALUES(2,5,4,'Psywave',4257);
INSERT INTO "Gyms" VALUES(3,5,3,'Psywave',4950);
INSERT INTO "Gyms" VALUES(9,5,4,'Calm Mind',4300);
INSERT INTO "Gyms" VALUES(10,5,4,'Calm Mind',4300);
INSERT INTO "Gyms" VALUES(0,6,4,'Fire Blast',4653);
INSERT INTO "Gyms" VALUES(1,6,4,'Fire Blast',4653);
INSERT INTO "Gyms" VALUES(2,6,4,'Fire Blast',4653);
INSERT INTO "Gyms" VALUES(3,6,3,'Fire Blast',5346);
INSERT INTO "Gyms" VALUES(9,6,4,'Fire Blast',4700);
INSERT INTO "Gyms" VALUES(10,6,4,'Fire Blast',4700);
INSERT INTO "Gyms" VALUES(0,7,5,'Fissure',4950);
INSERT INTO "Gyms" VALUES(1,7,5,'Fissure',4950);
INSERT INTO "Gyms" VALUES(2,7,5,'Fissure',4950);
INSERT INTO "Gyms" VALUES(3,7,5,'Fissure',5445);
INSERT INTO "Gyms" VALUES(9,7,5,'Earthquake',5000);
INSERT INTO "Gyms" VALUES(10,7,5,'Earthquake',5000);
INSERT INTO "Gyms" VALUES(4,8,2,'Mud-Slap',900);
INSERT INTO "Gyms" VALUES(5,8,2,'Mud-Slap',900);
INSERT INTO "Gyms" VALUES(6,8,2,'Mud-Slap',900);
INSERT INTO "Gyms" VALUES(15,8,2,'Roost',1560);
INSERT INTO "Gyms" VALUES(16,8,2,'Roost',1560);
INSERT INTO "Gyms" VALUES(4,9,3,'Fury Cutter',1600);
INSERT INTO "Gyms" VALUES(5,9,3,'Fury Cutter',1600);
INSERT INTO "Gyms" VALUES(6,9,3,'Fury Cutter',1600);
INSERT INTO "Gyms" VALUES(15,9,3,'U-Turn',1800);
INSERT INTO "Gyms" VALUES(16,9,3,'U-Turn',1800);
INSERT INTO "Gyms" VALUES(4,10,2,'Attract',2000);
INSERT INTO "Gyms" VALUES(5,10,2,'Attract',2000);
INSERT INTO "Gyms" VALUES(6,10,2,'Attract',2000);
INSERT INTO "Gyms" VALUES(15,10,2,'Attract',2280);
INSERT INTO "Gyms" VALUES(16,10,2,'Attract',2280);
INSERT INTO "Gyms" VALUES(4,11,4,'Shadow Ball',2300);
INSERT INTO "Gyms" VALUES(5,11,4,'Shadow Ball',2300);
INSERT INTO "Gyms" VALUES(6,11,4,'Shadow Ball',2300);
INSERT INTO "Gyms" VALUES(15,11,4,'Shadow Ball',2760);
INSERT INTO "Gyms" VALUES(16,11,4,'Shadow Ball',2760);
INSERT INTO "Gyms" VALUES(4,12,2,'DynamicPunch',3000);
INSERT INTO "Gyms" VALUES(5,12,2,'DynamicPunch',3000);
INSERT INTO "Gyms" VALUES(6,12,2,'DynamicPunch',3000);
INSERT INTO "Gyms" VALUES(15,12,2,'Focus Punch',3720);
INSERT INTO "Gyms" VALUES(16,12,2,'Focus Punch',3720);
INSERT INTO "Gyms" VALUES(4,13,3,'Iron Tail',3500);
INSERT INTO "Gyms" VALUES(5,13,3,'Iron Tail',3500);
INSERT INTO "Gyms" VALUES(6,13,3,'Iron Tail',3500);
INSERT INTO "Gyms" VALUES(15,13,3,'Iron Tail',4200);
INSERT INTO "Gyms" VALUES(16,13,3,'Iron Tail',4200);
INSERT INTO "Gyms" VALUES(4,14,3,'Icy Wind',3100);
INSERT INTO "Gyms" VALUES(5,14,3,'Icy Wind',3100);
INSERT INTO "Gyms" VALUES(6,14,3,'Icy Wind',3100);
INSERT INTO "Gyms" VALUES(15,14,3,'Hail',4080);
INSERT INTO "Gyms" VALUES(16,14,3,'Hail',4080);
INSERT INTO "Gyms" VALUES(4,15,4,'DragonBreath',4000);
INSERT INTO "Gyms" VALUES(5,15,4,'DragonBreath',4000);
INSERT INTO "Gyms" VALUES(6,15,4,'DragonBreath',4000);
INSERT INTO "Gyms" VALUES(15,15,4,'Dragon Pulse',4920);
INSERT INTO "Gyms" VALUES(16,15,4,'Dragon Pulse',4920);
INSERT INTO "Gyms" VALUES(7,16,2,'Rock Tomb',1500);
INSERT INTO "Gyms" VALUES(8,16,2,'Rock Tomb',1500);
INSERT INTO "Gyms" VALUES(11,16,3,'Rock Tomb',1500);
INSERT INTO "Gyms" VALUES(23,16,2,'Rock Tomb',1680);
INSERT INTO "Gyms" VALUES(24,16,2,'Rock Tomb',1680);
INSERT INTO "Gyms" VALUES(7,17,2,'Bulk Up',1800);
INSERT INTO "Gyms" VALUES(8,17,2,'Bulk Up',1800);
INSERT INTO "Gyms" VALUES(11,17,3,'Bulk Up',1900);
INSERT INTO "Gyms" VALUES(23,17,2,'Bulk Up',1920);
INSERT INTO "Gyms" VALUES(24,17,2,'Bulk Up',1920);
INSERT INTO "Gyms" VALUES(7,18,3,'Shock Wave',2300);
INSERT INTO "Gyms" VALUES(8,18,3,'Shock Wave',2300);
INSERT INTO "Gyms" VALUES(11,18,4,'Shock Wave',2400);
INSERT INTO "Gyms" VALUES(23,18,3,'Volt Switch',2520);
INSERT INTO "Gyms" VALUES(24,18,3,'Volt Switch',2520);
INSERT INTO "Gyms" VALUES(7,19,3,'Overheat',2800);
INSERT INTO "Gyms" VALUES(8,19,3,'Overheat',2800);
INSERT INTO "Gyms" VALUES(11,19,4,'Overheat',2900);
INSERT INTO "Gyms" VALUES(23,19,3,'Overheat',3360);
INSERT INTO "Gyms" VALUES(24,19,3,'Overheat',3360);
INSERT INTO "Gyms" VALUES(7,20,3,'Facade',3100);
INSERT INTO "Gyms" VALUES(8,20,3,'Facade',3100);
INSERT INTO "Gyms" VALUES(11,20,4,'Facade',3100);
INSERT INTO "Gyms" VALUES(23,20,3,'Retaliate',3600);
INSERT INTO "Gyms" VALUES(24,20,3,'Retaliate',3600);
INSERT INTO "Gyms" VALUES(7,21,4,'Aerial Ace',3300);
INSERT INTO "Gyms" VALUES(8,21,4,'Aerial Ace',3300);
INSERT INTO "Gyms" VALUES(11,21,5,'Aerial Ace',3300);
INSERT INTO "Gyms" VALUES(23,21,4,'Roost',4200);
INSERT INTO "Gyms" VALUES(24,21,4,'Roost',4200);
INSERT INTO "Gyms" VALUES(7,22,2,'Calm Mind',8400);
INSERT INTO "Gyms" VALUES(8,22,2,'Calm Mind',8400);
INSERT INTO "Gyms" VALUES(11,22,4,'Calm Mind',8400);
INSERT INTO "Gyms" VALUES(23,22,2,'Calm Mind',10800);
INSERT INTO "Gyms" VALUES(24,22,2,'Calm Mind',10800);
INSERT INTO "Gyms" VALUES(7,23,5,'Water Pulse',4300);
INSERT INTO "Gyms" VALUES(8,23,5,'Water Pulse',4300);
INSERT INTO "Gyms" VALUES(23,23,5,'Waterfall',5520);
INSERT INTO "Gyms" VALUES(24,23,5,'Waterfall',5520);
INSERT INTO "Gyms" VALUES(11,24,5,'Water Pulse',4600);
INSERT INTO "Gyms" VALUES(12,25,3,'Stealth Rock',1680);
INSERT INTO "Gyms" VALUES(13,25,3,'Stealth Rock',1681);
INSERT INTO "Gyms" VALUES(14,25,3,'Stealth Rock',1682);
INSERT INTO "Gyms" VALUES(12,26,3,'Grass Knot',2640);
INSERT INTO "Gyms" VALUES(13,26,3,'Grass Knot',2641);
INSERT INTO "Gyms" VALUES(14,26,3,'Grass Knot',2642);
INSERT INTO "Gyms" VALUES(12,27,3,'Drain Punch',3600);
INSERT INTO "Gyms" VALUES(13,27,3,'Drain Punch',3601);
INSERT INTO "Gyms" VALUES(14,27,3,'Drain Punch',3840);
INSERT INTO "Gyms" VALUES(12,28,3,'Brine',3600);
INSERT INTO "Gyms" VALUES(13,28,3,'Brine',3600);
INSERT INTO "Gyms" VALUES(14,28,3,'Brine',4440);
INSERT INTO "Gyms" VALUES(12,29,3,'Shadow Claw',4320);
INSERT INTO "Gyms" VALUES(13,29,3,'Shadow Claw',4320);
INSERT INTO "Gyms" VALUES(14,29,3,'Shadow Claw',3120);
INSERT INTO "Gyms" VALUES(12,30,3,'Flash Cannon',4680);
INSERT INTO "Gyms" VALUES(13,30,3,'Flash Cannon',4680);
INSERT INTO "Gyms" VALUES(14,30,3,'Flash Cannon',4920);
INSERT INTO "Gyms" VALUES(12,31,4,'Avalanche',5040);
INSERT INTO "Gyms" VALUES(13,31,4,'Avalanche',5040);
INSERT INTO "Gyms" VALUES(14,31,4,'Avalanche',5280);
INSERT INTO "Gyms" VALUES(12,32,4,'Charge Beam',5880);
INSERT INTO "Gyms" VALUES(13,32,4,'Charge Beam',5880);
INSERT INTO "Gyms" VALUES(14,32,4,'Charge Beam',6000);
INSERT INTO "Gyms" VALUES(17,33,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(18,33,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(17,34,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(18,34,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(17,35,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(18,35,2,'Work Up',1680);
INSERT INTO "Gyms" VALUES(17,36,2,'Retaliate',2400);
INSERT INTO "Gyms" VALUES(18,36,2,'Retaliate',2400);
INSERT INTO "Gyms" VALUES(17,37,3,'Struggle Bug',2760);
INSERT INTO "Gyms" VALUES(18,37,3,'Struggle Bug',2760);
INSERT INTO "Gyms" VALUES(19,37,3,'Struggle Bug',2880);
INSERT INTO "Gyms" VALUES(20,37,3,'Struggle Bug',2880);
INSERT INTO "Gyms" VALUES(17,38,3,'Volt Switch',3240);
INSERT INTO "Gyms" VALUES(18,38,3,'Volt Switch',3240);
INSERT INTO "Gyms" VALUES(19,38,3,'Volt Switch',3600);
INSERT INTO "Gyms" VALUES(20,38,3,'Volt Switch',3600);
INSERT INTO "Gyms" VALUES(17,39,3,'Bulldoze',3720);
INSERT INTO "Gyms" VALUES(18,39,3,'Bulldoze',3720);
INSERT INTO "Gyms" VALUES(19,39,3,'Bulldoze',3960);
INSERT INTO "Gyms" VALUES(20,39,3,'Bulldoze',3960);
INSERT INTO "Gyms" VALUES(17,40,3,'Acrobatics',4200);
INSERT INTO "Gyms" VALUES(18,40,3,'Acrobatics',4200);
INSERT INTO "Gyms" VALUES(19,40,3,'Acrobatics',4680);
INSERT INTO "Gyms" VALUES(20,40,3,'Acrobatics',4680);
INSERT INTO "Gyms" VALUES(17,41,3,'Frost Breath',4680);
INSERT INTO "Gyms" VALUES(18,41,3,'Frost Breath',4680);
INSERT INTO "Gyms" VALUES(17,42,3,'Dragon Tail',5160);
INSERT INTO "Gyms" VALUES(19,42,3,'Dragon Tail',5760);
INSERT INTO "Gyms" VALUES(20,42,3,'Dragon Tail',5760);
INSERT INTO "Gyms" VALUES(18,43,3,'Dragon Tail',5160);
INSERT INTO "Gyms" VALUES(19,44,2,'Work Up',1560);
INSERT INTO "Gyms" VALUES(20,44,2,'Work Up',1560);
INSERT INTO "Gyms" VALUES(19,45,2,'Venoshock',2160);
INSERT INTO "Gyms" VALUES(20,45,2,'Venoshock',2160);
INSERT INTO "Gyms" VALUES(19,46,3,'Scald',6120);
INSERT INTO "Gyms" VALUES(20,46,3,'Scald',6120);
INSERT INTO "Gyms" VALUES(21,47,2,'Infestation',1920);
INSERT INTO "Gyms" VALUES(22,47,2,'Infestation',1920);
INSERT INTO "Gyms" VALUES(21,48,2,'Rock Tomb',4000);
INSERT INTO "Gyms" VALUES(22,48,2,'Rock Tomb',4000);
INSERT INTO "Gyms" VALUES(21,49,2,'Power-Up Punch',4000);
INSERT INTO "Gyms" VALUES(22,49,2,'Power-Up Punch',4000);
INSERT INTO "Gyms" VALUES(21,50,3,'Grass Knot',5440);
INSERT INTO "Gyms" VALUES(22,50,3,'Grass Knot',5440);
INSERT INTO "Gyms" VALUES(21,51,3,'Thunderbolt',5920);
INSERT INTO "Gyms" VALUES(22,51,3,'Thunderbolt',5920);
INSERT INTO "Gyms" VALUES(21,52,3,'Dazzling Gleam',6720);
INSERT INTO "Gyms" VALUES(22,52,3,'Dazzling Gleam',6720);
INSERT INTO "Gyms" VALUES(21,53,3,'Calm Mind',7680);
INSERT INTO "Gyms" VALUES(22,53,3,'Calm Mind',7680);
INSERT INTO "Gyms" VALUES(21,54,3,'Ice Beam',9440);
INSERT INTO "Gyms" VALUES(22,54,3,'Ice Beam',9440);
COMMIT;
