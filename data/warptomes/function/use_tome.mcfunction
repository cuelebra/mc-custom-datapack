function warptomes:start_use_item_cooldown

execute at @p run playsound minecraft:item.book.page_turn master @p

execute as @p at @s if predicate warptomes:is_sneaking run function warptomes:link_home

execute as @p at @s unless predicate warptomes:is_sneaking if block ^ ^0.75 ^2 #minecraft:air run function warptomes:create_portal_pair with storage warptomes:store
