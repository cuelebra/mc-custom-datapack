# read pageId from objective
execute store result storage ledger:store id int 1 run scoreboard players get @s ledger.trigger_remove

# reset trigger
scoreboard players reset @s ledger.trigger_remove
scoreboard players enable @s ledger.trigger_remove

function ledger:remove_with_id with storage ledger:store