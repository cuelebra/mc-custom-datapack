
$execute in minecraft:the_nether run tp @s $(x) $(y) $(z)

tag @s add ledger.justwarped

schedule function ledger:on_warp 2t replace
