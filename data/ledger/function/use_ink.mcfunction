execute as @a run advancement revoke @s only ledger:use_ink

# if not in nether predicate, return
execute at @s unless predicate ledger:is_in_nether run title @s actionbar {"text":"The Ink vaporizes in the mortal realm...","color":"white"}
execute at @s unless predicate ledger:is_in_nether run return 0

# cooldown
execute store result score #this ledger.temp run time query gametime
execute if score @s ledger.temp > #this ledger.temp run return 0
execute store result score @s ledger.temp run scoreboard players add #this ledger.temp 15

# check if offhand item is ledger
scoreboard players set #isOffhand ledger.temp 0
execute if data entity @s Inventory[{Slot:-106b, components: {"minecraft:custom_data":{isPortalLedger: 1b}}}] run scoreboard players set #isOffhand ledger.temp 1

# if not ledger, print warning
execute if score #isOffhand ledger.temp matches 0 run title @s actionbar {"text":"Ugh, I need something to write on...","color":"white"}

# if ledger, add page
execute if score #isOffhand ledger.temp matches 1 run function ledger:add_page


