# Initialize success flag
scoreboard players set #success warptomes.math 1

# Summon temporary marker aligned to block (mind the lily)
execute align xyz run summon marker ~0.5 ~0 ~0.5 {Tags:["warptomes.temp_marker"]}

# Read firstPoint from scroll
data modify storage warptomes:temp firstPoint set from entity @s SelectedItem.components.minecraft:custom_data.firstPoint

# Read runeString from scroll
data modify storage warptomes:temp runeString set from entity @s SelectedItem.components.minecraft:custom_data.runeString

# Get coordinates from temp marker and compare to firstPoint
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp warptomes.math run data get entity @s Pos[0] 1
execute store result score #compare warptomes.math run data get storage warptomes:temp firstPoint.x 1
execute unless score #temp warptomes.math = #compare warptomes.math run scoreboard players set #success warptomes.math 0

execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp warptomes.math run data get entity @s Pos[1] 1
execute store result score #compare warptomes.math run data get storage warptomes:temp firstPoint.y 1
execute unless score #temp warptomes.math = #compare warptomes.math run scoreboard players set #success warptomes.math 0

execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp warptomes.math run data get entity @s Pos[2] 1
execute store result score #compare warptomes.math run data get storage warptomes:temp firstPoint.z 1
execute unless score #temp warptomes.math = #compare warptomes.math run scoreboard players set #success warptomes.math 0

# Remove temp marker
kill @e[type=marker,tag=warptomes.temp_marker]

# If all coordinates match, activate permanent portals at both points
execute if score #success warptomes.math matches 1 run function warptomes:linking/activate_linked_portals with storage warptomes:temp
execute if score #success warptomes.math matches 0 run function warptomes:linking/fail_link

