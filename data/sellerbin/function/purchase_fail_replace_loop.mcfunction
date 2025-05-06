$item replace entity @s container.$(Slot) with air
data remove storage sellerbin:temp Slots[-1]
function sellerbin:purchase_normal_replace_loop with storage sellerbin:temp Slots[-1]