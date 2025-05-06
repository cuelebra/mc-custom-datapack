# $runeString is the runeString to check against registry of runeStrings

# Get all runeStrings from registry storage and make a COPY for checking
data modify storage warptomes:temp runeStrings set from storage warptomes:store runeStrings
data modify storage warptomes:temp checkingStrings set from storage warptomes:temp runeStrings

# Initialize our exists score
scoreboard players set #exists warptomes.math 0

# Store the runeString we're checking in a separate storage for comparison
data modify storage warptomes:temp compareString set from storage warptomes:temp runeString

# Only start checking if we have elements to check
execute if data storage warptomes:temp checkingStrings[] run function warptomes:linking/check_next_string