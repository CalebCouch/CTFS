#Place Town Hall
execute as @e[tag=Game,limit=1] at @s positioned ~-6.5 ~ ~6.5 unless entity @e[tag=TownHall,distance=..1] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["TownHall"],NoGravity:1b}

#Allow Only One member in town hall
execute as @e[tag=InTownHall] at @s run tag @s remove InTownHall
execute as @e[tag=TownHall,limit=1] at @s positioned ~-3 ~ ~-3 as @a[limit=1,sort=nearest,dy=6,dz=6,dx=6] run tag @s add InTownHall
execute as @e[tag=TownHall,limit=1] at @s positioned ~-3 ~ ~-3 as @a[tag=!InTownHall,dy=6,dz=6,dx=6] run tag @s add KickTownHall
execute as @e[tag=TownHall,limit=1] at @s positioned ~4 ~ ~-4 as @a[tag=KickTownHall] run tp @s ~ ~ ~
execute as @e[tag=TownHall,limit=1] at @s positioned ~4 ~ ~-4 as @a[tag=KickTownHall] run tellraw @s ["Only One Person In The Town Hall At A Time"]
execute as @e[tag=KickTownHall] run tag @s remove KickTownHall

#Detect Team Change
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 1 if score @s Team1Count = @s Team1CountOnline run tag @p add ChangeTeam
execute as @e[tag=Game,limit=1] at @s positioned ~-5 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 2 if score @s Team2Count = @s Team2CountOnline run tag @p add ChangeTeam
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 3 if score @s Team3Count = @s Team3CountOnline run tag @p add ChangeTeam
execute as @e[tag=Game,limit=1] at @s positioned ~-8 ~1 ~4 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 4 run tag @p add ChangeTeam

#Annouce Issues
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 1 unless score @s Team1Count = @s Team1CountOnline run say You cannot join a team with Offline Players
execute as @e[tag=Game,limit=1] at @s positioned ~-5 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 2 unless score @s Team2Count = @s Team2CountOnline run say You cannot join a team with Offline Players
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] unless score @p PlayerTeam matches 3 unless score @s Team3Count = @s Team3CountOnline run say You cannot join a team with Offline Players

#Annouce Changes
execute as @e[tag=Game,limit=1] at @s positioned ~-8 ~1 ~4 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run tellraw @a ["",{"selector":"@p","color":"gray"},{"text":" Has Joined Unassigned","color":"gray"}]
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run tellraw @a ["",{"selector":"@p","color":"red"},{"text":" Has Joined Team Red","color":"red"}]
execute as @e[tag=Game,limit=1] at @s positioned ~-5 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run tellraw @a ["",{"selector":"@p","color":"blue"},{"text":" Has Joined Team Blue","color":"blue"}]
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run tellraw @a ["",{"selector":"@p","color":"green"},{"text":" Has Joined Team Green","color":"green"}]

#Remove old Team count
execute as @e[tag=Game,limit=1] at @s if entity @p[tag=ChangeTeam] if score @p[tag=ChangeTeam] PlayerTeam matches 3 run scoreboard players remove @s Team3Count 1
execute as @e[tag=Game,limit=1] at @s if entity @p[tag=ChangeTeam] if score @p[tag=ChangeTeam] PlayerTeam matches 2 run scoreboard players remove @s Team2Count 1
execute as @e[tag=Game,limit=1] at @s if entity @p[tag=ChangeTeam] if score @p[tag=ChangeTeam] PlayerTeam matches 1 run scoreboard players remove @s Team1Count 1

#Change Player Team
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players set @p PlayerTeam 1
execute as @e[tag=Game,limit=1] at @s positioned ~-5 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players set @p PlayerTeam 2
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players set @p PlayerTeam 3
execute as @e[tag=Game,limit=1] at @s positioned ~-8 ~1 ~4 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players set @p PlayerTeam 4
#Add Team Count
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players add @s Team1Count 1
execute as @e[tag=Game,limit=1] at @s positioned ~-5 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players add @s Team2Count 1
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] if entity @p[tag=ChangeTeam] run scoreboard players add @s Team3Count 1

#Replace Button
execute as @e[tag=Game,limit=1] at @s positioned ~-7 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=Game,limit=1] at @s positioned ~0 ~ ~-1 if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=Game,limit=1] at @s positioned ~-9 ~1 ~8 if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false]
execute as @e[tag=Game,limit=1] at @s positioned ~-8 ~1 ~4 if block ~ ~ ~ oak_button[powered=true] run setblock ~ ~ ~ oak_button[powered=false,facing=east]
