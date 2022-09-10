#Combinations
# 3 4 5
# 12 13 14
# 21 22 23

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:paper",Slot:10b,tag:{TNTPipeBluePrint:1b}},{id:"minecraft:blaze_powder",Slot:3b},{id:"minecraft:blaze_powder",Slot:4b},{id:"minecraft:blaze_powder",Slot:5b},{id:"minecraft:blaze_powder",Slot:12b},{id:"minecraft:tnt",Slot:13b},{id:"minecraft:blaze_powder",Slot:14b},{id:"minecraft:blaze_powder",Slot:21b},{id:"minecraft:blaze_powder",Slot:22b},{id:"minecraft:blaze_powder",Slot:23b}]} run scoreboard players set @s RecipeID 2



execute as @e[tag=Crafter,scores={CraftingState=1,RecipeID=2}] at @s run item replace block ~ ~ ~ container.16 with minecraft:firework_rocket{Block:1b,PipeTNT:1b,display:{Name:'{"text":"§cTNT Pipe","italic":"true"}'}} 9
execute as @e[tag=Crafter,scores={CraftingState=1}] unless score @s RecipeID matches 2 at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{PipeTNT:1b,Block:1b}}]} run item replace block ~ ~ ~ container.16 with air

execute as @e[tag=Crafter,scores={CraftingState=0}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{PipeTNT:1b,Block:1b}}]} run item replace block ~ ~ ~ container.16 with air

execute as @e[tag=Crafter,scores={CraftingState=2,RecipeID=2}] at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:firework_rocket",Count:9b,Block:1b,tag:{PipeTNT:1b,display:{Name:'{"text":"§cTNT Pipe","italic":"true"}'}}}}

execute as @a run clear @s firework_rocket{Block:1b}