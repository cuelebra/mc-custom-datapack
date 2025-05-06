# summon fox
execute as @s run summon minecraft:fox ~ ~ ~ {Tags:["PortalFox"], }
data modify entity @e[type=fox, limit=1, sort=nearest] Trusted append from entity @p UUID

execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run particle minecraft:white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run particle minecraft:cherry_leaves ~ ~1.5 ~ 0.5 0.5 0.5 1 10
execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.5 1 0.5 0.1 50
execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1

execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run playsound minecraft:entity.wind_charge.wind_burst master @a
execute as @e[tag=PortalFox, limit=1, sort=nearest] at @s run playsound minecraft:entity.breeze.whirl master @p
