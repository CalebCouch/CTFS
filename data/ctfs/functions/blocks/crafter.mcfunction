
execute as @a at @s store success score @s Barrier run clear @s barrier 1
execute as @a[scores={Barrier=1..}] at @s run give @s shulker_spawn_egg{display:{Name:'{"text":"Work Bench","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Crafter\"",Tags:["SummonCrafter","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}} 1 
execute as @a[scores={Barrier=1..}] at @s run scoreboard players set @s Barrier 1



#Init
execute as @e[tag=Crafter] at @s unless entity @s[scores={CraftingState=0..}] run scoreboard players set @s CraftingState 1

#Invalid Placement
execute as @e[tag=SummonCrafter] at @s unless block ~ ~ ~ air run tag @s add InvalidCrafter
execute as @e[tag=SummonCrafter,tag=InvalidCrafter] run tag @s remove SummonCrafter

#Close to Town
execute as @e[tag=SummonCrafter] at @s if entity @e[tag=Game,limit=1,distance=..100] run tag @s add CloseTownCrafter
execute as @e[tag=SummonCrafter,tag=CloseTownCrafter] run tag @s remove SummonCrafter

#Create Crafter
execute as @e[tag=SummonCrafter] at @s run setblock ~ ~ ~ barrel keep
execute as @e[tag=SummonCrafter] at @s run tag @s add Crafter
execute as @e[tag=SummonCrafter,tag=Crafter] at @s run tag @s remove SummonCrafter

#Break Crafter
execute as @e[tag=Crafter] at @s unless block ~ ~ ~ barrel run tag @s add BrokenCrafter
execute as @e[tag=Crafter,tag=BrokenCrafter] at @s run tag @s remove Crafter

#Craft
execute as @e[tag=Crafter,scores={CraftingState=1,RecipeID=1..}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s CraftingState 2

#GUI
execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:0b}]} run item replace block ~ ~ ~ container.0 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:0b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:0b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.0 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:1b}]} run item replace block ~ ~ ~ container.1 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:1b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:1b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.1 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run item replace block ~ ~ ~ container.2 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:2b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:2b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.2 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b}]} run item replace block ~ ~ ~ container.9 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:9b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:9b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.9 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run item replace block ~ ~ ~ container.11 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:11b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:11b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.11 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run item replace block ~ ~ ~ container.18 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:18b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:18b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.18 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:19b}]} run item replace block ~ ~ ~ container.19 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:19b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:19b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.19 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run item replace block ~ ~ ~ container.20 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:20b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:20b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.20 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:6b}]} run item replace block ~ ~ ~ container.6 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:6b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:6b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.6 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:7b}]} run item replace block ~ ~ ~ container.7 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:7b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:7b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.7 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:8b}]} run item replace block ~ ~ ~ container.8 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:8b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:8b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.8 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run item replace block ~ ~ ~ container.15 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:red_stained_glass_pane",Slot:15b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter,scores={CraftingState=1..}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:yellow_stained_glass_pane",Slot:15b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:yellow_stained_glass_pane",Count:1b,Slot:15b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:yellow_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter,scores={CraftingState=0}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} run item replace block ~ ~ ~ container.15 with minecraft:red_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter,scores={CraftingState=0}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:yellow_stained_glass_pane",Slot:15b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:red_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter,scores={CraftingState=0}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:red_stained_glass_pane",Slot:15b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:red_stained_glass_pane",Count:1b,Slot:15b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.15 with minecraft:red_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:17b}]} run item replace block ~ ~ ~ container.17 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:17b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:17b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.17 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:25b}]} run item replace block ~ ~ ~ container.25 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:25b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:25b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.25 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:26b}]} run item replace block ~ ~ ~ container.26 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Slot:26b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:26b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.26 with minecraft:orange_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}

execute as @e[tag=Crafter] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run item replace block ~ ~ ~ container.24 with minecraft:green_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b}
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:green_stained_glass_pane",Slot:24b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:green_stained_glass_pane",Count:1b,Slot:24b,tag:{Block:1b}}]} run item replace block ~ ~ ~ container.24 with minecraft:green_stained_glass_pane{display:{Name:'{"text":""}'},Block:1b,Count:1b}


#Remove last item in crafting table
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:3b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.3 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.4 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:5b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.5 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:12b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.12 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.13 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:14b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.14 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:21b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.21 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:22b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.22 with minecraft:air
execute as @e[tag=Crafter] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:23b,tag:{Block:1}}]} run item replace block ~ ~ ~ container.23 with minecraft:air




#Blocking Crafting
execute as @e[tag=Crafter,scores={CraftingState=0}] at @s run scoreboard players set @s CraftingState 1
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:0b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:1b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:2b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:6b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:7b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:8b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:9b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:11b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:yellow_stained_glass_pane",Count:1b,Slot:15b,tag:{Block:1b}}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:red_stained_glass_pane",Count:1b,Slot:15b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
#execute as @e[tag=Crafter,scores={CraftingState=1}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:17b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:18b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:19b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:20b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s if block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:green_stained_glass_pane",Count:1b,Slot:24b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:25b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0
execute as @e[tag=Crafter,scores={CraftingState=1}] at @s unless block ~ ~ ~ minecraft:barrel{Items:[{id:"minecraft:orange_stained_glass_pane",Count:1b,Slot:26b,tag:{Block:1b}}]} run scoreboard players set @s CraftingState 0

#Recipes
execute as @e[tag=Crafter,scores={CraftingState=1..,RecipeID=1..}] run scoreboard players set @s RecipeID 0
function ctfs:recipes/saddle
function ctfs:recipes/tnt_pipe

#function ctfs:recipes/watch_tower

execute as @e[type=item,nbt={Item:{tag:{Block:1b}}}] run tag @s add kill
execute as @a run clear @s green_stained_glass_pane{Block:1b}
execute as @a run clear @s orange_stained_glass_pane{Block:1b}
execute as @a run clear @s yellow_stained_glass_pane{Block:1b}
execute as @a run clear @s red_stained_glass_pane{Block:1b}

#Remove an item from each slot in grid
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[0].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[0].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[0].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[0].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[0].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[0].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0

execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[1].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[1].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[1].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[1].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[1].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[1].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[2].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[2].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[2].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[2].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[2].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[2].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[3].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[3].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[3].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[3].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[3].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[3].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[4].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[4].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[4].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[4].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[4].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[4].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[5].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[5].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[5].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[5].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[5].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[5].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[6].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[6].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[6].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[6].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[6].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[6].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[7].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[7].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[7].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[7].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[7].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[7].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[8].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[8].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[8].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[8].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[8].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[8].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[9].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[9].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[9].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[9].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[9].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[9].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[10].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[10].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[10].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[10].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[10].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[10].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[11].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[11].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[11].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[11].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[11].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[11].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[12].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[12].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[12].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[12].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[12].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[12].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[13].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[13].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[13].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[13].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[13].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[13].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[14].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[14].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[14].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[14].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[14].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[14].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[15].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[15].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[15].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[15].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[15].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[15].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[16].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[16].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[16].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[16].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[16].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[16].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[17].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[17].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[17].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[17].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[17].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[17].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[18].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[18].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[18].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[18].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[18].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[18].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[19].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[19].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[19].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[19].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[19].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[19].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[20].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[20].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[20].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[20].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[20].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[20].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[21].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[21].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[21].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[21].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[21].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[21].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[22].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[22].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[22].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[22].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[22].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[22].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[23].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[23].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[23].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[23].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[23].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[23].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[24].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[24].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[24].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[24].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[24].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[24].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[25].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[25].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[25].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[25].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[25].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[25].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s ItemCount 0
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run execute store result score @s ItemSlot run data get block ~ ~ ~ Items[26].Slot 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=3..5}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[26].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=12..14}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[26].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemSlot=21..23}] at @s run execute store result score @s ItemCount run data get block ~ ~ ~ Items[26].Count 1
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players remove @s ItemCount 1
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=0}] at @s run execute store success block ~ ~ ~ Items[26].tag.Block int 1 run data get block ~ ~ ~ Items
execute as @e[tag=Crafter,scores={CraftingState=2,ItemCount=1..}] at @s run execute store result block ~ ~ ~ Items[26].Count int 1 run scoreboard players get @s ItemCount
execute as @e[tag=Crafter,scores={CraftingState=2}] at @s run scoreboard players set @s CraftingState 1

#Close Town Crafter
execute as @e[tag=CloseTownCrafter] at @s run tellraw @p ["Cannot Place Crafter Near Town"]
execute as @e[tag=CloseTownCrafter] at @s run tag @s add SummonCrafterItem
execute as @e[tag=CloseTownCrafter] at @s run tag @s add kill

#Invalid Crafter 
execute as @e[tag=InvalidCrafter] at @s run say Invalid Placement
execute as @e[tag=InvalidCrafter] at @s run tag @s add SummonCrafterItem
execute as @e[tag=InvalidCrafter] at @s run tag @s add kill

#Broken Crafter
execute as @e[tag=BrokenCrafter] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:barrel"}},sort=nearest,limit=1,distance=..1] add kill
execute as @e[tag=BrokenCrafter] at @s run tag @s add SummonCrafterItem
execute as @e[tag=BrokenCrafter] at @s run tag @s add kill

execute as @e[tag=SummonCrafterItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:shulker_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Work Bench","color":"cyan","italic":"true"}'},EntityTag:{CustomName:"\"Crafter\"",Tags:["SummonCrafter","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}}}

