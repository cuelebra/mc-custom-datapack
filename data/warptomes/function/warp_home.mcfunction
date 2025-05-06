$execute in $(home_destDimension) run tp @p $(home_destX) $(home_destY) $(home_destZ) $(home_destRotation) 0


schedule function warptomes:on_warp 3t

scoreboard players set @s warptomes.justwarped 40