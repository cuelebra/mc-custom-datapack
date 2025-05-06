# decrement damage
scoreboard players remove #damage vaporbucket.temp 1

execute at @p if score #damage vaporbucket.temp matches ..5 run function vaporbucket:bucket_low

# # write to storage
# execute store result storage vaporbucket:data newDamage int 1 run scoreboard players get #damage vaporbucket.temp

# # replace with new damage
# function vaporbucket:bucket_replace_new_damage with storage vaporbucket:data