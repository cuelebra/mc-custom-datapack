execute store result score @s warptomes.cooldown run time query gametime
scoreboard players add @s warptomes.cooldown 10
schedule function warptomes:reset_use_item_cooldown 10t append