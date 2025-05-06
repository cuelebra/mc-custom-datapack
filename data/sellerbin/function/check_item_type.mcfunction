
# tools
execute as @e[tag=sellerbin_predicate] if predicate sellerbin:tools run scoreboard players set #typeMultiplier sellerbin.temp 8

# armor
execute as @e[tag=sellerbin_predicate] if predicate sellerbin:armors run scoreboard players set #typeMultiplier sellerbin.temp 8

# Ingots
execute as @e[tag=sellerbin_predicate] if predicate sellerbin:ingots run scoreboard players set #typeMultiplier sellerbin.temp 2

# heads
execute as @e[tag=sellerbin_predicate] if predicate sellerbin:heads run scoreboard players set #typeMultiplier sellerbin.temp 64

# Some misc items
execute if data storage sellerbin:temp Item{id:"minecraft:obsidian"} run scoreboard players set #typeMultiplier sellerbin.temp 8
execute if data storage sellerbin:temp Item{id:"minecraft:crying_obsidian"} run scoreboard players set #typeMultiplier sellerbin.temp 128

# Valuable mob drops
execute if data storage sellerbin:temp Item{id:"minecraft:shulker_shell"} run scoreboard players set #typeMultiplier sellerbin.temp 64
execute if data storage sellerbin:temp Item{id:"minecraft:phantom_membrane"} run scoreboard players set #typeMultiplier sellerbin.temp 64
execute if data storage sellerbin:temp Item{id:"minecraft:ghast_tear"} run scoreboard players set #typeMultiplier sellerbin.temp 64

# Rare exploration items
execute if data storage sellerbin:temp Item{id:"minecraft:nautilus_shell"} run scoreboard players set #typeMultiplier sellerbin.temp 64
execute if data storage sellerbin:temp Item{id:"minecraft:totem_of_undying"} run scoreboard players set #typeMultiplier sellerbin.temp 128
execute if data storage sellerbin:temp Item{id:"minecraft:trident"} run scoreboard players set #typeMultiplier sellerbin.temp 128
execute if data storage sellerbin:temp Item{id:"minecraft:heart_of_the_sea"} run scoreboard players set #typeMultiplier sellerbin.temp 512

# Crazy
execute if data storage sellerbin:temp Item{id:"minecraft:nether_star"} run scoreboard players set #typeMultiplier sellerbin.temp 5120
execute if data storage sellerbin:temp Item{id:"minecraft:elytra"} run scoreboard players set #typeMultiplier sellerbin.temp 5120
execute if data storage sellerbin:temp Item{id:"minecraft:end_crystal"} run scoreboard players set #typeMultiplier sellerbin.temp 1280
execute if data storage sellerbin:temp Item{id:"minecraft:conduit"} run scoreboard players set #typeMultiplier sellerbin.temp 640