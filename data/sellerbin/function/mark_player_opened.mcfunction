# Start raycast (maximum distance of 5 blocks)
scoreboard players set #distance sellerbin.temp 0
execute anchored eyes positioned ^ ^ ^ run function sellerbin:raycast

# reset the score
scoreboard players set @s sellerbin.open_barrel 0