#Scorebaord INIT
scoreboard objectives add UseFireWork minecraft.used:minecraft.firework_rocket
scoreboard objectives add UseBottle minecraft.used:minecraft.experience_bottle
scoreboard objectives add Team1CountOnline dummy
scoreboard objectives add Team2CountOnline dummy
scoreboard objectives add Team3CountOnline dummy
scoreboard objectives setdisplay list FlagCount
scoreboard objectives setdisplay sidebar Score
scoreboard objectives add CraftingState dummy
scoreboard objectives add hasDied deathCount
scoreboard objectives add FlagRemoved dummy
scoreboard objectives add CraftEffect dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add AttackDelay dummy
scoreboard objectives add BronzeInInv dummy 
scoreboard objectives add SilverInInv dummy 
scoreboard objectives add WarnTimeOut dummy 
scoreboard objectives add bottleType dummy
scoreboard objectives add rocketType dummy
scoreboard objectives add WatchDelay dummy
scoreboard objectives add PlayerTeam dummy
scoreboard objectives add PlayerTest dummy
scoreboard objectives add Team1Count dummy
scoreboard objectives add Team2Count dummy
scoreboard objectives add Team3Count dummy
scoreboard objectives add AlertDelay dummy 
scoreboard objectives add FlagsInInv dummy 
scoreboard objectives add FlagCount dummy
scoreboard objectives add ItemCount dummy
scoreboard objectives add ExpBottle dummy
scoreboard objectives add ExpBottle dummy
scoreboard objectives add GoldInInv dummy 
scoreboard objectives add HasLooker dummy 
scoreboard objectives add MercCount dummy
scoreboard objectives add RecipeID dummy
scoreboard objectives add FlagTest dummy
scoreboard objectives add PlayerId dummy
scoreboard objectives add TinInInv dummy 
scoreboard objectives add Upgraded dummy 
scoreboard objectives add ItemSlot dummy
scoreboard objectives add JailTime dummy 
scoreboard objectives add TNTTimer dummy
scoreboard objectives add Cauldron dummy
scoreboard objectives add Barrier dummy
scoreboard objectives add MercId dummy
scoreboard objectives add Health dummy
scoreboard objectives add Score dummy
scoreboard objectives add Armor dummy 
scoreboard objectives add Food dummy




#Reload
execute as @e[tag=Game,limit=1] at @s run tag @e[type=minecraft:villager,distance=..30] add kill


#Team INIT
team add NoName 
team modify NoName nametagVisibility never


