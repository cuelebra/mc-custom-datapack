
execute store result score #reset warptomes.cooldown run time query gametime
execute as @a if score @s warptomes.cooldown = #reset warptomes.cooldown run advancement revoke @s only warptomes:use_tome
execute as @a if score @s warptomes.cooldown = #reset warptomes.cooldown run advancement revoke @s only warptomes:use_random_tome
execute as @a if score @s warptomes.cooldown = #reset warptomes.cooldown run advancement revoke @s only warptomes:use_linking_scroll