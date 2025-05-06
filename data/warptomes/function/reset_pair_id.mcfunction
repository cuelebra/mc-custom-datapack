# reset pairId
scoreboard players set @s warptomes.home_pairId 0

# save pairId to storage
execute store result storage warptomes:store home_pairId int 1 run scoreboard players get @s warptomes.home_pairId