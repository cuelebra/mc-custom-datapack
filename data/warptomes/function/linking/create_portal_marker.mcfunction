# Summon a marker with added new tag for easy targeting
$execute in $(dimension) positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["warptomes.portal_marker"],data:{destination:{x:$(destX),y:$(destY),z:$(destZ),dimension:"$(destDimension)",rotation:$(destRotation)},runeString:"$(runeString)"}}

# Add the display entity with proper rotation and scale
$scoreboard players set #rotation warptomes.math $(rotation)
# Summon the text display with conditional rotations
$execute in $(dimension) if score #rotation warptomes.math matches -45..45 run summon text_display $(x) $(y) $(z) {Rotation:[180f,-90f],Tags:["warptomes.rune_display"],text:'{"text":"$(runeString)","color":"black"}',background:0,see_through:false,text_opacity:180,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.39f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

$execute in $(dimension) if score #rotation warptomes.math matches -135..-45 run summon text_display $(x) $(y) $(z) {Rotation:[90f,-90f],Tags:["warptomes.rune_display"],text:'{"text":"$(runeString)","color":"black"}',background:0,see_through:false,text_opacity:180,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.39f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

$execute in $(dimension) if score #rotation warptomes.math matches -180..-135 run summon text_display $(x) $(y) $(z) {Rotation:[0f,-90f],Tags:["warptomes.rune_display"],text:'{"text":"$(runeString)","color":"black"}',background:0,see_through:false,text_opacity:180,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.39f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}
$execute in $(dimension) if score #rotation warptomes.math matches 135..180 run summon text_display $(x) $(y) $(z) {Rotation:[0f,-90f],Tags:["warptomes.rune_display"],text:'{"text":"$(runeString)","color":"black"}',background:0,see_through:false,text_opacity:180,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.39f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

$execute in $(dimension) if score #rotation warptomes.math matches 45..135 run summon text_display $(x) $(y) $(z) {Rotation:[-90f,-90f],Tags:["warptomes.rune_display"],text:'{"text":"$(runeString)","color":"black"}',background:0,see_through:false,text_opacity:180,transformation:{scale:[0.5f,0.5f,0.5f],translation:[0f,-0.39f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]}}

# Place the lily
$execute in $(dimension) positioned $(x) $(y) $(z) run setblock ~ ~1 ~ minecraft:potted_lily_of_the_valley

# Summon interaction entity
$execute in $(dimension) positioned $(x) $(y) $(z) run summon interaction ~ ~1 ~ {Tags:["warptomes.portal_interaction"],width:1f,height:1f}
