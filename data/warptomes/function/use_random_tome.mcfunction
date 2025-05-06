function warptomes:start_use_item_cooldown

title @s actionbar {"text":"Bwwwwwwzzaaap!"}


# Fast RTP
#rtp @p minecraft:overworld 10000 5000

clear @p minecraft:enchanted_book[minecraft:custom_data~{isRandomTome:true}] 1

execute at @p run playsound minecraft:item.book.page_turn master @p
execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.deflect master @p
execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.whirl master @p
execute at @e[tag=PortalEntity] run playsound minecraft:entity.breeze.idle_air master @p

execute at @e[tag=PortalEntity] run particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0.5 100