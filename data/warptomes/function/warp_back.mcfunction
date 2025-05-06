$execute in $(home_originDimension) run tp @p $(home_originX) $(home_originY) $(home_originZ)

tag @s add just_warped
schedule function warptomes:on_warp_back 3t
schedule function warptomes:on_warp 3t

kill @e[tag=PortalEntity]

scoreboard players set @s warptomes.justwarped 40