# Reset temp scores for this player
scoreboard players set #snowTicked vaporbucket.temp 0
scoreboard players set #lavaTicked vaporbucket.temp 0

# check main hand
data modify storage vaporbucket:data CurrentItem set value {}
data modify storage vaporbucket:data CurrentItem set from entity @s SelectedItem
scoreboard players set #isOffhand vaporbucket.temp 0
function vaporbucket:check_item with storage vaporbucket:data

# check offhand
data modify storage vaporbucket:data CurrentItem set value {}
data modify storage vaporbucket:data CurrentItem set from entity @s Inventory[{Slot:-106b}]
scoreboard players set #isOffhand vaporbucket.temp 1
function vaporbucket:check_item with storage vaporbucket:data

# increment snow damage
execute unless score #snowDamage vaporbucket.temp matches 30 unless score #snowTicked vaporbucket.temp matches 1 run function vaporbucket:bucket_increment_snow

# increment lava damage
execute unless score #lavaDamage vaporbucket.temp matches 30 unless score #lavaTicked vaporbucket.temp matches 1 run function vaporbucket:bucket_increment_lava