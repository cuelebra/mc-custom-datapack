# Initialize check score
scoreboard players set #should_break warptomes.math 0

# Check each portal marker if its potted lily was broken
execute unless block ~ ~1 ~ minecraft:potted_lily_of_the_valley run scoreboard players set #should_break warptomes.math 1
execute unless block ~ ~ ~ minecraft:cherry_log run scoreboard players set #should_break warptomes.math 1

# Read runeString from self's NBT data
data modify storage warptomes:temp runeString set from entity @s data.runeString
# Check if runeString exists in the registry storage
function warptomes:linking/check_rune_string with storage warptomes:temp

# Handle the result - if array was empty or no match found
execute if score #exists warptomes.math matches 0 run scoreboard players set #should_break warptomes.math 1

# Break self only if any check failed
execute if score #should_break warptomes.math matches 1 run function warptomes:linking/break_self

