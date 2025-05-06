# Get destination coordinates from marker
execute as @e[tag=warptomes.portal_marker,limit=1,sort=nearest] run data modify storage warptomes:temp destination set from entity @s data.destination

# # Reset success score
# scoreboard players set #success warptomes.math 0

# # If in nether, always allow
# execute if dimension minecraft:the_nether run scoreboard players set #success warptomes.math 1

# # If using warped fungus, allow and consume fungus
# execute if dimension minecraft:overworld if predicate warptomes:holding_warped_fungus run scoreboard players set #success warptomes.math 1
# execute if dimension minecraft:overworld if score #success warptomes.math matches 1 run clear @s warped_fungus 1

# # If in overworld and not using fungus, check cooldown
# execute if dimension minecraft:overworld unless score #success warptomes.math matches 1 as @e[tag=warptomes.portal_marker,limit=1,sort=nearest] run function warptomes:linking/check_cooldown

# # If allowed (success = 1), do the teleport and update last used day
# execute if score #success warptomes.math matches 1 as @e[tag=warptomes.portal_marker,limit=1,sort=nearest] store result score @s warptomes.lastday run time query day
# execute if score #success warptomes.math matches 1 run function warptomes:linking/teleport with storage warptomes:temp destination
# execute if score #success warptomes.math matches 1 run schedule function warptomes:on_warp 3t
# execute if score #success warptomes.math matches 1 run scoreboard players set @s warptomes.justwarped 40

# # Reset temp scores
# scoreboard players reset #temp warptomes.math


# Teleport to destination
function warptomes:linking/teleport with storage warptomes:temp destination

# Add teleport effects
schedule function warptomes:on_warp 3t

scoreboard players set @s warptomes.justwarped 40