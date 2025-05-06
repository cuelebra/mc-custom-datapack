# Convert random numbers (0-15) to rune symbols in storage
# Rune 1
execute if score #rune1 warptomes.math matches 0 run data modify storage warptomes:temp runeDisplay set value ["✧"]
execute if score #rune1 warptomes.math matches 1 run data modify storage warptomes:temp runeDisplay set value ["❉"]
execute if score #rune1 warptomes.math matches 2 run data modify storage warptomes:temp runeDisplay set value ["✺"]
execute if score #rune1 warptomes.math matches 3 run data modify storage warptomes:temp runeDisplay set value ["❋"]
execute if score #rune1 warptomes.math matches 4 run data modify storage warptomes:temp runeDisplay set value ["✤"]
execute if score #rune1 warptomes.math matches 5 run data modify storage warptomes:temp runeDisplay set value ["❆"]
execute if score #rune1 warptomes.math matches 6 run data modify storage warptomes:temp runeDisplay set value ["✿"]
execute if score #rune1 warptomes.math matches 7 run data modify storage warptomes:temp runeDisplay set value ["❀"]
execute if score #rune1 warptomes.math matches 8 run data modify storage warptomes:temp runeDisplay set value ["☀"]
execute if score #rune1 warptomes.math matches 9 run data modify storage warptomes:temp runeDisplay set value ["☽"]
execute if score #rune1 warptomes.math matches 10 run data modify storage warptomes:temp runeDisplay set value ["⚡"]
execute if score #rune1 warptomes.math matches 11 run data modify storage warptomes:temp runeDisplay set value ["⭐"]
execute if score #rune1 warptomes.math matches 12 run data modify storage warptomes:temp runeDisplay set value ["❤"]
execute if score #rune1 warptomes.math matches 13 run data modify storage warptomes:temp runeDisplay set value ["⚘"]
execute if score #rune1 warptomes.math matches 14 run data modify storage warptomes:temp runeDisplay set value ["✦"]
execute if score #rune1 warptomes.math matches 15 run data modify storage warptomes:temp runeDisplay set value ["✵"]

# Append other runes to the array
execute if score #rune2 warptomes.math matches 0 run data modify storage warptomes:temp runeDisplay append value "✧"
# ... (repeat for all values 1-15 for rune2)

execute if score #rune3 warptomes.math matches 0 run data modify storage warptomes:temp runeDisplay append value "✧"
# ... (repeat for all values 1-15 for rune3)

execute if score #rune4 warptomes.math matches 0 run data modify storage warptomes:temp runeDisplay append value "✧"
# ... (repeat for all values 1-15 for rune4)