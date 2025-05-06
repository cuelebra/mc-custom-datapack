# read pageId from objective
execute store result storage ledger:store id int 1 run scoreboard players get @s ledger.trigger_tp

# reset trigger
scoreboard players reset @s ledger.trigger_tp
scoreboard players enable @s ledger.trigger_tp

execute at @s unless predicate ledger:is_in_nether run title @s actionbar {"text":"The Ledger holds no power in the mortal realm...","color":"white"}
execute at @s unless predicate ledger:is_in_nether run return 0

function ledger:tp_with_id with storage ledger:store
