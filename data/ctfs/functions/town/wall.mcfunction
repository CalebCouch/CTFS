execute as @e[tag=Game,limit=1] at @s positioned ~1.5 ~-0.1 ~18.5 unless entity @e[tag=Guard1] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard1", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~1.5 ~-0.1 ~18.5 run tp @e[tag=Guard1] ~ ~ ~ 40 0
execute as @e[tag=Game,limit=1] at @s positioned ~-1.5 ~-0.1 ~18.5 unless entity @e[tag=Guard2] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard2", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~-1.5 ~-0.1 ~18.5 run tp @e[tag=Guard2] ~ ~ ~ -45 0

execute as @e[tag=Game,limit=1] at @s positioned ~1.5 ~-0.1 ~-19.5 unless entity @e[tag=Guard3] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard3", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~1.5 ~-0.1 ~-19.5 run tp @e[tag=Guard3] ~ ~ ~ 135 0 
execute as @e[tag=Game,limit=1] at @s positioned ~-1.5 ~-0.1 ~-19.5 unless entity @e[tag=Guard4] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard4", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~-1.5 ~-0.1 ~-19.5 run tp @e[tag=Guard4] ~ ~ ~ 225 0

execute as @e[tag=Game,limit=1] at @s positioned ~18.5 ~-0.1 ~1.5 unless entity @e[tag=Guard5] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard5", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~18.5 ~-0.1 ~1.5 run tp @e[tag=Guard5] ~ ~ ~ 225 0
execute as @e[tag=Game,limit=1] at @s positioned ~18.5 ~-0.1 ~-1.5 unless entity @e[tag=Guard7] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard7", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~18.5 ~-0.1 ~-1.5 run tp @e[tag=Guard7] ~ ~ ~ -45 0 

execute as @e[tag=Game,limit=1] at @s positioned ~-19.5 ~-0.1 ~1.5 unless entity @e[tag=Guard6] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard6", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~-19.5 ~-0.1 ~1.5 run tp @e[tag=Guard6] ~ ~ ~ 135 0
execute as @e[tag=Game,limit=1] at @s positioned ~-19.5 ~-0.1 ~-1.5 unless entity @e[tag=Guard8] run summon iron_golem ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Guard\"",Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["Guard8", "Guard", "Imovable"]}
execute as @e[tag=Game,limit=1] at @s positioned ~-19.5 ~-0.1 ~-1.5 run tp @e[tag=Guard8] ~ ~ ~ 45 0

execute as @a unless entity @s[scores={WarnTimeOut=0..}] at @s run scoreboard players set @s WarnTimeOut 0

execute as @e[tag=SelectedGuard] at @s run tag @s remove SelectedGuard
execute as @e[tag=Guard,limit=1,sort=random] at @s run tag @s add SelectedGuard

execute as @e[tag=SelectedGuard] at @s as @a[distance=..3,scores={WarnTimeOut=0}] run tellraw @s ["[Guard] Keep Weapons Sheathed At All Times."]
execute as @e[tag=SelectedGuard] at @s as @a[distance=..3,scores={WarnTimeOut=0}] run scoreboard players set @s WarnTimeOut 12000

execute as @a[scores={WarnTimeOut=1..}] at @s run scoreboard players remove @s WarnTimeOut 1

#Town limits

execute as @a[tag=InTown] at @s run tag @s remove InTown
execute as @e[tag=Game,limit=1] at @s positioned ~-30 ~-400 ~-30 as @a[dx=60,dy=800,dz=60] run tag @s add InTown
execute as @e[tag=Game,limit=1] at @s positioned ~-31 ~-400 ~-31 as @a[dx=62,dy=800,dz=62] run tag @s add NotInTown
execute as @e[tag=InTown] at @s run tag @s remove NotInTown
execute as @e[tag=Game] at @s run tag @e[type=tnt,distance=..80] add kill
execute as @e[tag=Game] at @s run tag @e[type=armor_stand,tag=TNTPipe,distance=..80] add kill
execute as @e[tag=Game] at @s run tag @e[type=creeper,distance=..80] add kill

execute as @a[tag=InTown] at @s run title @s actionbar "You are in town"
execute as @a[tag=InTown] at @s run fill ~10 -64 ~10 ~-10 -32 ~-10 air replace fire
execute as @a[tag=InTown,gamemode=!creative,gamemode=!adventure] at @s run gamemode adventure @s

execute as @a[tag=NotInTown,gamemode=!creative,gamemode=!survival] at @s run gamemode survival @s
execute as @a[tag=NotInTown] at @s run title @s actionbar ""
execute as @a[tag=NotInTown] at @s run tag @s remove NotInTown





