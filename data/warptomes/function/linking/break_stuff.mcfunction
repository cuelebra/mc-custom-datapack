# Remove lily and log
setblock ~ ~1 ~ minecraft:air
setblock ~ ~ ~ minecraft:air

# Add breaking effects
particle glow ~ ~ ~ 0.5 0.5 0.5 0.1 20
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
