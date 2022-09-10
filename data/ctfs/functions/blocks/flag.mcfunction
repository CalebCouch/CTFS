#Invalid Flag Placement
execute as @e[tag=SummonFlag] at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air run tag @s add InvalidFlag
execute as @e[tag=SummonFlag] at @s unless entity @p[nbt={Dimension:"minecraft:overworld"}] run tag @s add InvalidFlag
execute as @e[tag=SummonFlag,tag=InvalidFlag] run tag @s remove SummonFlag

#Get PlayerId
execute as @e[tag=SummonFlag] at @s run execute store result score @s PlayerId run scoreboard players get @p PlayerId

#Prevent Close Flags Grief
execute as @e[tag=SummonFlag] at @s as @e[tag=Flag,distance=1..40] unless score @s PlayerId = @e[tag=SummonFlag,distance=..40,limit=1] PlayerId run tag @e[tag=SummonFlag,distance=..40,limit=1] add CloseFlag
execute as @e[tag=SummonFlag,tag=CloseFlag] run tag @s remove SummonFlag

execute as @e[tag=SummonFlag] at @s if entity @e[tag=Game,limit=1,distance=..100] run tag @s add CloseTownFlag
execute as @e[tag=SummonFlag,tag=CloseTownFlag] run tag @s remove SummonFlag


##Create Flag
execute as @e[tag=SummonFlag] at @s run setblock ~ ~ ~ black_banner{BlockEntityTag:{Patterns:[{Pattern:"sku",Color:4}]}}
#Add Flag Count
execute as @e[tag=SummonFlag] at @s as @p run scoreboard players add @s FlagCount 1
execute as @e[tag=SummonFlag] at @s positioned ~ ~1.5 ~ unless entity @e[tag=AName,distance=..0.5] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["AName"],NoGravity:1b,CustomNameVisible:1b}
execute as @e[tag=SummonFlag] at @s run setblock ~ ~1 ~ oak_sign{Text1:'{"selector":"@p"}'}
execute as @e[tag=SummonFlag] at @s positioned ~ ~1.5 ~ run data modify entity @e[tag=AName,distance=..0.5,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @e[tag=SummonFlag] at @s run setblock ~ ~1 ~ air replace
execute as @e[tag=SummonFlag] at @s run tag @s add Flag
execute as @e[tag=AName] at @s positioned ~ ~-1.5 ~ unless entity @e[tag=Flag,distance=..0.5] run tag @s add kill
execute as @e[tag=SummonFlag,tag=Flag] at @s run tag @s remove SummonFlag

#Break Flag
execute as @e[tag=Flag,tag=!OwnerOffline] at @s unless block ~ ~ ~ black_banner unless score @s PlayerTeam = @p PlayerTeam run tag @s add BrokeFlag
execute as @e[tag=Flag,tag=!OwnerOffline] at @s unless block ~ ~ ~ black_banner if score @s PlayerId = @p PlayerId run tag @s add BrokeFlag
execute as @e[tag=Flag,tag=BrokeFlag] at @s run tag @s remove Flag

#Team Freif Prevention
execute as @e[tag=Flag,tag=!OwnerOffline] at @s unless block ~ ~ ~ black_banner run tellraw @a[distance=..5] {"text":"Cannot Destroy A Flag Belonging To A Team Member","color":"white"}
execute as @e[tag=Flag,tag=!OwnerOffline] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1,distance=..1] add kill
execute as @e[tag=Flag,tag=!OwnerOffline] at @s unless block ~ ~ ~ black_banner run setblock ~ ~ ~ black_banner

##Offline Player Greif Prevention
execute as @e[tag=Flag,tag=OwnerOffline] at @s unless block ~ ~ ~ black_banner run tellraw @a[distance=..5] {"text":"Cannot Destroy A Flag Belonging To An Offline Player","color":"white"}
execute as @e[tag=Flag,tag=OwnerOffline] at @s unless block ~ ~ ~ black_banner run setblock ~ ~ ~ black_banner
execute as @e[tag=Flag,tag=OwnerOffline] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1,distance=..1] add kill
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=10,dz=10,dy=-300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=-10,dz=-10,dy=-300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=10,dz=-10,dy=-300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=-10,dz=10,dy=-300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=10,dz=10,dy=300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=-10,dz=-10,dy=300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=10,dz=-10,dy=300] run tag @s add NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[dx=-10,dz=10,dy=300] run tag @s add NearFlag
execute as @a[tag=NearFlag,scores={PlayerTeam=..3}] at @s if score @e[tag=Flag,tag=OwnerOffline,distance=..30,limit=1] PlayerTeam = @s PlayerTeam run tag @s remove NearFlag
##Effects for NearFlag Players
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run effect give @s minecraft:slowness 1 5 true
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run effect give @s minecraft:mining_fatigue 1 100 true
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run effect give @s minecraft:blindness 2 1 true
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run effect give @s minecraft:jump_boost 3 200 true
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run title @s times 0 4 0
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run title @s title "Walk Backwards"
execute as @e[tag=Flag,tag=OwnerOffline] at @s as @a[tag=NearFlag,distance=..30] run title @s subtitle "Do Not Approch An Offline Players Flag"


execute as @a[tag=NearFlag] run tag @s remove NearFlag
execute as @e[tag=Flag,tag=OwnerOffline] at @s run fill ~10 -64 ~10 ~-10 -32 ~-10 air replace fire
execute as @e[tag=Flag,tag=OwnerOffline] at @s run tag @e[type=tnt,distance=..25] add kill

##Flag Stuff
#Set Flag Team
execute as @e[tag=Flag] at @s if score @a[tag=SingleRandomPlayer,limit=1] PlayerId = @s PlayerId store result score @s PlayerTeam run scoreboard players get @a[tag=SingleRandomPlayer,limit=1] PlayerTeam
#Partical
execute as @e[tag=Flag,tag=!OwnerOffline] at @s run particle minecraft:flame ~ ~ ~ 0 256 0 0 150 force
#Add Score from Flag Count
execute as @a run scoreboard players operation @s Score += @s FlagCount

##Broke Flag
execute as @a[sort=random,limit=1] at @s if score @e[tag=BrokeFlag,limit=1,sort=nearest] PlayerId = @s PlayerId run execute store success score @e[tag=BrokeFlag,limit=1,sort=nearest] FlagRemoved run scoreboard players remove @s FlagCount 1
execute as @e[tag=BrokeFlag,scores={FlagRemoved=1}] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},sort=nearest,limit=1,distance=..2] add kill
execute as @e[tag=BrokeFlag,scores={FlagRemoved=1}] at @s run tag @s add SummonFlagItem



#Player Annouce
execute as @e[tag=BrokeFlag,scores={FlagRemoved=1}] at @s as @a[distance=..5] unless score @s PlayerId = @e[tag=BrokeFlag,scores={FlagRemoved=1},limit=1] PlayerId run tag @s add FlagBreaker
execute as @e[tag=FlagBreaker] at @s run tellraw @a {"text":"I broke a flag - ","color":"white","extra":[{"selector":"@p"}]}
execute as @e[tag=FlagBreaker] at @s run effect give @s glowing 600
execute as @e[tag=FlagBreaker] at @s as @a at @s run playsound minecraft:entity.ender_dragon.death block @a ~ ~ ~ 
execute as @e[tag=FlagBreaker] at @s run tag @s remove FlagBreaker 
#Remove Flag
execute as @e[tag=BrokeFlag,scores={FlagRemoved=1}] at @s run tag @s add kill

#Invalid Flag
execute as @e[tag=InvalidFlag] at @s run tellraw @p ["Invalid Placement"]
execute as @e[tag=InvalidFlag] at @s run tag @s add SummonFlagItem
execute as @e[tag=InvalidFlag] at @s run tag @s add kill

#Close Flag
execute as @e[tag=CloseFlag] at @s run tellraw @p ["Cannot Place Flag Near Another Players Flag"]
execute as @e[tag=CloseFlag] at @s run tag @s add SummonFlagItem
execute as @e[tag=CloseFlag] at @s run tag @s add kill

#Close Town Flag
execute as @e[tag=CloseTownFlag] at @s run tellraw @p ["Cannot Place Flag Near Town"]
execute as @e[tag=CloseTownFlag] at @s run tag @s add SummonFlagItem
execute as @e[tag=CloseTownFlag] at @s run tag @s add kill

#Check for Offline Player
execute as @e[tag=Flag] at @s run scoreboard players add @s PlayerTest 1
execute as @e[tag=Flag] at @s if score @a[distance=1..,limit=1,sort=random] PlayerId = @s PlayerId run scoreboard players set @s PlayerTest 0
execute as @e[tag=Flag,scores={PlayerTest=101..}] at @s run tag @s add OwnerOffline
execute as @e[tag=Flag,scores={PlayerTest=..100}] at @s run tag @s remove OwnerOffline 

#Summon Flag Item
execute as @e[tag=SummonFlagItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{Flag:1b,display:{Name:'{"text":"Flag","color":"cyan","italic":"true"}'},EntityTag:{Tags:["SummonFlag","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}}}
execute as @e[tag=SummonFlagItem] at @s run tag @s remove SummonFlagItem



