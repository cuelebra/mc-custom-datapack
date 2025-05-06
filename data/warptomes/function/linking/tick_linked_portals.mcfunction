execute as @e[tag=warptomes.portal_marker] at @s run function warptomes:linking/check_self

# Run particles at all portal markers
execute as @e[tag=warptomes.portal_marker] at @s run function warptomes:linking/run_particles

# Check for portal interactions
execute as @e[tag=warptomes.portal_interaction] at @s if data entity @s interaction on target run function warptomes:linking/handle_teleport

execute as @e[tag=warptomes.portal_interaction] if data entity @s interaction run data remove entity @s interaction