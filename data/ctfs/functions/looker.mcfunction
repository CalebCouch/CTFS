##Init looker
#Fix old lookers
execute as @e[tag=Looker,tag=atBlock] at @s run tag @s remove atBlock
execute as @e[tag=Looker] at @s unless score @s PlayerId = @p PlayerId run tag @s add kill
execute as @e[tag=Looker] at @s if score @s PlayerId = @p PlayerId run tp @s @p

#Init new looker
execute as @a at @s run scoreboard players set @s HasLooker 0 
execute as @a at @s if score @s PlayerId = @e[tag=Looker,limit=1] PlayerId run scoreboard players set @s HasLooker 1 
execute as @a[scores={HasLooker=0}] at @s run summon armor_stand ~ ~ ~ {Tags:["Looker"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[tag=Looker,tag=!init] at @s unless score @s PlayerId matches 1.. run execute store result score @s PlayerId run scoreboard players get @p PlayerId
execute as @e[tag=Looker,tag=!init] run tag @s add init

#Tp lookers to eyes
execute as @a at @s run tp @e[tag=Looker,limit=1,distance=..1] ~ ~1.68 ~ 

execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock
execute as @e[tag=Looker,tag=!atBlock] at @s rotated as @p run tp ^ ^ ^0.1
execute as @e[tag=Looker,tag=!atBlock] at @s unless block ~ ~-0.1 ~ air run tag @s add atBlock

#execute as @e[tag=LookerCenter] at @s run particle bubble ~ ~ ~ 0 0 0 0 1 force
#execute as @e[tag=Looker,tag=atBlock] at @s run particle bubble ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=Looker,tag=atBlock] at @s run tag @e[tag=LookerCenter] add kill
execute as @e[tag=Looker,tag=atBlock] at @s run summon armor_stand ~ ~ ~ {Tags:["LookerCenter","Center"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b}





#Conditions to restart
execute as @e[tag=Looker,tag=init] at @s unless score @s PlayerId = @p PlayerId run tag @s add kill
execute as @e[tag=Looker,tag=init] at @s unless entity @p[distance=..5] run tag @s add kill
