title @s actionbar {"text":"The past and future are now connected..."}

# Read firstPoint from scroll
data modify storage warptomes:temp firstPoint set from entity @s SelectedItem.components.minecraft:custom_data.firstPoint

# Read secondPoint from scroll
data modify storage warptomes:temp secondPoint set from entity @s SelectedItem.components.minecraft:custom_data.secondPoint

# Read rune sequence from scroll
data modify storage warptomes:temp runeString set from entity @s SelectedItem.components.minecraft:custom_data.runeString

# Add the runeString to the runeStrings registry storage
data modify storage warptomes:store runeStrings append from storage warptomes:temp runeString

# Store runeString in temp storage
data modify storage warptomes:temp temp.runeString set from storage warptomes:temp runeString

# Store first point coordinates in temp storage
data modify storage warptomes:temp temp.x set from storage warptomes:temp firstPoint.x
data modify storage warptomes:temp temp.y set from storage warptomes:temp firstPoint.y
data modify storage warptomes:temp temp.z set from storage warptomes:temp firstPoint.z
data modify storage warptomes:temp temp.dimension set from storage warptomes:temp firstPoint.dimension
data modify storage warptomes:temp temp.rotation set from storage warptomes:temp firstPoint.rotation

# Store second point coordinates as destination for first marker
data modify storage warptomes:temp temp.destX set from storage warptomes:temp secondPoint.x
data modify storage warptomes:temp temp.destY set from storage warptomes:temp secondPoint.y
data modify storage warptomes:temp temp.destZ set from storage warptomes:temp secondPoint.z
data modify storage warptomes:temp temp.destDimension set from storage warptomes:temp secondPoint.dimension
data modify storage warptomes:temp temp.destRotation set from storage warptomes:temp secondPoint.rotation

# Create first portal marker
function warptomes:linking/create_portal_marker with storage warptomes:temp temp

# Now swap: store second point coordinates in temp storage
data modify storage warptomes:temp temp.x set from storage warptomes:temp secondPoint.x
data modify storage warptomes:temp temp.y set from storage warptomes:temp secondPoint.y
data modify storage warptomes:temp temp.z set from storage warptomes:temp secondPoint.z
data modify storage warptomes:temp temp.dimension set from storage warptomes:temp secondPoint.dimension
data modify storage warptomes:temp temp.rotation set from storage warptomes:temp secondPoint.rotation

# And first point coordinates as destination
data modify storage warptomes:temp temp.destX set from storage warptomes:temp firstPoint.x
data modify storage warptomes:temp temp.destY set from storage warptomes:temp firstPoint.y
data modify storage warptomes:temp temp.destZ set from storage warptomes:temp firstPoint.z
data modify storage warptomes:temp temp.destDimension set from storage warptomes:temp firstPoint.dimension
data modify storage warptomes:temp temp.destRotation set from storage warptomes:temp firstPoint.rotation

# Create second portal marker
function warptomes:linking/create_portal_marker with storage warptomes:temp temp

# Effects 
$execute as @e[nbt={data:{runeString:"$(runeString)"}}] at @s run function warptomes:linking/activate_effects

# remove the scroll
item replace entity @s weapon.mainhand with minecraft:air

# Clear temp storage
data remove storage warptomes:store temp
