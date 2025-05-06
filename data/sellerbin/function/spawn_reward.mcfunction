data modify storage sellerbin:temp amount set value 0

# Convert price to gold
scoreboard players operation #amount sellerbin.temp += #totalPrice sellerbin.temp
scoreboard players set #multiplier sellerbin.temp 64
scoreboard players operation #amount sellerbin.temp /= #multiplier sellerbin.temp

# set storage amount to #amount
scoreboard players operation $amount sellerbin.temp = #amount sellerbin.temp
execute store result storage sellerbin:temp amount int 1 run scoreboard players get $amount sellerbin.temp

#Messages
execute if score #amount sellerbin.temp matches 0 run title @s actionbar ["Even the worthless has worth... to some."]

execute if score #amount sellerbin.temp matches 1..5 run title @s actionbar ["A modest offering... (", {"score":{"name":"#amount","objective":"sellerbin.temp"}}, "₤)"]

execute if score #amount sellerbin.temp matches 10..20 run title @s actionbar ["Now this... this has potential. (", {"score":{"name":"#amount","objective":"sellerbin.temp"}}, "₤)"]

execute if score #amount sellerbin.temp matches 20..60 run title @s actionbar ["Your generosity will not go unnoticed... (", {"score":{"name":"#amount","objective":"sellerbin.temp"}}, "₤)"]

execute if score #amount sellerbin.temp matches 60.. run title @s actionbar ["Ah... now THIS is what I seek! (", {"score":{"name":"#amount","objective":"sellerbin.temp"}}, "₤)"]

# Visual/Sound feedback
execute if score #amount sellerbin.temp matches 1.. run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1 2
execute if score #amount sellerbin.temp matches 1.. run playsound minecraft:block.large_amethyst_bud.break master @s ~ ~ ~ 1 2
execute if score #amount sellerbin.temp matches 1.. run playsound minecraft:block.medium_amethyst_bud.break master @s ~ ~ ~ 1 2

execute if score #amount sellerbin.temp matches 1.. run particle white_smoke ~ ~1 ~ 0.1 0.1 0.1 0.01 5
execute if score #amount sellerbin.temp matches 1.. run particle minecraft:smoke ~ ~1 ~ 0.2 0.2 0.2 0.01 3

# Spawn gold
execute if score #amount sellerbin.temp matches 1.. run function sellerbin:spawn_reward_gold with storage sellerbin:temp


