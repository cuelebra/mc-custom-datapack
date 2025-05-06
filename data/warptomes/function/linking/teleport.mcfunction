# Get the target portal's stored facing direction
execute as @e[type=marker,tag=warptomes.portal_marker,sort=nearest,limit=1] store result score #rotation warptomes.math run data get entity @s data.destination.rotation

# Teleport based on facing direction
$execute in $(dimension) positioned $(x) $(y) $(z) run function warptomes:linking/position_player