# Summon temporary marker aligned to block
execute align xyz run summon marker ~0.5 ~1 ~0.5 {Tags:["warptomes.temp_marker"]}

# Store the coordinates from the temp marker
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_x warptomes.math run data get entity @s Pos[0] 1
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_y warptomes.math run data get entity @s Pos[1] 1
execute as @e[type=marker,tag=warptomes.temp_marker,limit=1] store result score #temp_z warptomes.math run data get entity @s Pos[2] 1
execute store result score #temp_rotation warptomes.math run data get entity @s Rotation[0] 1

# Store numeric values
execute store result storage warptomes:temp firstPoint.x int 1 run scoreboard players get #temp_x warptomes.math
execute store result storage warptomes:temp firstPoint.y int 1 run scoreboard players get #temp_y warptomes.math
execute store result storage warptomes:temp firstPoint.z int 1 run scoreboard players get #temp_z warptomes.math
execute store result storage warptomes:temp firstPoint.rotation int 1 run scoreboard players get #temp_rotation warptomes.math

# Store dimension in temp storage
data modify storage warptomes:temp firstPoint.dimension set from entity @s Dimension


# Generate random runes
function warptomes:linking/generate_runes

# Create the new scroll using the macro to add runes to lore
function warptomes:linking/replace_with_first_scroll with storage warptomes:temp

# Copy coordinates and runes to the new scroll as custom data
item modify entity @s weapon.mainhand warptomes:extend_first_scroll

data modify entity @s SelectedItem.components.minecraft:custom_data.firstPoint set from storage warptomes:temp firstPoint
data modify entity @s SelectedItem.components.minecraft:custom_data.runeString set from storage warptomes:temp runeString

# Remove temp marker and cleanup
kill @e[tag=warptomes.temp_marker]
data remove storage warptomes:temp firstPoint
data remove storage warptomes:temp runeString

# Visual/sound effects
execute align xyz run particle minecraft:glow ~0.5 ~1 ~0.5 0.2 0.2 0.2 0.05 20
playsound minecraft:entity.breeze.idle_air master @a ~ ~ ~ 1 1
title @s actionbar {"text":"Images of the future flash before your eyes..."}

# Place blocks
execute align xyz run setblock ~0.5 ~1 ~0.5 minecraft:cherry_log[axis=y]
execute align xyz run setblock ~0.5 ~2 ~0.5 minecraft:flower_pot

