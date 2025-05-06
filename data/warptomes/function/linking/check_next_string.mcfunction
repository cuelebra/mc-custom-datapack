# Make a temporary copy for comparison
data modify storage warptomes:temp tempString set from storage warptomes:temp checkingStrings[0]

# Compare the strings (0 if same, 1 if different)
execute store success score #matches warptomes.math run data modify storage warptomes:temp tempString set from storage warptomes:temp compareString

# If strings match (#matches is 0), we found it!
execute if score #matches warptomes.math matches 0 run scoreboard players set #exists warptomes.math 1

# If no match yet, continue checking
execute if score #exists warptomes.math matches 0 run data remove storage warptomes:temp checkingStrings[0]
execute if score #exists warptomes.math matches 0 if data storage warptomes:temp checkingStrings[] run function warptomes:linking/check_next_string
