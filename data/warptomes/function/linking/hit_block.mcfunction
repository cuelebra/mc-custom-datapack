# check linking objective and handle accordingly
execute if score @s warptomes.is_linking matches 1 run function warptomes:linking/link_first_success
execute if score @s warptomes.is_linking matches 2 run function warptomes:linking/link_second_success
execute if score @s warptomes.is_linking matches 3 run function warptomes:linking/link_final_success

# # First check if there's a nether portal nearby
# execute if dimension minecraft:overworld run function warptomes:linking/check_nether_portal

# # Only proceed if either not in overworld, or portal check passed, or not first stage
# execute if dimension minecraft:the_nether run scoreboard players set #portal_nearby warptomes.math 1

# # Send message if no portal was found
# execute if score #portal_nearby warptomes.math matches 0 run tellraw @p ["",{"text":"✧ ","color":"light_purple"},{"text":"The scroll resists...","color":"dark_purple"},{"text":" ✧\n"},{"text":"Its magic requires the presence of a gateway to the nether","color":"gray"},{"text":" ✧","color":"light_purple"}]

# # If success, proceed with linking
# execute if score #portal_nearby warptomes.math matches 1 if score @s warptomes.is_linking matches 1 run function warptomes:linking/link_first_success
# execute if score #portal_nearby warptomes.math matches 1 if score @s warptomes.is_linking matches 2 run function warptomes:linking/link_second_success
# execute if score #portal_nearby warptomes.math matches 1 if score @s warptomes.is_linking matches 3 run function warptomes:linking/link_final_success

# # Reset temp scores
# scoreboard players reset #portal_nearby warptomes.math