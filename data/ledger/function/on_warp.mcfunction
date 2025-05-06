execute as @a[tag=ledger.justwarped] at @s run particle minecraft:white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50
execute as @a[tag=ledger.justwarped] at @s run particle minecraft:cherry_leaves ~ ~1.5 ~ 0.5 0.5 0.5 1 10
execute as @a[tag=ledger.justwarped] at @s run particle minecraft:dust_plume ~ ~1 ~ 0.5 1 0.5 0.1 50
execute as @a[tag=ledger.justwarped] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @a[tag=ledger.justwarped] at @s run playsound minecraft:entity.wind_charge.wind_burst master @a
execute as @a[tag=ledger.justwarped] at @s run playsound minecraft:entity.breeze.whirl master @p

execute as @a[tag=ledger.justwarped] at @s run playsound minecraft:ui.loom.take_result
execute as @a[tag=ledger.justwarped] at @s run playsound minecraft:block.enchantment_table.use

tag @s remove ledger.justwarped