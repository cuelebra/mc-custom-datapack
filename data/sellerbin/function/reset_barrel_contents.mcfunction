data modify block ~ ~ ~ Items set value []

data modify block ~ ~ ~ Items prepend value {"Slot":0b,"id":"minecraft:iron_pickaxe","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:9b,"id":"minecraft:iron_sword","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:18b,"id":"minecraft:iron_axe","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

# Second column

data modify block ~ ~ ~ Items prepend value {Slot:1b,"id":"minecraft:leather_helmet","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":2},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:10b,"id":"minecraft:leather_chestplate","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 4₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:19b,"id":"minecraft:leather_leggings","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 4₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:2b,"id":"minecraft:leather_boots","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":2},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

# 3rd

data modify block ~ ~ ~ Items prepend value {Slot:4b,"id":"minecraft:chest","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "isGamble":true, "price":12},"minecraft:custom_name":'{"text":"Mystery Loot Box","italic":false}',"minecraft:lore":['{"text":"Many things go through the shopkeeper\'s shop...","color":"gray","italic":true}','{"text":"Price: 12₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:13b,"id":"minecraft:dragon_breath", count: 10, "components":{"minecraft:custom_name":'{"text":"Bottled Cloud","italic":false}',"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":1, "isJumpPotion":true},"minecraft:lore":['{"text":"Launched by the wind..."}','{"text":"Price: 1₤","color":"green","italic":false}'], max_stack_size:10, "minecraft:food":{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:214748364}}}


data modify block ~ ~ ~ Items prepend value {Slot:22b,"id":"minecraft:book","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "isUnbindingTome":1b, "price":5},"minecraft:custom_name":'{"text":"Unbinding Service"}',"minecraft:lore":['{"text":"For a small price, the shopkeeper will help you take the cursed things off you.","color":"gray","italic":true}','{"text":"Price: 5₤","color":"green","italic":false}']}}



# 4th

data modify block ~ ~ ~ Items prepend value {Slot:6b,"id":"minecraft:torch", count: 64, "components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:15b,"id":"minecraft:lantern", count: 1, "components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":3},"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}']}}

data modify block ~ ~ ~ Items prepend value {Slot:24b,"id":"minecraft:written_book","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "isPortalLedger":true, "price":10, "pagesIds":[{id:-1, x:0, y:0, z:0}]},"minecraft:written_book_content":{"pages":['[{"text": "The secret arts of the Warped Realm will be revealed to those who seek them...\\n\\n\\n\\n\\n"}, {"text": "?", "hoverEvent": {"action": "show_text", "contents": "Seek Luminescent Ink to write places you visited into the ledger."}}]'], "title":"Warped Ledger", "author":"N'gkhan O'ha"},"minecraft:custom_name":'{"text":"Warped Ledger"}',"minecraft:lore":['{"text":"Price: 10₤","color":"green","italic":false}']}}

# 5th

data modify block ~ ~ ~ Items prepend value {Slot:7b,"id":"minecraft:potion","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":1},"minecraft:lore":['{"text":"Price: 1₤","color":"green","italic":false}'], potion_contents:"regeneration"}}

data modify block ~ ~ ~ Items prepend value {Slot:16b,"id":"minecraft:potion","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":2},"minecraft:lore":['{"text":"Price: 2₤","color":"green","italic":false}'], potion_contents:"strong_regeneration"}}

data modify block ~ ~ ~ Items prepend value {Slot:25b,"id":"minecraft:black_dye","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "isPortalInk":true, "price":3},"minecraft:custom_name":'{"text":"Warped Ink"}',"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}'],food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:214748364}}}

# 6th

data modify block ~ ~ ~ Items prepend value {Slot:8b,"id":"minecraft:potion","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":1},"minecraft:lore":['{"text":"Price: 1₤","color":"green","italic":false}'], potion_contents:"healing"}}

data modify block ~ ~ ~ Items prepend value {Slot:17b,"id":"minecraft:potion","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "price":2},"minecraft:lore":['{"text":"Price: 2₤","color":"green","italic":false}'], potion_contents:"strong_healing"}}

data modify block ~ ~ ~ Items prepend value {Slot:26b,"id":"minecraft:book","components":{"minecraft:custom_data":{"isSellerBinPlaceholder":true, "isTome":true, "price":3},"minecraft:custom_name":'{"text":"Tome of Town Portal"}',"minecraft:lore":['{"text":"Price: 3₤","color":"green","italic":false}'],food:{nutrition:0,saturation:0,can_always_eat:true,eat_seconds:214748364}}}


