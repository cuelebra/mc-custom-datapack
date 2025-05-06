function warptomes:start_use_item_cooldown

execute at @p run playsound minecraft:item.book.page_turn master @p


# Check the scroll's state and handle accordingly
execute unless predicate warptomes:is_sneaking if score @s warptomes.is_linking matches 0 as @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{isLinkingScroll:true,state:0}}}}] at @s run function warptomes:linking/link_first

execute unless predicate warptomes:is_sneaking if score @s warptomes.is_linking matches 0 as @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{isLinkingScroll:true,state:1}}}}] at @s run function warptomes:linking/link_second

execute unless predicate warptomes:is_sneaking if score @s warptomes.is_linking matches 0 as @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{isLinkingScroll:true,state:2}}}}] at @s run function warptomes:linking/link_final

# reset the linking objective
scoreboard players set @s warptomes.is_linking 0

execute if predicate warptomes:is_sneaking run function warptomes:linking/reset
