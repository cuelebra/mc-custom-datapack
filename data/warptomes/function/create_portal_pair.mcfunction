function warptomes:increment_pair_id
function warptomes:kill_outdated_entities with storage warptomes:store

# summon origin portal where player is looking
function warptomes:summon_portal_origin with storage warptomes:store

# Store coordinates and dimension in storage
execute as @e[tag=PortalOrigin,limit=1] run data modify storage warptomes:store home_originX set from entity @s Pos[0]
execute as @e[tag=PortalOrigin,limit=1] run data modify storage warptomes:store home_originY set from entity @s Pos[1]
execute as @e[tag=PortalOrigin,limit=1] run data modify storage warptomes:store home_originZ set from entity @s Pos[2]
# dimension
execute as @p run data modify storage warptomes:store home_originDimension set from entity @s Dimension


# summon destination portal at stored destination coordinates
function warptomes:summon_portal_destination with storage warptomes:store

# effects

execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.deflect master @p
execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.whirl master @p
execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.idle_air master @p
execute at @e[tag=PortalEntity] run playsound minecraft:particle.soul_escape master @p
execute at @e[tag=PortalEntity] run playsound minecraft:block.conduit.deactivate master @p
execute at @e[tag=PortalEntity] run playsound minecraft:block.trial_spawner.ominous_activate master @p


execute at @e[tag=PortalEntity] run particle minecraft:end_rod ~ ~0.6 ~ 0 0 0 0.5 10
execute at @e[tag=PortalEntity] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0 0 0.5 10
execute at @e[tag=PortalEntity] run particle minecraft:bubble_pop ~ ~0.5 ~ 0 0 0 0.5 10
execute at @e[tag=PortalEntity] run particle minecraft:white_smoke ~ ~0.5 ~ 0 0 0 0.2 10
execute at @e[tag=PortalEntity] run particle minecraft:large_smoke ~ ~0.5 ~ 0 0 0 0.2 10
execute at @e[tag=PortalEntity] run particle minecraft:gust ~ ~1 ~ 0 0 0 0.2 1


# consume one tome

clear @p minecraft:book[minecraft:custom_data~{isTome:true}] 1





