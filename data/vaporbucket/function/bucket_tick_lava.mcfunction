# decrement damage
execute if score #lavaDamage vaporbucket.temp matches 1.. run scoreboard players remove #lavaDamage vaporbucket.temp 1

# give empty bucket and reset damage
execute if score #lavaDamage vaporbucket.temp matches 0 run function vaporbucket:bucket_empty
execute if score #lavaDamage vaporbucket.temp matches 0 run scoreboard players set #lavaDamage vaporbucket.temp 30

execute at @s if score #lavaDamage vaporbucket.temp matches ..5 run function vaporbucket:bucket_low_warning_lava

particle minecraft:smoke ~ ~1 ~ 0.1 0.25 0.1 0.02 2

scoreboard players set #lavaTicked vaporbucket.temp 1
