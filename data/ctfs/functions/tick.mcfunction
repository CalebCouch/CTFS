##New Player
#Init PlayerId
execute as @a unless entity @s[scores={PlayerId=0..}] run scoreboard players set @s PlayerId 0
#Add Player Count to Game
execute as @a[scores={PlayerId=0},limit=1] run scoreboard players add @e[tag=Game,limit=1] PlayerCount 1
#Give New Player Flag
execute as @a[scores={PlayerId=0}] run tag @s add SummonFlagItem
#Set Player Id
execute as @a[scores={PlayerId=0},limit=1] store result score @s PlayerId run scoreboard players get @e[tag=Game,limit=1] PlayerCount
#Set Player Team
execute as @a unless entity @s[scores={PlayerTeam=0..}] run scoreboard players set @s PlayerTeam 4
#Give First Player The Game
execute as @p unless entity @e[tag=Game] unless entity @a[nbt={Inventory:[{tag:{Game:1b}}]}] run give @s bat_spawn_egg{Game:1b,display:{Name:'{"text":"Center Of Town","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Game\"",Tags:["Game","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}} 1

##FUNCTIONS
#Main
function ctfs:game
function ctfs:team

#Blocks
function ctfs:flag
function ctfs:crafter
function ctfs:cauldron

#Items
function ctfs:exp_bottles
function ctfs:tnt_pipe

#Get a single random player per tick
execute as @e[tag=SingleRandomPlayer] at @s run tag @s remove SingleRandomPlayer 
execute as @a[sort=random,limit=1] at @s run tag @s add SingleRandomPlayer

#Center an entity
execute as @e[tag=Center] at @s run summon item_frame ~ ~ ~ {Facing:1b,Fixed:1b,Invisible:1b,Tags:["centerFrame"]}
execute as @e[tag=Center] at @s run tp @s @e[type=item_frame,distance=..1,limit=1,tag=centerFrame]
execute as @e[tag=Center] at @s run kill @e[tag=centerFrame,distance=..1,limit=1]
execute as @e[tag=Center] at @s run tag @s remove Center
execute as @e[tag=centerFrame] at @s run tag @s add kill

#Entity Effect Tags
execute as @e[tag=Invisible] at @s run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=Imovable] at @s run effect give @s minecraft:slowness 1 5 true
execute as @e[tag=dripFrill] at @s run particle minecraft:falling_dripstone_water ~ ~ ~ 0 0 0 5 1 force

#Kill an entity
execute as @e[tag=kill] at @s run tp @s ~ -100 ~
execute as @e[tag=kill] at @s run kill @s

##player Death
execute as @a[scores={hasDied=1..}] at @s run summon bat ~ ~ ~ {Tags:["PlayerDeath","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}

#Flags
execute as @e[tag=PlayerDeath] at @s unless entity @s[scores={FlagsInInv=0..}] store result score @s FlagsInInv run clear @a[scores={hasDied=1..},distance=..1,limit=1] bat_spawn_egg{Flag:1b}
execute as @e[tag=PlayerDeath,scores={FlagsInInv=1..}] at @s run tag @s add SummonFlagItem
execute as @e[tag=PlayerDeath,scores={FlagsInInv=1..}] at @s run scoreboard players remove @s FlagsInInv 1

#Tin
execute as @e[tag=PlayerDeath] at @s unless entity @s[scores={TinInInv=0..}] store result score @s TinInInv run clear @a[scores={hasDied=1..},distance=..1,limit=1] sunflower{TinCoin:1b}
execute as @e[tag=PlayerDeath,scores={TinInInv=1..}] at @s run tag @s add SummonTinItem
execute as @e[tag=PlayerDeath,scores={TinInInv=1..}] at @s run scoreboard players remove @s TinInInv 1

#Bronze
execute as @e[tag=PlayerDeath] at @s unless entity @s[scores={BronzeInInv=0..}] store result score @s BronzeInInv run clear @a[scores={hasDied=1..},distance=..1,limit=1] sunflower{BronzeCoin:1b}
execute as @e[tag=PlayerDeath,scores={BronzeInInv=1..}] at @s run tag @s add SummonBronzeItem
execute as @e[tag=PlayerDeath,scores={BronzeInInv=1..}] at @s run scoreboard players remove @s BronzeInInv 1

#Silver
execute as @e[tag=PlayerDeath] at @s unless entity @s[scores={SilverInInv=0..}] store result score @s SilverInInv run clear @a[scores={hasDied=1..},distance=..1,limit=1] sunflower{SilverCoin:1b}
execute as @e[tag=PlayerDeath,scores={SilverInInv=1..}] at @s run tag @s add SummonSilverItem
execute as @e[tag=PlayerDeath,scores={SilverInInv=1..}] at @s run scoreboard players remove @s SilverInInv 1

#Gold
execute as @e[tag=PlayerDeath] at @s unless entity @s[scores={GoldInInv=0..}] store result score @s GoldInInv run clear @a[scores={hasDied=1..},distance=..1,limit=1] sunflower{GoldCoin:1b}
execute as @e[tag=PlayerDeath,scores={GoldInInv=1..}] at @s run tag @s add SummonGoldItem
execute as @e[tag=PlayerDeath,scores={GoldInInv=1..}] at @s run scoreboard players remove @s GoldInInv 1

#Score
execute as @a[scores={hasDied=1..,Score=10000..}] at @s run tellraw @s ["You've Lost 10,000 Points, And Droped All Flags"]
execute as @a[scores={hasDied=1..,Score=10000..}] at @s run scoreboard players remove @s Score 10000

execute as @e[tag=PlayerDeath,scores={FlagsInInv=..0,TinInInv=..0,BronzeInInv=..0,SilverInInv=..0,GoldInInv=..0},tag=!SummonFlagItem] at @s run tag @s add kill
execute as @a run scoreboard players set @s hasDied 0

#FallingBlock
execute as @e[tag=FallingBlock] at @s run data merge entity @s {Time:2s}

