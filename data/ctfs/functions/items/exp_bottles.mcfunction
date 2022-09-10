execute as @a[nbt={SelectedItem:{id:"minecraft:experience_bottle"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{EmeraldExp:1b}}}] at @s run scoreboard players set @s bottleType 0

execute as @a[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{IronExp:1b}}}] at @s run scoreboard players set @s bottleType 1
execute as @a[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{GoldExp:1b}}}] at @s run scoreboard players set @s bottleType 2
execute as @a[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{DiamondExp:1b}}}] at @s run scoreboard players set @s bottleType 3
execute as @a[nbt={SelectedItem:{id:"minecraft:experience_bottle",tag:{EmeraldExp:1b}}}] at @s run scoreboard players set @s bottleType 4



execute as @a[scores={bottleType=1,UseBottle=1..}] at @s run tag @s add UsedIronExp
execute as @a[scores={bottleType=2,UseBottle=1..}] at @s run tag @s add UsedGoldExp
execute as @a[scores={bottleType=3,UseBottle=1..}] at @s run tag @s add UsedDiamondExp
execute as @a[scores={bottleType=4,UseBottle=1..}] at @s run tag @s add UsedEmeraldExp



execute as @a[tag=UsedIronExp] at @s run kill @e[type=minecraft:experience_bottle,limit=1]
execute as @a[tag=UsedIronExp] at @s run xp add @s 1 levels
execute as @a[tag=UsedIronExp] at @s run tag @s remove UsedIronExp

execute as @a[tag=UsedGoldExp] at @s run kill @e[type=minecraft:experience_bottle,limit=1]
execute as @a[tag=UsedGoldExp] at @s run xp add @s 2 levels
execute as @a[tag=UsedGoldExp] at @s run tag @s remove UsedGoldExp

execute as @a[tag=UsedDiamondExp] at @s run kill @e[type=minecraft:experience_bottle,limit=1]
execute as @a[tag=UsedDiamondExp] at @s run xp add @s 3 levels
execute as @a[tag=UsedDiamondExp] at @s run tag @s remove UsedDiamondExp

execute as @a[tag=UsedEmeraldExp] at @s run kill @e[type=minecraft:experience_bottle,limit=1]
execute as @a[tag=UsedEmeraldExp] at @s run xp add @s 4 levels
execute as @a[tag=UsedEmeraldExp] at @s run tag @s remove UsedEmeraldExp

execute as @a[scores={UseBottle=1..}] at @s run scoreboard players set @s UseBottle 0
