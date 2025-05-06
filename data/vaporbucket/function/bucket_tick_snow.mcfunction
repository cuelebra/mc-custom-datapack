# decrement damage
execute if score #snowDamage vaporbucket.temp matches 1.. run scoreboard players remove #snowDamage vaporbucket.temp 1

# give empty bucket and reset damage
execute if score #snowDamage vaporbucket.temp matches 0 run function vaporbucket:bucket_empty
execute if score #snowDamage vaporbucket.temp matches 0 run scoreboard players set #snowDamage vaporbucket.temp 30

execute at @s if score #snowDamage vaporbucket.temp matches ..5 run function vaporbucket:bucket_low_warning_snow

particle minecraft:snowflake ~ ~1 ~ 0.1 0.25 0.1 0.02 2

scoreboard players set #snowTicked vaporbucket.temp 1

