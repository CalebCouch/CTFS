##ASSEMBLY
execute as @a at @s store success score @s CustomBlock run clear @s vanilla_block 1
execute as @a[scores={CustomBlock=1..}] at @s run give @s shulker_spawn_egg{display:{Name:'{"text":"CustomBlock","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"CustomBlock\"",Tags:["SummonCustomBlock","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}} 1 
execute as @a[scores={CustomBlock=1..}] at @s run scoreboard players set @s CustomBlock 1

#Invaild CustomBlock
execute as @e[tag=SummonCustomBlock] at @s unless block ~ ~ ~ air run tag @s add InvalidCustomBlock
execute as @e[tag=SummonCustomBlock,tag=InvalidCustomBlock] run tag @s remove InvalidCustomBlock

#Close to Town
execute as @e[tag=SummonCustomBlock] at @s if entity @e[tag=Game,limit=1,distance=..100] run tag @s add CloseTownCustomBlock
execute as @e[tag=SummonCustomBlock,tag=CloseTownCustomBlock] run tag @s remove SummonCustomBlock

#Set CustomBlock
execute as @e[tag=SummonCustomBlock] at @s run setblock ~ ~ ~ vanilla_block
execute as @e[tag=SummonCustomBlock] at @s run tag @s add CustomBlock
execute as @e[tag=SummonCustomBlock,tag=CustomBlock] at @s run tag @s remove SummonCustomBlock

#Close Town CustomBlock 
execute as @e[tag=CloseTownCustomBlock] at @s run tellraw @p ["Cannot Place CustomBlock Near Town"]
execute as @e[tag=CloseTownCustomBlock] at @s run tag @s add CloseTownCustomBlock
execute as @e[tag=CloseTownCustomBlock] at @s run tag @s add kill

#Break CustomBlock
execute as @e[tag=CustomBlock] at @s unless block ~ ~ ~ vanilla_block run tag @s add BrokenCustomBlock
##ASSEMBLY

##INTERACTION

##INTERACTION


##DESTRUCTION
#Invalid Cauldron 
execute as @e[tag=InvalidCustomBlock] at @s run say Invalid Placement
execute as @e[tag=InvalidCustomBlock] at @s run tag @s add SummonCustomBlockItem
execute as @e[tag=InvalidCustomBlock] at @s run tag @s add kill

#Broken Cauldron
execute as @e[tag=BrokenCustomBlock] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:vanilla_block"}},sort=nearest,limit=1,distance=..1] add kill
execute as @e[tag=BrokenCustomBlock] at @s run tag @s add SummonCustomBlockItem
execute as @e[tag=BrokenCustomBlock] at @s run tag @s add kill

execute as @e[tag=SummonCustomBlockItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"CustomBlock","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"CustomBlock\"",Tags:["SummonCustomBlock","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}}}
##DESTRUCTION