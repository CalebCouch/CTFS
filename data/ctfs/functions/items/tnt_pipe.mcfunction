execute as @a[nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{PipeTNT:1b}}}] at @s run scoreboard players set @s rocketType 0

execute as @a[nbt={SelectedItem:{id:"minecraft:firework_rocket",tag:{PipeTNT:1b}}}] at @s run scoreboard players set @s rocketType 1


execute as @a[scores={rocketType=1,UseFireWork=1..}] at @s run tag @s add UsedPipe

execute as @a[tag=UsedPipe] at @s as @e[type=minecraft:firework_rocket,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["TNTPipe"],Small:1b,Invulnerable:1b,Invisible:1b}

execute as @a[tag=UsedPipe] at @s run kill @e[type=minecraft:firework_rocket,limit=1,sort=nearest]
execute as @a[tag=UsedPipe] at @s run tag @s remove UsedPipe

execute as @a[scores={UseFireWork=1..}] at @s run scoreboard players set @s UseFireWork 0

execute as @e[tag=TNTPipe] at @s run scoreboard players add @s TNTTimer 1
execute as @e[tag=TNTPipe,tag=!init] at @s run playsound minecraft:entity.tnt.primed block @a ~ ~ ~ 1 
execute as @e[tag=TNTPipe,tag=!init] at @s run tag @s add init
execute as @e[tag=TNTPipe] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=TNTPipe,scores={TNTTimer=20..}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air destroy
execute as @e[tag=TNTPipe,scores={TNTTimer=20..}] at @s run playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1
execute as @e[tag=TNTPipe,scores={TNTTimer=20..}] at @s run kill @s