# take one ink away
clear @s black_dye[custom_data~{isPortalInk:true}] 1

# Store coordinates in storage
data modify storage ledger:store x set from entity @s Pos[0]
data modify storage ledger:store y set from entity @s Pos[1]
data modify storage ledger:store z set from entity @s Pos[2]

# Round coordinates
execute store result score #x ledger.temp run data get storage ledger:store x 1
execute store result score #y ledger.temp run data get storage ledger:store y 1
execute store result score #z ledger.temp run data get storage ledger:store z 1

# Store back rounded values
execute store result storage ledger:store x double 1 run scoreboard players get #x ledger.temp
execute store result storage ledger:store y double 1 run scoreboard players get #y ledger.temp
execute store result storage ledger:store z double 1 run scoreboard players get #z ledger.temp

# Get book pages
data remove storage ledger:store pages
data remove storage ledger:store pagesIds
data modify storage ledger:store pages set from entity @s Inventory[{Slot:-106b}].components.minecraft:written_book_content.pages
data modify storage ledger:store pagesIds set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.pagesIds

# Generate Rune
function ledger:rune_generate

# Generate new page id (increment scoreboard by 1)
scoreboard players add #next_page_id ledger.temp 1
execute store result storage ledger:store next_page_id long 1 run scoreboard players get #next_page_id ledger.temp

# Add new page to pages
function ledger:generate_page_with_id with storage ledger:store

# Take away old book
item replace entity @s weapon.offhand with air

# Give new book
function ledger:give_book_with_pages with storage ledger:store

playsound minecraft:block.enchantment_table.use
playsound minecraft:item.book.page_turn
playsound minecraft:ui.loom.take_result

