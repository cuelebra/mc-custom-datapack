tag @s add using_seller_barrel

# Create a temporary marker at the barrel's position
execute align xyz run summon marker ~ ~ ~ {Tags:["raycast"]}

# Store barrel position in scoreboard (using the raycast's current position)
data modify storage sellerbin:data barrel_pos.x set from entity @e[type=marker,tag=raycast,limit=1] Pos[0]
data modify storage sellerbin:data barrel_pos.y set from entity @e[type=marker,tag=raycast,limit=1] Pos[1]
data modify storage sellerbin:data barrel_pos.z set from entity @e[type=marker,tag=raycast,limit=1] Pos[2]

# Remove the temporary marker
execute run kill @e[type=marker,tag=raycast,limit=1]

# Play sound
playsound minecraft:block.large_amethyst_bud.place master @s ~ ~ ~ 1 0.5

# Create invisible armor stand for predicates
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b,Silent:1b, Marker:1b, Tags:["sellerbin_predicate"]}
