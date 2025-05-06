# Get player's current balance (in experience points)
execute store result score #temp_balance sellerbin.temp run xp query @s levels

# Store placeholder item data if found
execute store success score #found sellerbin.temp run data get entity @s Inventory[{components:{"minecraft:custom_data":{isSellerBinPlaceholder:1b}}}]

execute if score #found sellerbin.temp matches 1.. store result score #price sellerbin.temp run data get entity @s Inventory[{components:{"minecraft:custom_data":{isSellerBinPlaceholder:1b}}}].components."minecraft:custom_data".price

# Process purchase if item found
execute if score #found sellerbin.temp matches 1.. run function sellerbin:process_purchase

# Reset the found flag
scoreboard players set #found sellerbin.temp 0
