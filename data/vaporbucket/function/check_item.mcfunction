execute store success score #isLavaBucket vaporbucket.temp run data get storage vaporbucket:data CurrentItem{id:"minecraft:lava_bucket"}

execute store success score #isSnowBucket vaporbucket.temp run data get storage vaporbucket:data CurrentItem{id:"minecraft:powder_snow_bucket"}

execute if score #isLavaBucket vaporbucket.temp matches 1 run function vaporbucket:bucket_tick_lava

execute if score #isSnowBucket vaporbucket.temp matches 1 run function vaporbucket:bucket_tick_snow


