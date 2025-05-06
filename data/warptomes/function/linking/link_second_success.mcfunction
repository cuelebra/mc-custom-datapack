# Summon temporary marker aligned to block
execute align xyz run summon marker ~0.5 ~1 ~0.5 {Tags:["warptomes.temp_marker"]}

# Store the coordinates from the temp marker
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_x warptomes.math run data get entity @s Pos[0] 1
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_y warptomes.math run data get entity @s Pos[1] 1
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_z warptomes.math run data get entity @s Pos[2] 1
execute store result score #temp_rotation warptomes.math run data get entity @s Rotation[0] 1

# Store numeric values
execute store result storage warptomes:temp secondPoint.x int 1 run scoreboard players get #temp_x warptomes.math
execute store result storage warptomes:temp secondPoint.y int 1 run scoreboard players get #temp_y warptomes.math
execute store result storage warptomes:temp secondPoint.z int 1 run scoreboard players get #temp_z warptomes.math
execute store result storage warptomes:temp secondPoint.rotation int 1 run scoreboard players get #temp_rotation warptomes.math

# Store dimension in temp storage
data modify storage warptomes:temp secondPoint.dimension set from entity @s Dimension

# Read rune sequence from scroll
data modify storage warptomes:temp runeString set from entity @s SelectedItem.components.minecraft:custom_data.runeString

# Read firstPoint from scroll
data modify storage warptomes:temp firstPoint set from entity @s SelectedItem.components.minecraft:custom_data.firstPoint

# Create the new scroll using the macro
function warptomes:linking/replace_with_second_scroll with storage warptomes:temp

# Copy coordinates and runes to the new scroll as custom data
item modify entity @s weapon.mainhand warptomes:extend_second_scroll

# Remove temp marker and cleanup
kill @e[tag=warptomes.temp_marker]
data remove storage warptomes:temp firstPoint
data remove storage warptomes:temp secondPoint
data remove storage warptomes:temp runeString

# Visual/sound effects
execute align xyz run particle minecraft:glow ~0.5 ~1 ~0.5 0.2 0.2 0.2 0.05 10
playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 1
title @s actionbar {"text":"Memories of the past flood your mind..."}

# Place log and lily pot
execute align xyz run setblock ~0.5 ~1 ~0.5 minecraft:cherry_log[axis=y]
execute align xyz run setblock ~0.5 ~2 ~0.5 minecraft:flower_pot