# When looking South (-45 to 45)
execute if score #rotation warptomes.math matches -45..45 run tp @s ~ ~ ~-1 0 15

# When looking East (-135 to -45)
execute if score #rotation warptomes.math matches -135..-45 run tp @s ~-1 ~ ~ -90 15

# When looking North (-135 to -180, or 135 to 180)
execute if score #rotation warptomes.math matches -180..-135 run tp @s ~ ~ ~1 180 15
execute if score #rotation warptomes.math matches 135..180 run tp @s ~ ~ ~1 180 15

# When looking West (45 to 135)
execute if score #rotation warptomes.math matches 45..135 run tp @s ~1 ~ ~ 90 15
