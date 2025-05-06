
# Generate random runes and convert to symbols
execute store result score #rune1 warptomes.math run random value 0..15
execute store result score #rune2 warptomes.math run random value 0..15
execute store result score #rune3 warptomes.math run random value 0..15
execute store result score #rune4 warptomes.math run random value 0..15
execute store result score #rune5 warptomes.math run random value 0..15
execute store result score #rune6 warptomes.math run random value 0..15

# Convert random numbers (0-15) to rune symbols in storage
# Rune 1
execute if score #rune1 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune1 set value "✧"
execute if score #rune1 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune1 set value "❉"
execute if score #rune1 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune1 set value "✺"
execute if score #rune1 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune1 set value "❋"
execute if score #rune1 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune1 set value "✤"
execute if score #rune1 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune1 set value "❆"
execute if score #rune1 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune1 set value "✿"
execute if score #rune1 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune1 set value "❀"
execute if score #rune1 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune1 set value "☀"
execute if score #rune1 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune1 set value "☽"
execute if score #rune1 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune1 set value "⚡"
execute if score #rune1 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune1 set value "⭐"
execute if score #rune1 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune1 set value "❤"
execute if score #rune1 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune1 set value "⚘"
execute if score #rune1 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune1 set value "✦"
execute if score #rune1 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune1 set value "✵"

# Rune 2
execute if score #rune2 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune2 set value "✧"
execute if score #rune2 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune2 set value "❉"
execute if score #rune2 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune2 set value "✺"
execute if score #rune2 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune2 set value "❋"
execute if score #rune2 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune2 set value "✤"
execute if score #rune2 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune2 set value "❆"
execute if score #rune2 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune2 set value "✿"
execute if score #rune2 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune2 set value "❀"
execute if score #rune2 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune2 set value "☀"
execute if score #rune2 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune2 set value "☽"
execute if score #rune2 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune2 set value "⚡"
execute if score #rune2 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune2 set value "⭐"
execute if score #rune2 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune2 set value "❤"
execute if score #rune2 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune2 set value "⚘"
execute if score #rune2 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune2 set value "✦"
execute if score #rune2 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune2 set value "✵"

# Rune 3
execute if score #rune3 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune3 set value "✧"
execute if score #rune3 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune3 set value "❉"
execute if score #rune3 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune3 set value "✺"
execute if score #rune3 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune3 set value "❋"
execute if score #rune3 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune3 set value "✤"
execute if score #rune3 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune3 set value "❆"
execute if score #rune3 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune3 set value "✿"
execute if score #rune3 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune3 set value "❀"
execute if score #rune3 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune3 set value "☀"
execute if score #rune3 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune3 set value "☽"
execute if score #rune3 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune3 set value "⚡"
execute if score #rune3 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune3 set value "⭐"
execute if score #rune3 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune3 set value "❤"
execute if score #rune3 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune3 set value "⚘"
execute if score #rune3 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune3 set value "✦"
execute if score #rune3 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune3 set value "✵"

# Rune 4
execute if score #rune4 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune4 set value "✧"
execute if score #rune4 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune4 set value "❉"
execute if score #rune4 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune4 set value "✺"
execute if score #rune4 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune4 set value "❋"
execute if score #rune4 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune4 set value "✤"
execute if score #rune4 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune4 set value "❆"
execute if score #rune4 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune4 set value "✿"
execute if score #rune4 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune4 set value "❀"
execute if score #rune4 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune4 set value "☀"
execute if score #rune4 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune4 set value "☽"
execute if score #rune4 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune4 set value "⚡"
execute if score #rune4 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune4 set value "⭐"
execute if score #rune4 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune4 set value "❤"
execute if score #rune4 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune4 set value "⚘"
execute if score #rune4 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune4 set value "✦"
execute if score #rune4 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune4 set value "✵"

# Rune 5
execute if score #rune5 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune5 set value "✧"
execute if score #rune5 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune5 set value "❉"
execute if score #rune5 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune5 set value "✺"
execute if score #rune5 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune5 set value "❋"
execute if score #rune5 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune5 set value "✤"
execute if score #rune5 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune5 set value "❆"
execute if score #rune5 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune5 set value "✿"
execute if score #rune5 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune5 set value "❀"
execute if score #rune5 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune5 set value "☀"
execute if score #rune5 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune5 set value "☽"
execute if score #rune5 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune5 set value "⚡"
execute if score #rune5 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune5 set value "⭐"
execute if score #rune5 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune5 set value "❤"
execute if score #rune5 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune5 set value "⚘"
execute if score #rune5 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune5 set value "✦"
execute if score #rune5 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune5 set value "✵"

# Rune 6
execute if score #rune6 warptomes.math matches 0 run data modify storage warptomes:temp runeSequence.rune6 set value "✧"
execute if score #rune6 warptomes.math matches 1 run data modify storage warptomes:temp runeSequence.rune6 set value "❉"
execute if score #rune6 warptomes.math matches 2 run data modify storage warptomes:temp runeSequence.rune6 set value "✺"
execute if score #rune6 warptomes.math matches 3 run data modify storage warptomes:temp runeSequence.rune6 set value "❋"
execute if score #rune6 warptomes.math matches 4 run data modify storage warptomes:temp runeSequence.rune6 set value "✤"
execute if score #rune6 warptomes.math matches 5 run data modify storage warptomes:temp runeSequence.rune6 set value "❆"
execute if score #rune6 warptomes.math matches 6 run data modify storage warptomes:temp runeSequence.rune6 set value "✿"
execute if score #rune6 warptomes.math matches 7 run data modify storage warptomes:temp runeSequence.rune6 set value "❀"
execute if score #rune6 warptomes.math matches 8 run data modify storage warptomes:temp runeSequence.rune6 set value "☀"
execute if score #rune6 warptomes.math matches 9 run data modify storage warptomes:temp runeSequence.rune6 set value "☽"
execute if score #rune6 warptomes.math matches 10 run data modify storage warptomes:temp runeSequence.rune6 set value "⚡"
execute if score #rune6 warptomes.math matches 11 run data modify storage warptomes:temp runeSequence.rune6 set value "⭐"
execute if score #rune6 warptomes.math matches 12 run data modify storage warptomes:temp runeSequence.rune6 set value "❤"
execute if score #rune6 warptomes.math matches 13 run data modify storage warptomes:temp runeSequence.rune6 set value "⚘"
execute if score #rune6 warptomes.math matches 14 run data modify storage warptomes:temp runeSequence.rune6 set value "✦"
execute if score #rune6 warptomes.math matches 15 run data modify storage warptomes:temp runeSequence.rune6 set value "✵"

function warptomes:linking/join_runes with storage warptomes:temp runeSequence
data remove storage warptomes:temp runeSequence
