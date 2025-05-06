# Get current time and day
execute store result score #current warptomes.math run time query daytime
execute store result score #currentday warptomes.math run time query day

# Get last used day
scoreboard players operation #lastday warptomes.math = @s warptomes.lastday

# If it's a new day or no previous use, allow teleport
execute if score #currentday warptomes.math > #lastday warptomes.math run scoreboard players set #success warptomes.math 1
execute unless score @s warptomes.lastday matches -2147483648..2147483647 run scoreboard players set #success warptomes.math 1

# If still on cooldown, send message to player
execute unless score #success warptomes.math matches 1 run title @s actionbar [{"text":"✧ ","color":"light_purple"},{"text":"The Ley Line's energy is exhausted for the day","color":"dark_purple"},{"text":" ✧\n"},{"text":"Perhaps the twisted growths of the crimson realm could rekindle its power...","color":"gray"},{"text":" ✧","color":"light_purple"}]