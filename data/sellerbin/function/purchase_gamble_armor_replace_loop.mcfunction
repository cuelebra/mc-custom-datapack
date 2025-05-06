execute store result score #rollUnique sellerbin.temp if predicate sellerbin:10_percent

$execute if score #rollUnique sellerbin.temp matches 1 run loot replace entity @s container.$(Slot) loot sellerbin:gamble_armor_unique
$execute if score #rollUnique sellerbin.temp matches 0 run loot replace entity @s container.$(Slot) loot sellerbin:gamble_armor

data remove storage sellerbin:temp Slots[-1]
function sellerbin:purchase_gamble_armor_replace_loop with storage sellerbin:temp Slots[-1]