# Get the first item
data modify storage sellerbin:temp Item set from storage sellerbin:temp Items[0]

# Put the item into hands slot for predicate checks   
data modify entity @e[tag=sellerbin_predicate,limit=1] HandItems[0] set from storage sellerbin:temp Item

# If there's an item that isn't our custom purchase placeholder item, handle sale of it
execute as @e[tag=sellerbin_predicate] unless predicate sellerbin:placeholder run function sellerbin:check_item

# Remove the item from hands slot
data modify entity @e[tag=sellerbin_predicate,limit=1] HandItems set value [{},{}]

# Remove the processed item
data remove storage sellerbin:temp Items[0]

# Continue if there are more items
execute if data storage sellerbin:temp Items[0] run function sellerbin:process_items