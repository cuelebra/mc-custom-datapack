scoreboard objectives add warptomes.cooldown dummy

data merge storage warptomes:store {linking:{}, home:{}}

scoreboard objectives add warptomes.justwarped dummy
scoreboard objectives add warptomes.home_pairId dummy
scoreboard objectives add warptomes.math dummy
scoreboard objectives add warptomes.lastday dummy

scoreboard players set @a warptomes.justwarped 0

scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
scoreboard objectives add warptomes.is_linking dummy
scoreboard objectives add warptomes.linkId dummy
scoreboard objectives add warptomes.warpTimer dummy

scoreboard players set @a warptomes.is_linking 0
# set linkId to whatever is in storage
execute store result score #linkId warptomes.linkId run data get storage warptomes:store linking.linkId


advancement revoke @s only warptomes:use_tome
advancement revoke @s only warptomes:use_random_tome
advancement revoke @s only warptomes:use_linking_scroll