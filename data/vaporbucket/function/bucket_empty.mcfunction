execute if score #isOffhand vaporbucket.temp matches 1 run item replace entity @p weapon.offhand with minecraft:bucket
execute if score #isOffhand vaporbucket.temp matches 0 run item replace entity @p weapon.mainhand with minecraft:bucket
playsound minecraft:block.bamboo_wood.break master @s

