execute unless block ~ ~ ~ #minecraft:air run function warptomes:linking/hit_block
# Set success to 1 to prevent further raycasting
execute unless block ~ ~ ~ #minecraft:air run scoreboard players set @s ray_success 1

scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function warptomes:raycast/ray
