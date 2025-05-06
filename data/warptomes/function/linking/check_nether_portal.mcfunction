# Reset scores
scoreboard players set #portal_nearby warptomes.math 0

# Start the x coordinate loop
scoreboard players set #x warptomes.math -5
execute store result storage warptomes:temp x int 1 run scoreboard players get #x warptomes.math
function warptomes:linking/check_portal_x with storage warptomes:temp