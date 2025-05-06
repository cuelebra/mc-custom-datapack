# Check current block
$execute positioned ~ ~ ~$(z) if block ~ ~ ~ minecraft:nether_portal run scoreboard players set #portal_nearby warptomes.math 1

# Loop for next z
scoreboard players add #z warptomes.math 1
execute store result storage warptomes:temp z int 1 run scoreboard players get #z warptomes.math
execute if score #z warptomes.math matches -5..5 unless score #portal_nearby warptomes.math matches 1 run function warptomes:linking/check_portal_z with storage warptomes:temp

