data modify storage ledger:store page set from storage ledger:store filtered_pages[0]
data modify storage ledger:store pageId set from storage ledger:store filtered_pagesIds[0]

# Try to match the ID from the parsed object
data modify storage ledger:store thisPageId set from storage ledger:store pageId.id
execute store success score #match ledger.temp run data modify storage ledger:store thisPageId set from storage ledger:store pageIdToCheck

# If ID matches (success = 0), teleport to coordinates
execute if score #match ledger.temp matches 0 run function ledger:teleport_with_coords with storage ledger:store pageId

# Remove the processed element
data remove storage ledger:store filtered_pages[0]
data remove storage ledger:store filtered_pagesIds[0]

# Continue loop if there are more elements
execute if data storage ledger:store filtered_pages[0] run function ledger:tp_with_id_loop