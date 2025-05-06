function warptomes:start_use_item_cooldown

title @s actionbar "Rememberance of home..."

function warptomes:increment_pair_id

execute at @s run particle minecraft:dust_plume ~ ~1 ~ 0.5 1 0.5 0.5 10
execute at @s run playsound minecraft:entity.breeze.deflect master @p

# Store coordinates in storage
execute as @s run data modify storage warptomes:store home_destX set from entity @s Pos[0]
execute as @s run data modify storage warptomes:store home_destY set from entity @s Pos[1]
execute as @s run data modify storage warptomes:store home_destZ set from entity @s Pos[2]
# rotation
execute as @s run data modify storage warptomes:store home_destRotation set from entity @s Rotation[0]
# dimension
execute as @s run data modify storage warptomes:store home_destDimension set from entity @s Dimension
