
# Remove the tag
tag @s remove using_seller_barrel

# Remove the armor stand
execute if entity @e[tag=sellerbin_predicate] run kill @e[tag=sellerbin_predicate]

# title @s actionbar ["Come back soon!"]
