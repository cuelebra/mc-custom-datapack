# Spawn as batches
execute if score #expAmount sellerbin.temp matches 3000.. run summon experience_orb ~ ~ ~ {Value:3000}
execute if score #expAmount sellerbin.temp matches 3000.. run scoreboard players remove #expAmount sellerbin.temp 3000

execute if score #expAmount sellerbin.temp matches 2000..2999 run summon experience_orb ~ ~ ~ {Value:2000}
execute if score #expAmount sellerbin.temp matches 2000..2999 run scoreboard players remove #expAmount sellerbin.temp 2000

execute if score #expAmount sellerbin.temp matches 1000..1999 run summon experience_orb ~ ~ ~ {Value:1000}
execute if score #expAmount sellerbin.temp matches 1000..1999 run scoreboard players remove #expAmount sellerbin.temp 1000

execute if score #expAmount sellerbin.temp matches 500..999 run summon experience_orb ~ ~ ~ {Value:500}
execute if score #expAmount sellerbin.temp matches 500..999 run scoreboard players remove #expAmount sellerbin.temp 500

execute if score #expAmount sellerbin.temp matches 50..499 run summon experience_orb ~ ~ ~ {Value:50}
execute if score #expAmount sellerbin.temp matches 50..499 run scoreboard players remove #expAmount sellerbin.temp 50

execute if score #expAmount sellerbin.temp matches 25..49 run summon experience_orb ~ ~ ~ {Value:25}
execute if score #expAmount sellerbin.temp matches 25..49 run scoreboard players remove #expAmount sellerbin.temp 25

execute if score #expAmount sellerbin.temp matches 10..24 run summon experience_orb ~ ~ ~ {Value:10}
execute if score #expAmount sellerbin.temp matches 10..24 run scoreboard players remove #expAmount sellerbin.temp 10

execute if score #expAmount sellerbin.temp matches 5..9 run summon experience_orb ~ ~ ~ {Value:5}
execute if score #expAmount sellerbin.temp matches 5..9 run scoreboard players remove #expAmount sellerbin.temp 5

execute if score #expAmount sellerbin.temp matches 1..4 run summon experience_orb ~ ~ ~ {Value:1}
execute if score #expAmount sellerbin.temp matches 1..4 run scoreboard players remove #expAmount sellerbin.temp 1

# Continue if there's more exp to spawn
execute if score #expAmount sellerbin.temp matches 1.. run function sellerbin:spawn_exp_batch