# remove the item from the player's inventory
data modify storage sellerbin:temp Slots set value []
data modify storage sellerbin:temp Slots append from entity @s Inventory[{components:{"minecraft:custom_data":{isSellerBinPlaceholder:1b}}}]
function sellerbin:purchase_fail_replace_loop with storage sellerbin:temp Slots[-1]


title @s actionbar ["Need ", {"score":{"name":"#price","objective":"sellerbin.temp"}}, "₤ for that!"]


# sound
playsound minecraft:block.anvil.fall master @s ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.8 2