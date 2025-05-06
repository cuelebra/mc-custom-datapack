# Store the item data
data modify storage sellerbin:temp Item set from entity @s Inventory[{components:{"minecraft:custom_data":{isSellerBinPlaceholder:1b}}}]

# count player's gold
execute as @s store result score #temp_balance sellerbin.temp run clear @s minecraft:amethyst_shard 0

# Check if player has enough balance
execute if score #temp_balance sellerbin.temp >= #price sellerbin.temp run function sellerbin:purchase_success
execute unless score #temp_balance sellerbin.temp >= #price sellerbin.temp run function sellerbin:purchase_fail

# clean up 
data remove storage sellerbin:temp Item