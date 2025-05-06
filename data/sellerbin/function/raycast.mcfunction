# Check for our special barrel and store position
execute if block ~ ~ ~ barrel{CustomName:'"Barrel Lombard"'} run function sellerbin:mark_barrel_pos

# Increment distance and continue if we haven't found a barrel
scoreboard players add #distance sellerbin.temp 1
execute if score #distance sellerbin.temp matches ..50 unless block ~ ~ ~ barrel positioned ^ ^ ^0.1 run function sellerbin:raycast