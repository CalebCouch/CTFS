#Init
execute as @e[tag=Game] unless entity @s[scores={PlayerCount=0..}] run scoreboard players set @s PlayerCount 0
execute as @e[tag=Game] unless entity @s[scores={MercCount=0..}] run scoreboard players set @s MercCount 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team1CountOnline=0..}] run scoreboard players set @s Team1CountOnline 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team2CountOnline=0..}] run scoreboard players set @s Team2CountOnline 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team3CountOnline=0..}] run scoreboard players set @s Team3CountOnline 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team1Count=0..}] run scoreboard players set @s Team1Count 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team2Count=0..}] run scoreboard players set @s Team2Count 0
execute as @e[tag=Game,limit=1] unless entity @s[scores={Team3Count=0..}] run scoreboard players set @s Team3Count 0

#gamerules
execute as @e[tag=Game,limit=1] at @s run setworldspawn ~ ~ ~
gamerule spawnRadius 0

#Prevent more games
execute as @e[tag=Game,limit=1,sort=random] at @s if score @s PlayerCount < @e[tag=Game,limit=1,sort=random,distance=2..] PlayerCount run tag @s add kill
execute if entity @e[tag=Game] run clear @a bat_spawn_egg{display:{Name:'{"text":"Center Of Town","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Game\"",Tags:["Game","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}

#Build
execute as @e[tag=Game,limit=1] at @s unless block ~ ~-2 ~ minecraft:structure_block run setblock ~ ~-2 ~ minecraft:structure_block{name:"town",mode:"LOAD",posX:-20,posY:-1,posZ:-20}
execute as @e[tag=Game,limit=1,tag=!built] at @s unless block ~ ~-3 ~ redstone_block run setblock ~ ~-3 ~ redstone_block
execute as @e[tag=Game,limit=1,tag=!built] at @s run tag @s add built
execute as @e[tag=Game,limit=1,tag=built] at @s unless block ~ ~-3 ~ bedrock run setblock ~ ~-3 ~ bedrock

#Set counter
execute as @e[tag=Game,limit=1] at @s run scoreboard players set @s Team1CountOnline 0
execute as @e[tag=Game,limit=1] at @s run scoreboard players set @s Team2CountOnline 0
execute as @e[tag=Game,limit=1] at @s run scoreboard players set @s Team3CountOnline 0

#Count Online Team Players
execute as @a[scores={PlayerTeam=1}] at @s run scoreboard players add @e[tag=Game,limit=1] Team1CountOnline 1
execute as @a[scores={PlayerTeam=2}] at @s run scoreboard players add @e[tag=Game,limit=1] Team2CountOnline 1
execute as @a[scores={PlayerTeam=3}] at @s run scoreboard players add @e[tag=Game,limit=1] Team3CountOnline 1

#Reset tag 
execute as @e[tag=ChangeTeam] run tag @s remove ChangeTeam


#TOWN
function ctfs:town/bank
function ctfs:town/blacksmith
function ctfs:town/wall
function ctfs:town/bazzar
function ctfs:town/wizard
function ctfs:town/tavern
function ctfs:town/workshop





