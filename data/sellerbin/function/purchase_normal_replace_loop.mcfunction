$item modify entity @s container.$(Slot) sellerbin:purchase_normal
data remove storage sellerbin:temp Slots[-1]
function sellerbin:purchase_normal_replace_loop with storage sellerbin:temp Slots[-1]