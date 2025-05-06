
# Reset prices and multipliers
scoreboard players set #itemPrice sellerbin.temp 1
scoreboard players set #typeMultiplier sellerbin.temp 1
scoreboard players set #materialMultiplier sellerbin.temp 1

# Get item count (debug the NBT data first)
#tellraw @a ["Checking item: ", {"nbt":"Item","storage":"sellerbin:temp"}]
execute store result score #count sellerbin.temp run data get storage sellerbin:temp Item.count
#tellraw @a ["Count is: ", {"score":{"name":"#count","objective":"sellerbin.temp"}}]

# Add enchantment price to base price
function sellerbin:check_item_enchantment
#tellraw @a ["After enchants: ", {"score":{"name":"#itemPrice","objective":"sellerbin.temp"}}]

# Add type multiplier
function sellerbin:check_item_type
#tellraw @a ["Special multiplier: ", {"score":{"name":"#specialMultiplier","objective":"sellerbin.temp"}}]

# Add material multiplier
function sellerbin:check_item_material
#tellraw @a ["Material multiplier: ", {"score":{"name":"#materialMultiplier","objective":"sellerbin.temp"}}]

# Multiply by type multiplier
scoreboard players operation #itemPrice sellerbin.temp *= #typeMultiplier sellerbin.temp

# Multiply by material multiplier
scoreboard players operation #itemPrice sellerbin.temp *= #materialMultiplier sellerbin.temp

# Multiply by count
scoreboard players operation #itemPrice sellerbin.temp *= #count sellerbin.temp
#tellraw @a ["Final item price: ", {"score":{"name":"#itemPrice","objective":"sellerbin.temp"}}]

# Add price to total
scoreboard players operation #totalPrice sellerbin.temp += #itemPrice sellerbin.temp
#tellraw @a ["Total price now: ", {"score":{"name":"#totalPrice","objective":"sellerbin.temp"}}]
