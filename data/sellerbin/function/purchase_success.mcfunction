scoreboard players set #isGamble sellerbin.temp 0
scoreboard players set #isUnbindingTome sellerbin.temp 0

execute store success score #isUnbindingTome sellerbin.temp run data get storage sellerbin:temp Item{components:{"minecraft:custom_data":{isUnbindingTome:1b}}}

execute store success score #isGamble sellerbin.temp run data get storage sellerbin:temp Item{components:{"minecraft:custom_data":{isGamble:true}}}

execute if score #isGamble sellerbin.temp matches 1 run function sellerbin:purchase_gamble

execute if score #isUnbindingTome sellerbin.temp matches 1 run function sellerbin:purchase_unbinding

execute unless score #isGamble sellerbin.temp matches 1 unless score #isUnbindingTome sellerbin.temp matches 1 run function sellerbin:purchase_normal

# Subtract price from player's balance
data modify storage sellerbin:temp Price set from storage sellerbin:temp Item.components."minecraft:custom_data".price
function sellerbin:purchase_subtract_price with storage sellerbin:temp

data remove storage sellerbin:temp Price

# sound
playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 1.5
playsound minecraft:block.large_amethyst_bud.break master @s ~ ~ ~ 1 2
playsound minecraft:block.large_amethyst_bud.break master @s ~ ~ ~ 1 2

title @s actionbar ["Purchased for ", {"score":{"name":"#price","objective":"sellerbin.temp"}}, "₤"]
