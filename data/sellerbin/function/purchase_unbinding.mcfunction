# remove tome from player's inventory
clear @s minecraft:book[minecraft:custom_data~{isUnbindingTome:1b}]

# go through each armor slot, store the item in a temp variable, clear the slot, and give the item to the player

data modify storage sellerbin:temp UnboundSlots append from entity @s Inventory[{Slot:100b,components:{"minecraft:enchantments":{levels:{"minecraft:binding_curse":1}}}}]
data modify storage sellerbin:temp UnboundSlots append from entity @s Inventory[{Slot:101b,components:{"minecraft:enchantments":{levels:{"minecraft:binding_curse":1}}}}]
data modify storage sellerbin:temp UnboundSlots append from entity @s Inventory[{Slot:102b,components:{"minecraft:enchantments":{levels:{"minecraft:binding_curse":1}}}}]
data modify storage sellerbin:temp UnboundSlots append from entity @s Inventory[{Slot:103b,components:{"minecraft:enchantments":{levels:{"minecraft:binding_curse":1}}}}]

execute at @s run function sellerbin:purchase_unbinding_loop with storage sellerbin:temp UnboundSlots[-1]

execute if items entity @s armor.legs *[minecraft:enchantments~[{binding_curse:1}]] run item replace entity @s armor.legs with air
execute if items entity @s armor.chest *[minecraft:enchantments~[{binding_curse:1}]] run item replace entity @s armor.chest with air
execute if items entity @s armor.head *[minecraft:enchantments~[{binding_curse:1}]] run item replace entity @s armor.head with air
execute if items entity @s armor.feet *[minecraft:enchantments~[{binding_curse:1}]] run item replace entity @s armor.feet with air

# Optional: Add a fancy particle effect!
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 50
playsound minecraft:item.book.page_turn
playsound minecraft:entity.breeze.deflect