# Start the z coordinate loop
scoreboard players set #z warptomes.math -5
execute store result storage warptomes:temp z int 1 run scoreboard players get #z warptomes.math
$execute positioned ~ ~$(y) ~ run function warptomes:linking/check_portal_z with storage warptomes:temp

# Loop for next y
# y can be incremented by 2 because nether portal is at least 3 blocks high
scoreboard players add #y warptomes.math 3 
execute store result storage warptomes:temp y int 1 run scoreboard players get #y warptomes.math
execute if score #y warptomes.math matches -5..5 unless score #portal_nearby warptomes.math matches 1 run function warptomes:linking/check_portal_y with storage warptomes:temp