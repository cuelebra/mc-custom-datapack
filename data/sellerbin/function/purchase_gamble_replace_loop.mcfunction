$loot replace entity @s container.$(Slot) loot sellerbin:gamble

data remove storage sellerbin:temp Slots[-1]
function sellerbin:purchase_gamble_replace_loop with storage sellerbin:temp Slots[-1]