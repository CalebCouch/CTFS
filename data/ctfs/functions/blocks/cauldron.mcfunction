##ASSEMBLY
execute as @a at @s store success score @s Cauldron run clear @s cauldron 1
execute as @a[scores={Cauldron=1..}] at @s run give @s shulker_spawn_egg{display:{Name:'{"text":"Cauldron","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Cauldron\"",Tags:["SummonCauldron","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}} 1 
execute as @a[scores={Cauldron=1..}] at @s run scoreboard players set @s Cauldron 1

#Invaild Cauldron
execute as @e[tag=SummonCauldron] at @s unless block ~ ~ ~ air run tag @s add InvalidCauldron
execute as @e[tag=SummonCauldron,tag=InvalidCauldron] run tag @s remove InvalidCauldron

#Close to Town
execute as @e[tag=SummonCauldron] at @s if entity @e[tag=Game,limit=1,distance=..100] run tag @s add CloseTownCauldron
execute as @e[tag=SummonCauldron,tag=CloseTownCauldron] run tag @s remove SummonCauldron

#Set Cauldron
execute as @e[tag=SummonCauldron] at @s run setblock ~ ~ ~ cauldron
execute as @e[tag=SummonCauldron] at @s run tag @s add Cauldron
execute as @e[tag=SummonCauldron,tag=Cauldron] at @s run tag @s remove SummonCauldron

#Close Town Cauldron 
execute as @e[tag=CloseTownCauldron] at @s run tellraw @p ["Cannot Place Cauldron Near Town"]
execute as @e[tag=CloseTownCauldron] at @s run tag @s add CloseTownCauldron
execute as @e[tag=CloseTownCauldron] at @s run tag @s add kill

#Break Cauldron
execute as @e[tag=Cauldron] at @s unless block ~ ~ ~ cauldron run tag @s add BrokenCauldron
execute as @e[tag=Cauldron] at @s if block ~ ~ ~ water_cauldron run tag @s remove BrokenCauldron

##ASSEMBLY

##INTERACTION

#Recipes
function ctfs:brews/iron_exp_bottle
function ctfs:brews/gold_exp_bottle
function ctfs:brews/diamond_exp_bottle
function ctfs:brews/emerald_exp_bottle




#Crafting
execute as @e[tag=Cauldron,tag=CauldronSummonItem] at @s run tag @s remove CauldronSummonItem
execute as @e[tag=Cauldron,tag=Crafting,tag=!init] at @s run scoreboard players set @s CraftEffect 0
execute as @e[tag=Cauldron,tag=Crafting,tag=!init] at @s run tag @s add init
execute as @e[tag=Cauldron,tag=Crafting] at @s run particle minecraft:bubble ~ ~0.95 ~ 0.2 0 0.2 0 50 force
execute as @e[tag=Cauldron,tag=Crafting] at @s run playsound minecraft:entity.strider.step_lava block @a ~ ~ ~ 1
execute as @e[tag=Cauldron,tag=Crafting] at @s run scoreboard players add @s CraftEffect 1
execute as @e[tag=Cauldron,tag=Crafting,scores={CraftEffect=100..}] at @s run tag @s add CauldronSummonItem
execute as @e[tag=Cauldron,tag=Crafting,scores={CraftEffect=100..}] at @s run tag @s remove Crafting
execute as @e[tag=Cauldron,tag=CauldronSummonItem,scores={CraftEffect=100..}] at @s run scoreboard players set @s CraftEffect 0








##INTERACTION


##DESTRUCTION
#Invalid Cauldron 
execute as @e[tag=InvalidCauldron] at @s run say Invalid Placement
execute as @e[tag=InvalidCauldron] at @s run tag @s add SummonCauldronItem
execute as @e[tag=InvalidCauldron] at @s run tag @s add kill

#Broken Cauldron
execute as @e[tag=BrokenCauldron] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:cauldron"}},sort=nearest,limit=1,distance=..1] add kill
execute as @e[tag=BrokenCauldron] at @s run tag @s add SummonCauldronItem
execute as @e[tag=BrokenCauldron] at @s run tag @s add kill

execute as @e[tag=SummonCauldronItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Cauldron","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Cauldron\"",Tags:["SummonCauldron","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}}}
##DESTRUCTION

