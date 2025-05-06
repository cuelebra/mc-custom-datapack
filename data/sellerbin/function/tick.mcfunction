# Tag players who open barrel
execute as @a[scores={sellerbin.open_barrel=1..}] at @s run function sellerbin:mark_player_opened

# Check for barrel closure using stored coordinates
execute as @a[tag=using_seller_barrel] run function sellerbin:check_barrel_state

# Reset score for those using the barrel
execute as @a[tag=using_seller_barrel] at @s if score @s sellerbin.open_barrel matches 1.. run scoreboard players set @s sellerbin.open_barrel 0

# Check for deaths
function sellerbin:check_deaths
