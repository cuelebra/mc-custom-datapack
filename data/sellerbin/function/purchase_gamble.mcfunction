data modify storage sellerbin:temp Slots set value []
data modify storage sellerbin:temp Slots append from entity @s Inventory[{components:{"minecraft:custom_data":{isSellerBinPlaceholder:1b}}}]

function sellerbin:purchase_gamble_replace_loop with storage sellerbin:temp Slots[-1]