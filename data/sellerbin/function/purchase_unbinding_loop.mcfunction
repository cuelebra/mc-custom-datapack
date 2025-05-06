$tellraw @s [{"text":"$(Slot)","color":"green"}]
$execute if data entity @s Inventory[{Slot:$(Slot)b}] run summon item ~ ~ ~ {Item:{id:"minecraft:stone"},Tags:["dropped"]}
$data modify entity @e[type=item,tag=dropped,limit=1] Item set from entity @s Inventory[{Slot:$(Slot)b}]
tag @e[type=item,tag=dropped] remove dropped

data remove storage sellerbin:temp UnboundSlots[-1]
function sellerbin:purchase_unbinding_loop with storage sellerbin:temp UnboundSlots[-1]
