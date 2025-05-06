# read pages from offhand or main hand
scoreboard players set #isOffhand ledger.temp 0
execute if data entity @s Inventory[{Slot:-106b, components: {"minecraft:custom_data":{isPortalLedger: 1b}}}] run scoreboard players set #isOffhand ledger.temp 1

# read book from offhand
execute if score #isOffhand ledger.temp matches 1 run data modify storage ledger:store pages set from entity @s Inventory[{Slot:-106b}].components.minecraft:written_book_content.pages
execute if score #isOffhand ledger.temp matches 1 run data modify storage ledger:store pagesIds set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.pagesIds

# read book from main hand
execute if score #isOffhand ledger.temp matches 0 run data modify storage ledger:store pages set from entity @s SelectedItem.components.minecraft:written_book_content.pages
execute if score #isOffhand ledger.temp matches 0 run data modify storage ledger:store pagesIds set from entity @s SelectedItem.components.minecraft:custom_data.pagesIds

$data modify storage ledger:store pageIdToCheck set value $(id)

# Store the array in a temporary storage for manipulation
data modify storage ledger:store filtered_pages set from storage ledger:store pages
data modify storage ledger:store filtered_pagesIds set from storage ledger:store pagesIds

# Clear the original array
data modify storage ledger:store pages set value []
data modify storage ledger:store pagesIds set value []

# Execute for each element
function ledger:tp_with_id_loop