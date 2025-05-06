# Reset the total price
scoreboard players set #totalPrice sellerbin.temp 0

# Store barrel contents into temp storage
data modify storage sellerbin:temp Items set from block ~ ~ ~ Items

# Process each slot
execute if data storage sellerbin:temp Items[0] run function sellerbin:process_items

# Spawn reward
execute if score #totalPrice sellerbin.temp matches 1.. run function sellerbin:spawn_reward

# Reset barrel contents
function sellerbin:reset_barrel_contents

# Check purchases
function sellerbin:check_purchases