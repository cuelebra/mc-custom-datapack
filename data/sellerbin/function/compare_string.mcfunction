
# Compare function
execute store success score different sellerbin.score run data modify storage sellerbin:temp to_compare set from storage sellerbin:temp original
execute if score different sellerbin.score matches 0 run data modify storage sellerbin:temp matches set value 1
execute if score different sellerbin.score matches 1 run data modify storage sellerbin:temp matches set value 0