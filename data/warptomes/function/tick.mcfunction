execute at @e[tag=PortalOrigin] run particle minecraft:end_rod ~ ~1 ~ 0.25 0.5 0.25 0.01 2 force

execute as @e[tag=PortalOrigin] at @s run particle minecraft:small_gust ~ ~1 ~ 0.3 0.5 0.3 0.1 3 force

execute as @e[tag=PortalOrigin] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.2 0.4 0.2 0.01 2 force

execute at @e[tag=PortalDestination] run particle minecraft:end_rod ~ ~1.2 ~ 0.20 0.6 0.20 0.01 1 force

execute as @e[tag=PortalDestination] at @s run particle minecraft:small_gust ~ ~1.2 ~ 0.2 0.6 0.2 0.1 2 force

execute as @e[tag=PortalDestination] at @s run particle minecraft:electric_spark ~ ~1.2 ~ 0.2 0.5 0.2 0.01 2

effect give @e[tag=PortalEntity] minecraft:glowing 1 0 true

# Show cooldown particles for players who recently teleported
execute as @a[scores={warptomes.justwarped=1..}] at @s as @e[tag=PortalEntity,distance=..5] at @s run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 2 force

# teleport player when he gets close to either portal
execute as @e[tag=PortalOrigin] at @s run execute as @a[distance=..1] unless score @s warptomes.justwarped matches 1.. run function warptomes:warp_home with storage warptomes:store

execute as @e[tag=PortalDestination] at @s run execute as @a[distance=..0.5] unless score @s warptomes.justwarped matches 1.. run function warptomes:warp_back with storage warptomes:store

# Decrement cooldown timer for players who are warping
execute as @a[scores={warptomes.justwarped=2..}] run scoreboard players remove @s warptomes.justwarped 1

# Play ambient sound
execute as @e[tag=PortalEntity] at @s if predicate warptomes:is_chance run playsound minecraft:block.portal.ambient ambient @a[distance=..10] ~ ~ ~ 0.2 2

execute as @e[tag=PortalEntity] at @s if predicate warptomes:is_chance run playsound minecraft:entity.breeze.whirl ambient @a[distance=..5] ~ ~ ~ 1 1

# Summon fox rarely if no fox is nearby
execute as @e[tag=PortalDestination] at @s if predicate warptomes:is_very_low_chance unless entity @e[type=minecraft:fox,limit=1,sort=nearest, distance=..50] run function warptomes:summon_fox

# Reset warped status when player leaves both portal areas
execute as @a[scores={warptomes.justwarped=1}] at @s unless entity @e[tag=PortalEntity,distance=..1.5] run scoreboard players set @s warptomes.justwarped 0

# kill outdated entities
function warptomes:kill_outdated_entities with storage warptomes:store

# Tick linked portals
function warptomes:linking/tick_linked_portals

# player trails
function warptomes:player_trail