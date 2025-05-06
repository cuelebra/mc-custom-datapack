scoreboard players set #snowTicked vaporbucket.temp 0
scoreboard players set #lavaTicked vaporbucket.temp 0

# Run checks for each player
execute as @a at @s run function vaporbucket:check_player_buckets

schedule function vaporbucket:tick 20t

