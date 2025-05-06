data modify storage ledger:store page set from storage ledger:store filtered_pages[0]
data modify storage ledger:store pageId set from storage ledger:store filtered_pagesIds[0]

# Try to match the ID from the parsed object
data modify storage ledger:store thisPageId set from storage ledger:store pageId.id
execute store success score #match ledger.temp run data modify storage ledger:store thisPageId set from storage ledger:store pageIdToCheck

# If ID doesn't match (success = 1), keep the element
execute if score #match ledger.temp matches 1 run data modify storage ledger:store pages append from storage ledger:store page
execute if score #match ledger.temp matches 1 run data modify storage ledger:store pagesIds append from storage ledger:store pageId

# Remove the processed element
data remove storage ledger:store filtered_pages[0]
data remove storage ledger:store filtered_pagesIds[0]

# Continue loop if there are more elements
execute if data storage ledger:store filtered_pages[0] run function ledger:remove_with_id_loop