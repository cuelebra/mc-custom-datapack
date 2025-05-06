# Make a copy of the current string for comparison
data modify storage warptomes:temp compareString set from storage warptomes:temp workingStrings[0]

# Compare with target (0 if same, 1 if different)
execute store success score #different warptomes.math run data modify storage warptomes:temp compareString set from storage warptomes:temp targetString

# If different (score 1), keep this string
execute if score #different warptomes.math matches 1 run data modify storage warptomes:temp filteredStrings append from storage warptomes:temp workingStrings[0]

# Remove the processed string and continue if there are more
data remove storage warptomes:temp workingStrings[0]
scoreboard players remove #remaining warptomes.math 1
execute if score #remaining warptomes.math matches 1.. run function warptomes:linking/filter_rune_strings