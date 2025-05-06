# Set up scoreboards
scoreboard objectives add sellerbin.open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add sellerbin.temp dummy
scoreboard objectives add sellerbin.barrel_x dummy
scoreboard objectives add sellerbin.barrel_y dummy
scoreboard objectives add sellerbin.barrel_z dummy
scoreboard objectives add sellerbin.score dummy

# Remove the using_seller_barrel tag from all players
tag @a[tag=using_seller_barrel] remove using_seller_barrel

# Reset open_barrel score for all players
scoreboard players reset @a[scores={sellerbin.open_barrel=1..}] sellerbin.open_barrel

scoreboard objectives add dead deathCount
scoreboard players set @a dead 0