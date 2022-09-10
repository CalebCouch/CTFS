#Combinations
# 3 4 5
# 12 13 14
# 21 22 23
#10 blue print
execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:acacia_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:birch_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:dark_oak_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:jungle_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:oak_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{SaddleBluePrint:1b}},{id:"minecraft:diamond",Slot:4b},{id:"minecraft:leather",Slot:12b},{id:"minecraft:leather",Slot:13b},{id:"minecraft:leather",Slot:14b},{id:"minecraft:leather",Slot:21b},{id:"minecraft:spruce_planks",Slot:22b},{id:"minecraft:leather",Slot:23b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b},{Slot:5b}]} run scoreboard players set @s RecipeID 1



execute as @e[tag=Crafter,scores={CraftingState=1,RecipeID=1}] at @s run item replace block ~ ~ ~ container.16 with minecraft:saddle{Count:1b,Block:1b}
execute as @e[tag=Crafter,scores={CraftingState=1}] unless score @s RecipeID matches 1 at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:saddle",Slot:16b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.16 with air

execute as @e[tag=Crafter,scores={CraftingState=0}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:saddle",Slot:16b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.16 with air

execute as @e[tag=Crafter,scores={CraftingState=2,RecipeID=1}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:saddle",Count:1b}}

execute as @a run clear @s saddle{Block:1b}

