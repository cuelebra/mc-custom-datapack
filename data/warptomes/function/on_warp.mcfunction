#execute as @a[scores={warptomes.justwarped=1..}] at @s run particle minecraft:glow ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @a[scores={warptomes.justwarped=1..}] at @s run particle minecraft:white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @a[scores={warptomes.justwarped=1..}] at @s run particle minecraft:cherry_leaves ~ ~1.5 ~ 0.5 0.5 0.5 1 10
execute as @a[scores={warptomes.justwarped=1..}] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.5 1 0.5 0.1 50
execute as @a[scores={warptomes.justwarped=1..}] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1

execute as @a[scores={warptomes.justwarped=1..}] at @s run playsound minecraft:entity.wind_charge.wind_burst master @a
execute as @a[scores={warptomes.justwarped=1..}] at @s run playsound minecraft:entity.breeze.whirl master @p