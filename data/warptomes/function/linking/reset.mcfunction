# Attempt to undo everything

# Clear temp storage
data remove storage warptomes:temp secondPoint
data remove storage warptomes:temp firstPoint
data remove storage warptomes:temp targetString

# Read firstPoint from scroll
data modify storage warptomes:temp firstPoint set from entity @s SelectedItem.components.minecraft:custom_data.firstPoint

# Read secondPoint from scroll
data modify storage warptomes:temp secondPoint set from entity @s SelectedItem.components.minecraft:custom_data.secondPoint

# Read runeString from scroll
data modify storage warptomes:temp targetString set from entity @s SelectedItem.components.minecraft:custom_data.runeString

# Remove the runeString from the registry
execute if data storage warptomes:temp targetString run function warptomes:linking/break_rune

# Remove blocks from first point
execute if data storage warptomes:temp firstPoint run function warptomes:linking/break_at_coordinates with storage warptomes:temp firstPoint

# Remove blocks from second point
execute if data storage warptomes:temp secondPoint run function warptomes:linking/break_at_coordinates with storage warptomes:temp secondPoint

# Reset the scroll
function warptomes:linking/replace_with_empty_scroll

title @s actionbar {"text":"What was done will be undone.","color":"red"}
