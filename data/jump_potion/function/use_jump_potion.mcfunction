execute as @a run advancement revoke @s only jump_potion:use_jump_potion

# cooldown
execute store result score #this jump_potion.temp run time query gametime
execute if score @s jump_potion.temp > #this jump_potion.temp run return 0
execute store result score @s jump_potion.temp run scoreboard players add #this jump_potion.temp 15

# scoreboard players set #isOffhand jump_potion.temp 0
# # check if offhand hand
# execute if data entity @s Inventory[{Slot:-106b, components: {"minecraft:custom_data":{isJumpPotion: 1b}}}] run scoreboard players set #isOffhand jump_potion.temp 1

# # check if mainhand hand
# execute if data entity @s SelectedItem{components: {"minecraft:custom_data":{isJumpPotion: 1b}}} run scoreboard players set #isOffhand jump_potion.temp 0

#execute if score #isOffhand jump_potion.temp matches 1 run item replace entity @p weapon.offhand with air
#execute if score #isOffhand jump_potion.temp matches 0 run item replace entity @p weapon.mainhand with air

clear @s minecraft:dragon_breath[minecraft:custom_data~{isJumpPotion:1b}] 1


scoreboard players set $strength player_motion.api.launch 18000
scoreboard players set $y player_motion.api.launch 0

function player_motion:api/launch_looking
#function player_motion:api/launch_xyz

playsound minecraft:entity.wind_charge.throw player @a
playsound entity.breeze.wind_burst master @s

particle gust_emitter_large ~ ~ ~ 0 0 0 0 3

