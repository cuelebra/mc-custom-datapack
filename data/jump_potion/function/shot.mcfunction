# function example:shot
data modify entity @s Owner set from entity @a[tag=this,limit=1] UUID
data modify entity @s acceleration_power set value 0.1d
tag @s add this
data modify entity @e[type=wind_charge,tag=this,limit=1] Motion set from entity @s Pos
tag @s remove this