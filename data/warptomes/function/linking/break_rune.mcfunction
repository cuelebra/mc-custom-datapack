# Create a new empty array for filtered results
data modify storage warptomes:temp filteredStrings set value []

# Copy the original array to work with
data modify storage warptomes:temp workingStrings set from storage warptomes:store runeStrings

# Filter out the matching string (runs as many times as there are elements)
execute store result score #remaining warptomes.math run data get storage warptomes:temp workingStrings
execute if score #remaining warptomes.math matches 1.. run function warptomes:linking/filter_rune_strings

# Save the filtered array back to the registry
data modify storage warptomes:store runeStrings set from storage warptomes:temp filteredStrings
