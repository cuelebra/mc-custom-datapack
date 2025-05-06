
# Generate random runes and convert to symbols
execute store result score #rune1 ledger.temp run random value 0..15
execute store result score #rune2 ledger.temp run random value 0..15
execute store result score #rune3 ledger.temp run random value 0..15
execute store result score #rune4 ledger.temp run random value 0..15
execute store result score #rune5 ledger.temp run random value 0..15
execute store result score #rune6 ledger.temp run random value 0..15

# Convert random numbers (0-15) to rune symbols in storage
# Rune 1
execute if score #rune1 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune1 set value "Ko"
execute if score #rune1 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune1 set value "Fu"
execute if score #rune1 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune1 set value "Ha"
execute if score #rune1 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune1 set value "Ho"
execute if score #rune1 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune1 set value "Mi"
execute if score #rune1 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune1 set value "Nu"
execute if score #rune1 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune1 set value "Me"
execute if score #rune1 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune1 set value "Mo"
execute if score #rune1 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune1 set value "Ka"
execute if score #rune1 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune1 set value "Ku"
execute if score #rune1 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune1 set value "Ki"
execute if score #rune1 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune1 set value "Tsu"
execute if score #rune1 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune1 set value "Shi"
execute if score #rune1 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune1 set value "Shu"
execute if score #rune1 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune1 set value "Ba"
execute if score #rune1 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune1 set value "Chi"

# Rune 2
execute if score #rune2 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune2 set value "hi"
execute if score #rune2 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune2 set value "ri"
execute if score #rune2 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune2 set value "ru"
execute if score #rune2 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune2 set value "ri"
execute if score #rune2 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune2 set value "re"
execute if score #rune2 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune2 set value "fu"
execute if score #rune2 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune2 set value "ko"
execute if score #rune2 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune2 set value "ku"
execute if score #rune2 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune2 set value "ki"
execute if score #rune2 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune2 set value "ke"
execute if score #rune2 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune2 set value "ta"
execute if score #rune2 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune2 set value "to"
execute if score #rune2 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune2 set value "tsu"
execute if score #rune2 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune2 set value "chi"
execute if score #rune2 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune2 set value "te"
execute if score #rune2 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune2 set value "ha"

# Rune 3
execute if score #rune3 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune3 set value "hi"
execute if score #rune3 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune3 set value "ri"
execute if score #rune3 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune3 set value "ru"
execute if score #rune3 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune3 set value "re"
execute if score #rune3 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune3 set value "ka"
execute if score #rune3 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune3 set value "ko"
execute if score #rune3 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune3 set value "ku"
execute if score #rune3 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune3 set value "ki"
execute if score #rune3 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune3 set value "ke"
execute if score #rune3 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune3 set value "ta"
execute if score #rune3 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune3 set value "to"
execute if score #rune3 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune3 set value "tsu"
execute if score #rune3 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune3 set value "fu"
execute if score #rune3 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune3 set value "ma"
execute if score #rune3 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune3 set value "ne"
execute if score #rune3 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune3 set value "ba"

# Rune 4
execute if score #rune4 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune4 set value "hi"
execute if score #rune4 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune4 set value "ri"
execute if score #rune4 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune4 set value "ru"
execute if score #rune4 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune4 set value "re"
execute if score #rune4 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune4 set value "ka"
execute if score #rune4 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune4 set value "ko"
execute if score #rune4 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune4 set value "ku"
execute if score #rune4 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune4 set value "ki"
execute if score #rune4 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune4 set value "ke"
execute if score #rune4 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune4 set value "ta"
execute if score #rune4 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune4 set value "to"
execute if score #rune4 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune4 set value "tsu"
execute if score #rune4 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune4 set value "fu"
execute if score #rune4 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune4 set value "ma"
execute if score #rune4 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune4 set value "ma"
execute if score #rune4 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune4 set value "ne"

# Rune 5
execute if score #rune5 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune5 set value "hi"
execute if score #rune5 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune5 set value "ri"
execute if score #rune5 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune5 set value "ru"
execute if score #rune5 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune5 set value "de"
execute if score #rune5 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune5 set value "ka"
execute if score #rune5 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune5 set value "ko"
execute if score #rune5 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune5 set value "ku"
execute if score #rune5 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune5 set value "ki"
execute if score #rune5 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune5 set value "ke"
execute if score #rune5 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune5 set value "ta"
execute if score #rune5 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune5 set value "to"
execute if score #rune5 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune5 set value "tsu"
execute if score #rune5 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune5 set value "fu"
execute if score #rune5 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune5 set value "ma"
execute if score #rune5 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune5 set value "ne"
execute if score #rune5 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune5 set value "ba"

# Rune 6
execute if score #rune6 ledger.temp matches 0 run data modify storage ledger:store runeSequence.rune6 set value "n"
execute if score #rune6 ledger.temp matches 1 run data modify storage ledger:store runeSequence.rune6 set value "su"
execute if score #rune6 ledger.temp matches 2 run data modify storage ledger:store runeSequence.rune6 set value "ru"
execute if score #rune6 ledger.temp matches 3 run data modify storage ledger:store runeSequence.rune6 set value "re"
execute if score #rune6 ledger.temp matches 4 run data modify storage ledger:store runeSequence.rune6 set value "ka"
execute if score #rune6 ledger.temp matches 5 run data modify storage ledger:store runeSequence.rune6 set value "ko"
execute if score #rune6 ledger.temp matches 6 run data modify storage ledger:store runeSequence.rune6 set value "ku"
execute if score #rune6 ledger.temp matches 7 run data modify storage ledger:store runeSequence.rune6 set value "mu"
execute if score #rune6 ledger.temp matches 8 run data modify storage ledger:store runeSequence.rune6 set value "ro"
execute if score #rune6 ledger.temp matches 9 run data modify storage ledger:store runeSequence.rune6 set value "mo"
execute if score #rune6 ledger.temp matches 10 run data modify storage ledger:store runeSequence.rune6 set value "ma"
execute if score #rune6 ledger.temp matches 11 run data modify storage ledger:store runeSequence.rune6 set value "ba"
execute if score #rune6 ledger.temp matches 12 run data modify storage ledger:store runeSequence.rune6 set value "chi"
execute if score #rune6 ledger.temp matches 13 run data modify storage ledger:store runeSequence.rune6 set value "ha"
execute if score #rune6 ledger.temp matches 14 run data modify storage ledger:store runeSequence.rune6 set value "ka"
execute if score #rune6 ledger.temp matches 15 run data modify storage ledger:store runeSequence.rune6 set value "ka"

function ledger:rune_join with storage ledger:store runeSequence
data remove storage ledger:store runeSequence
