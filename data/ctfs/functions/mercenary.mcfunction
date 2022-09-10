##PLACEMENT

##INIT
#Get PlayerId
execute as @e[tag=SummonMercenary] at @s run execute store result score @s PlayerId run scoreboard players get @p PlayerId
execute as @e[tag=SummonMercenary] at @s run execute store result score @s MercId run scoreboard players get @e[tag=Game] MercCount

execute as @e[tag=SummonMercenary] at @s run scoreboard players set @s Food 0
execute as @e[tag=SummonMercenary] at @s run tag @s add Mercenary
execute as @e[tag=SummonMercenary] at @s run tag @s add SummonWatcherV
execute as @e[tag=SummonMercenary] at @s run tag @s add SummonWatcherInventory
execute as @e[tag=SummonMercenary] at @s run tag @s add SummonWatcher

#De Init
execute as @e[tag=SummonMercenary,tag=Mercenary] at @s run tag @s remove SummonMercenary

#Summon Villager
execute as @e[tag=SummonWatcherV] at @s unless entity @e[tag=WatcherV,distance=..1] run summon villager ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,CustomName:"\"Mercenary\"",VillagerData:{profession:librarian,level:10,type:plains},PersistenceRequired:1,Silent:1,NoAI:1,Tags:["WatcherV","Invisible"],Offers:{Recipes:[{buy:{id:sunflower,Count:1,tag:{TinCoin:1b,display:{Name:"\"Tin Coin\"",Lore:["\"Worth 10,000\""]}}},sell:{id:"minecraft:book",Count:1b,tag:{MercBook:1b,display:{Name:"\"Mercenary Hand Book\"",Lore:["\"Use to Command Mercenaries\""]}}},rewardExp:0b,maxUses:9999999},{buy:{id:"minecraft:book",Count:1b,tag:{MercBook:1b,display:{Name:"\"Mercenary Hand Book\"",Lore:["\"Use to Command Mercenaries\""]}}},sell:{id:"minecraft:paper",Count:1b,tag:{PickUpMercenary:1b,RedeemMercBook:1b,display:{Name:"\"Orders\"",Lore:["\"Pick Up\""]}}},rewardExp:0b,maxUses:9999999}]}}
#execute as @e[tag=WatcherV,tag=!init] at @s run tp @s ~ ~1 ~
#execute as @e[tag=WatcherV,tag=!init] at @s run tag @s add init
execute as @e[tag=SummonWatcherV] at @s run tag @s remove SummonWatcherV
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherV,distance=..1] run tag @s add SummonWatcherV 

#Watcher
execute as @e[tag=SummonWatcher] at @s unless entity @e[tag=Watcher,distance=..1] run summon pillager ~ ~ ~ {CustomNameVisible:1b,Health:200,Attributes:[{Name:"generic.max_health",Base:200f}],HandItems:[],Tags:["Watcher"],NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}
execute as @e[tag=Watcher,tag=!init] at @s run tp @s ~ ~ ~
execute as @e[tag=Watcher,tag=!init] at @s run tag @s add init
execute as @e[tag=SummonWatcher] at @s run tag @s remove SummonWatcher

#SummonWatcherInventory
execute as @e[tag=SummonWatcherInventory] at @s unless entity @e[tag=WatcherInventory,distance=..1] run summon llama ~ ~ ~ {CustomNameVisible:1b,CustomName:"\"Mercenary Inventory\"",Tags:["WatcherInventory","Invisible"],Tame:1,DeathLootTable:"minecraft:empty",ChestedHorse:1b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,Strength:2b}
execute as @e[tag=SummonWatcherInventory] at @s run tag @s remove SummonWatcherInventory
##INVENTORY 

execute as @e[tag=Mercenary] at @s run tag @s remove HideInventory
execute as @e[tag=Mercenary] at @s unless score @s PlayerId = @p PlayerId run tag @s add HideInventory 
execute as @e[tag=HideInventory] at @s unless entity @e[tag=InvBlocker1,distance=..2] run summon minecraft:shulker ~ ~ ~ {Tags:["InvBlocker1","InvBlocker","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag=HideInventory] at @s unless entity @e[tag=InvBlocker2,distance=..2] run summon minecraft:shulker ~ ~ ~ {Tags:["InvBlocker2","InvBlocker","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag=HideInventory] at @s unless entity @e[tag=InvBlocker3,distance=..2] run summon minecraft:shulker ~ ~ ~ {Tags:["InvBlocker3","InvBlocker","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag=HideInventory] at @s unless entity @e[tag=InvBlocker4,distance=..2] run summon minecraft:shulker ~ ~-1 ~ {Tags:["InvBlocker4","InvBlocker","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b} 
execute as @e[tag=WatcherInventory] at @s if entity @s[nbt={DecorItem:{Count:1b}}] run item replace entity @s horse.armor with air
execute as @e[tag=WatcherInventory] at @s unless entity @s[nbt={Items:[{Slot:2b}]}] run item replace entity @s horse.0 with minecraft:green_stained_glass_pane{display:{Name:'{"text":"Weapon Slot"}'},Block:1b}


##SPY GLASS
execute as @e[tag=Mercenary] at @s if entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:spyglass"}]}] run tag @s add SpyGlass
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:spyglass"}]}] run tag @s remove SpyGlass
execute as @e[tag=Mercenary,tag=SpyGlass] at @s run data merge entity @e[tag=Watcher,limit=1,distance=..1.1] {HandItems:[{id:spyglass,Count:1}],HandDropChances:[0f]}
execute as @e[tag=Mercenary,tag=!SpyGlass] at @s as @e[tag=Watcher,limit=1,distance=..1.1] if entity @s[nbt={HandItems:[{id:"minecraft:spyglass"}]}] run data merge entity @s {HandItems:[],HandDropChances:[0f]}

##IRON SWORD
execute as @e[tag=Mercenary] at @s if entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:iron_sword"}]}] run tag @s add IronSword
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:iron_sword"}]}] run tag @s remove IronSword
execute as @e[tag=Mercenary,tag=IronSword] at @s run data merge entity @e[tag=Watcher,limit=1,distance=..1.1] {HandItems:[{id:iron_sword,Count:1}],HandDropChances:[0f]}
execute as @e[tag=Mercenary,tag=!IronSword] at @s as @e[tag=Watcher,limit=1,distance=..1.1] if entity @s[nbt={HandItems:[{id:"minecraft:iron_sword"}]}] run data merge entity @s {HandItems:[],HandDropChances:[0f]}

##CROSS BOW
execute as @e[tag=Mercenary] at @s if entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{id:"minecraft:arrow"}]}] run tag @s add Arrows
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{id:"minecraft:arrow"}]}] run tag @s remove Arrows
execute as @e[tag=Mercenary] at @s if entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:crossbow"}]}] run tag @s add CrossBow
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:crossbow"}]}] run tag @s remove CrossBow
execute as @e[tag=Mercenary,tag=!Arrows,tag=CrossBow] at @s run data merge entity @e[tag=Watcher,limit=1,distance=..1.1] {HandItems:[{id:crossbow,Count:1b}],HandDropChances:[0f]}
execute as @e[tag=Mercenary,tag=Arrows,tag=CrossBow] at @s run data merge entity @e[tag=Watcher,limit=1,distance=..1.1] {HandItems:[{id:crossbow,Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}}],HandDropChances:[0f]}
execute as @e[tag=Mercenary] at @s unless entity @e[tag=WatcherInventory,limit=1,distance=..1.1,nbt={Items:[{Slot:2b,id:"minecraft:crossbow"}]}] run tag @s remove CrossBow

execute as @e[tag=Mercenary,tag=!CrossBow] at @s as @e[tag=Watcher,limit=1,distance=..1.1] if entity @s[nbt={HandItems:[{id:"minecraft:crossbow"}]}] run data merge entity @s {HandItems:[],HandDropChances:[0f]}

##INVENTORY

##RUNNING

#Health
execute as @a at @s store result score @s Health run data get entity @e[tag=Watcher,limit=1,sort=nearest] Health 1
execute as @e[tag=Mercenary] at @s run setblock ~ ~ ~ oak_sign{Text1:"[\"\",{\"score\":{\"name\":\"@p\",\"objective\":\"Health\"}},{\"text\":\"❤\",\"color\":\"red\"}]"}
execute as @e[tag=Mercenary] at @s run data modify entity @e[tag=Watcher,distance=..0.5,limit=1] CustomName set from block ~ ~ ~ Text1
execute as @e[tag=Mercenary] at @s run setblock ~ ~ ~ air replace

#RedeemMercBook
execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{PickUpMercenary:1b,RedeemMercBook:1b}}]}] at @s run tag @s add RedeemMercBook 
execute as @a[tag=RedeemMercBook] at @s run clear @s paper{PickUpMercenary:1b,RedeemMercBook:1b} 1
execute as @a[tag=RedeemMercBook] at @s run give @s paper{PickUpMercenary:1b,display:{Name:"\"Orders\"",Lore:["\"Pick Up\""]}} 1
execute as @a[tag=RedeemMercBook] at @s run tag @s add SummonMercBookItem 
execute as @a[tag=RedeemMercBook] at @s run tag @s remove RedeemMercBook 

#Positioning Interaction
execute as @e[tag=WatcherV] at @s run tp @s @e[tag=Watcher,distance=..1,limit=1]
execute as @e[tag=WatcherV] at @s run tp @s ^ ^ ^-0.25
execute as @e[tag=WatcherInventory] at @s run tp @s @e[tag=Watcher,distance=..1,limit=1]
execute as @e[tag=WatcherInventory] at @s run tp @s ^ ^-0.9 ^-0.4
execute as @e[tag=InvBlocker1] at @s run tp @s @e[tag=Watcher,limit=1,sort=nearest]
execute as @e[tag=InvBlocker1] at @s run tp @s ^ ^ ^-1
execute as @e[tag=InvBlocker2] at @s run tp @s @e[tag=Watcher,limit=1,sort=nearest]
execute as @e[tag=InvBlocker2] at @s run tp @s ^ ^-1 ^-1

#Check if broken
execute as @e[tag=Mercenary,tag=OwnerOffline] at @s unless entity @e[tag=Watcher,distance=..1] run tag @s add OfflineBroken
execute as @e[tag=Mercenary,tag=!OwnerOffline] at @s unless entity @e[tag=Watcher,distance=..1] run tag @s add BreakMercenary

#Add delay
execute as @e[tag=Mercenary] at @s run scoreboard players add @s AlertDelay 1

#Set Team
execute as @e[tag=Mercenary] at @s if score @a[tag=SingleRandomPlayer,limit=1] PlayerId = @s PlayerId store result score @s PlayerTeam run scoreboard players get @a[tag=SingleRandomPlayer,limit=1] PlayerTeam

#Check for offline owner
execute as @e[tag=Mercenary] at @s run scoreboard players add @s PlayerTest 1
execute as @e[tag=Mercenary] at @s if score @a[distance=1..,limit=1,sort=random] PlayerId = @s PlayerId run scoreboard players set @s PlayerTest 0
execute as @e[tag=Mercenary,scores={PlayerTest=101..}] at @s run tag @s add OwnerOffline
execute as @e[tag=Mercenary,scores={PlayerTest=..100}] at @s run tag @s remove OwnerOffline 

#Remove Parts
execute as @e[tag=Watcher] at @s unless entity @e[tag=Mercenary,distance=..1] run tag @s add kill
execute as @e[tag=WatcherV] at @s unless entity @e[tag=Mercenary,distance=..1] run tag @s add kill
execute as @e[tag=WatcherInventory] at @s unless entity @e[tag=Mercenary,distance=..2] run kill @s 
execute as @e[tag=WatcherV] at @s as @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..2,limit=1] run kill @s
execute as @e[tag=InvBlocker] at @s unless entity @e[tag=HideInventory,distance=..2.1] run tag @s add kill

#Remove Tags
execute as @e[tag=Watching] at @s run tag @s remove Watching
execute as @e[tag=Watched] at @s run tag @s remove Watched
execute as @e[tag=SelectedWatchTower] at @s run tag @s remove SelectedWatchTower
execute as @e[tag=SelectedWatcher] at @s run tag @s remove SelectedWatcher

##Watching

#Select Mercenary Player Pair
execute as @a[tag=SingleRandomPlayer,limit=1] at @s as @e[tag=Mercenary,limit=1,sort=random,distance=..100] run tag @s add SelectedWatchTower
execute as @e[tag=SelectedWatchTower,limit=1] at @s if score @s PlayerId = @a[tag=SingleRandomPlayer,limit=1] PlayerId run tag @s remove SelectedWatchTower
execute as @e[tag=SelectedWatchTower,limit=1,scores={PlayerTeam=..3}] at @s if score @s PlayerTeam = @a[tag=SingleRandomPlayer,limit=1] PlayerTeam run tag @s remove SelectedWatchTower
execute as @e[tag=SelectedWatchTower,limit=1] at @s unless entity @a[tag=SingleRandomPlayer,limit=1,distance=..50] unless entity @s[tag=SpyGlass] run tag @s remove SelectedWatchTower
execute as @e[tag=SelectedWatchTower,limit=1] at @s run tag @e[tag=Watcher,distance=..1,limit=1] add SelectedWatcher

#See Player
execute as @a at @s if score @s PlayerId = @e[tag=SelectedWatchTower,limit=1,scores={AlertDelay=500..}] PlayerId run tellraw @s ["[Mercenary] I've Spotted Someone."]
execute as @e[tag=SelectedWatchTower,limit=1,scores={AlertDelay=500..}] at @s run scoreboard players set @s AlertDelay 0

execute as @a[tag=SingleRandomPlayer,limit=1] at @s unless entity @e[tag=AWatcher] run summon armor_stand ~ 0 ~ {Tags:["AWatcher","Invisible"],Small:1b,Invulnerable:1b,NoGravity:1b,Invisible:1b,Marked:1b}
execute as @a[tag=SingleRandomPlayer,limit=1] at @s as @e[tag=AWatcher,limit=1] run tp @s ~ ~1.68 ~ facing entity @e[tag=SelectedWatcher,limit=1] eyes
execute as @e[tag=SelectedWatchTower,scores={WatchDelay=3..}] run function ctfs:utils/can_see_ray_trace
execute as @e[tag=SelectedWatchTower,scores={WatchDelay=3..}] run scoreboard players set @s WatchDelay 0
execute as @e[tag=SelectedWatchTower] run scoreboard players add @s WatchDelay 1

#Visual
execute as @e[tag=SelectedWatchTower,limit=1] at @s as @e[tag=Watcher,limit=1,distance=..1] at @s run tp @s ~ ~ ~ facing entity @a[tag=Watched,limit=1,sort=nearest]

execute as @a[tag=Watched,limit=1,sort=nearest] at @s run effect give @s glowing 5 0 true 
execute as @e[tag=AWatcher] at @s run tag @s add kill

##Watching

##Attacking

execute as @e[tag=Mercenary] at @s run scoreboard players add @s AttackDelay 1

##Iron Sword Attack
execute as @e[tag=Mercenary,tag=IronSword,scores={AttackDelay=100..}] at @s unless score @p[distance=..5] PlayerId = @s PlayerId run tag @s add Attack
execute as @e[tag=Mercenary,tag=IronSword,tag=Attack,scores={PlayerTeam=..3}] at @s if score @p[distance=..5] PlayerTeam = @s PlayerTeam run tag @s remove Attack
execute as @e[tag=Mercenary,tag=IronSword,tag=Attack] at @s run effect give @p[distance=..5] minecraft:instant_damage 1

##Cross Bow Attack
execute as @e[tag=Mercenary,tag=CrossBow,tag=Arrows,scores={AttackDelay=100..},tag=Watching] run tag @s add Attack
execute as @e[tag=Mercenary,tag=CrossBow,tag=Attack] at @s run summon arrow ~ ~2 ~ {Motion:[0.0,1.0,0.0]}




execute as @e[tag=Mercenary,tag=Attack] at @s run scoreboard players set @s AttackDelay 0
execute as @e[tag=Mercenary,tag=Attack] at @s run tag @s remove Attack

##Attacking

#Offline Break Mercenary
execute as @e[tag=OfflineBroken] at @s as @a[distance=..10] run tellraw @s ["You Cannot Kill An Offline Mercenary"]
execute as @e[tag=OfflineBroken] at @s unless entity @e[tag=Watcher,distance=..1] run tag @s add SummonWatcher 
execute as @e[tag=OfflineBroken] at @s run tag @s remove OfflineBroken

##Commands

#PickUp
execute as @e[tag=Mercenary] at @s if entity @e[type=item,nbt={Item:{tag:{PickUpMercenary:1b}}},distance=..1.1] run tag @s add PickUpMercenary
execute as @e[tag=PickUpMercenary] at @s run tag @e[type=item,nbt={Item:{tag:{PickUpMercenary:1b}}},distance=..1.1] add kill
execute as @e[tag=PickUpMercenary] at @s unless score @s PlayerId = @p PlayerId run tag @s add InvalidCommand
execute as @e[tag=PickUpMercenary,tag=!InvalidCommand] at @s run tag @s add BreakMercenary
execute as @e[tag=PickUpMercenary,tag=!InvalidCommand] at @s run tag @s add SummonMercenaryItem
execute as @e[tag=PickUpMercenary] at @s run tag @s remove PickUpMercenary

#Invalid Command
execute as @e[tag=InvalidCommand] at @s as @a[distance=..5] run tellraw @s ["This Mercenary Is Not On Your Pay Role"]
execute as @e[tag=InvalidCommand] at @s run tag @s remove InvalidCommand

#SummonMercenaryItem
execute as @e[tag=SummonMercenaryItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Mercenary","italic":"true"}'},EntityTag:{CustomName:"\"Mercenary\"",Tags:["SummonMercenary","Invisible"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b}}}}
execute as @e[tag=SummonMercenaryItem,tag=SpyGlass] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:spyglass",Count:1b}}
execute as @e[tag=SummonMercenaryItem] at @s run tag @s remove SummonMercenaryItem

#SummonMercBookItem
execute as @e[tag=SummonMercBookItem] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{MercBook:1b,display:{Name:"\"Mercenary Hand Book\"",Lore:["\"Use to Command Mercenaries\""]}}}}
execute as @e[tag=SummonMercBookItem] at @s run tag @s remove SummonMercBookItem

#Break Mercenary
execute as @e[tag=BreakMercenary] at @s run tag @s add kill 

#InvalidMercenary
execute as @e[tag=InvalidMercenary] at @s run say Invalid Placement
execute as @e[tag=InvalidMercenary] at @s run tag @s add SummonMercenaryItem
execute as @e[tag=InvalidMercenary] at @s run tag @s add kill