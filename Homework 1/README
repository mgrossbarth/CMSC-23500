README for CMSC 23500 Homework 1
Melissa Grossbarth (CNET: mgrossbarth; Studet ID: 426396)

For starters, if you know nothing about Pokemon, here's a little debrief:
In Pokemon games, you are a Pokemon trainer who wants to be the Champion (the best trainer in the land, if you will). However, you need 8 special badges in order to challenge the current Champion, and to get those you need to challenge Pokemon Gyms scattered across the region.
This database provides information about the main handheld Pokemon games, as well as the regions and gyms contained therein.

Breaking it down by table, we have:

GENERATIONS:
Generations are what mark major changes in the Pokemon franchise. As new Generations come, more pokemon, moves, and types are added, as well as new titles.
The Generations table includes the number of pokemon added in that generation, as well as the total number of pokemon available.
Generations are indexed starting at 1, not 0 - this is because Generations already come pre-numbered, starting with 1.

REGIONS:
Each Pokemon game takes place in a distinct region, with different characteristics. Each Generation adds a new region.
The Regions table includes the region's name, its gym league name, as well as the 3 pokemon you can choose from to start with (grass_starter, fire_starter, water_starter).
Similarly to Generations, Regions are indexed starting at 1; this is because each Generation adds exactly one new region, so a region's index is the number of the generation it was added in.

GAMES:
Games are the main handheld Pokemon titles.
Games link together Generations and Regions - as some titles are remakes of previous games, generations and regions are not the same semantic object.
For example, the title "Pokemon Ruby" was released in Generation 3, and took place in Hoenn (Gen 3's new region). However, its rerelease, Pokemon Omega Ruby, was released in Generation 6 despite still taking place in Hoenn. Same region, different generation.
Inversely, remakes can be in the same generation as games from another region - Pokemon Pearl and Pokemon SoulSilver are both from Gen 4, but take place in Sinnoh and Johto respectively.
(For this reason, Generations and Regions remain separate semantic objects.)
The Games table includes the ID's for the generation and region that the game takes place in, as well as its title, system, release year, and Pokemon featured on the cover of the game (cover).

LEADERS:
(Gym) Leaders are the people you battle with to obtain badges so you can eventually challenge the Champion.
Leaders are somewhat unique to a region's league, but not a game - leaders appear in multiple games, and games feature multiple leaders.
The Leaders table includes their name, gender, the Pokemon type they specialize in, the city they reside in, and the badge they reward.

GYMS:
Finally, Gyms are where you battle the leaders. The characteristics of the battle, as well as its rewards, vary by both Game and Leader. Hence, join table.
The Gyms table includes the game and leader in question, as well as the number of pokemon on the leader's team (size), the move (tm) and money (money) rewarded at the end of the battle.

---

Initially I had Generations and Regions in the same table, but soon realized that I couldn't accurately represent data from the remakes unless I split the tables up.
Remakes do vary quite a lot from their precedessors, and I wanted to make that clear without compromising region-specific information.
I additionally considered creating a separate "Badge" object, as some leaders do reward the same badge. I decided against this, mainly for simplicity, but also because there are very few badge redundancies over the course of the database.
In reality, a lot of titles were released in pairs or triplets, and are nearly identical (see: Red/Blue/Green, X/Y, etc). However, there are large enough differences between them that I kept them separate (especially since they are, in fact, distinct titles from the franchise).
I kept this database down to the required 8 gym battles per title. Techncially the games that take place in Johto have 16 leaders (8 from Johto, 8 from Kanto), but the 8 Kanto battles are not required to challenge the Champion.
Finally, there is one gym leader that is actually two - Tate (#22) is really Tate & Liza, who are twins that battle together. Their information, however, is completely redundant barring name and gender, so I reduced their entries down to just one entry.

Sources:
http://en.wikipedia.org/wiki/List_of_Pok%C3%A9mon_video_games [Games]
http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number [Generations]
http://bulbapedia.bulbagarden.net/wiki/Gym_Leader [Regions, Leaders, Gyms via the subpages]
My own frighteningly comprehensive knowledge of Pokemon games [Regions]