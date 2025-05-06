# Extract substring to check, and compare to material
# e.g. check for gold - extract 4 characters from start, check if they are "gold"

# Set temp string to item name minus "minecraft:"
data modify storage sellerbin:temp original_string set from storage sellerbin:temp Item.id

# minecraft: (10 chars)
#
#
# Add some random possible materials for mods and various other items
#
#
#
# Obsidian (8 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 18
data modify storage sellerbin:temp original set value "obsidian"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Emerald (7 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 17
data modify storage sellerbin:temp original set value "emerald"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# Lapis (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "lapis"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# Redstone (8 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 18
data modify storage sellerbin:temp original set value "redstone"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# Glowstone (9 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 19
data modify storage sellerbin:temp original set value "glowstone"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Sandstone (9 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 19
data modify storage sellerbin:temp original set value "sandstone"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Clay (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "clay"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# Sand (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "sand"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 2

# Gravel (6 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 16
data modify storage sellerbin:temp original set value "gravel"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 2

# Coal (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "coal"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# Flint (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "flint"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Prismarine (10 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 20
data modify storage sellerbin:temp original set value "prismarine"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# end (3 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 13
data modify storage sellerbin:temp original set value "end"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 16

# nether (6 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 16
data modify storage sellerbin:temp original set value "nether"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# blaze (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "blaze"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 16

# slime (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "slime"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# Bone (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "bone"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8


# Dragon (6 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 16
data modify storage sellerbin:temp original set value "dragon"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 64


#
#
#
# Known gear materials
#
#
# Wood (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "wood"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 2

# Stone (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "stone"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 2

# Leather (7 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 17
data modify storage sellerbin:temp original set value "leather"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 4

# Chain (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 15
data modify storage sellerbin:temp original set value "chain"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Copper (6 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 16
data modify storage sellerbin:temp original set value "copper"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Iron (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "iron"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Gold (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 14
data modify storage sellerbin:temp original set value "gold"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 8

# Diamond (7 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 17
data modify storage sellerbin:temp original set value "diamond"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# Netherite (9 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 10 19
data modify storage sellerbin:temp original set value "netherite"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 64

# Some mods
#
#
# armoroftheages: (15 chars)
#
# Anubis (6 chars)

data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 21
data modify storage sellerbin:temp original set value "anubis"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# Holy (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 19
data modify storage sellerbin:temp original set value "holy"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# o_yoroi (7 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 22
data modify storage sellerbin:temp original set value "o_yoroi"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# centurion (9 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 24
data modify storage sellerbin:temp original set value "centurion"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# iron_plate (10 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 25
data modify storage sellerbin:temp original set value "iron_plate"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# japan (5 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 20
data modify storage sellerbin:temp original set value "japan"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# pharaoh (7 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 22
data modify storage sellerbin:temp original set value "pharaoh"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# quet (4 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 19
data modify storage sellerbin:temp original set value "quet"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32

# raijin (6 chars)
data modify storage sellerbin:temp to_compare set string storage sellerbin:temp original_string 15 21
data modify storage sellerbin:temp original set value "raijin"
function sellerbin:compare_string
execute if score different sellerbin.score matches 0 run scoreboard players set #materialMultiplier sellerbin.temp 32
