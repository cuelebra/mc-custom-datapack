# if is lava bucket
$execute if score #isLavaBucket vaporbucket.temp matches 1 run item replace entity @p weapon.mainhand with minecraft:lava_bucket[minecraft:damage=$(newDamage), minecraft:lore=['{"text":"$(newDamage)/20"}']]

# if is snow bucket
$execute if score #isSnowBucket vaporbucket.temp matches 1 run item replace entity @p weapon.mainhand with minecraft:powder_snow_bucket[minecraft:damage=$(newDamage), minecraft:lore=['{"text":"$(newDamage)/20"}']]