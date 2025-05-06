# Start the y coordinate loop
scoreboard players set #y warptomes.math -5
execute store result storage warptomes:temp y int 1 run scoreboard players get #y warptomes.math
$execute positioned ~$(x) ~ ~ run function warptomes:linking/check_portal_y with storage warptomes:temp

# Loop for next x
scoreboard players add #x warptomes.math 1
execute store result storage warptomes:temp x int 1 run scoreboard players get #x warptomes.math
execute if score #x warptomes.math matches -5..5 unless score #portal_nearby warptomes.math matches 1 run function warptomes:linking/check_portal_x with storage warptomes:temp