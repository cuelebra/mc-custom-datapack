# Break stuff
function warptomes:linking/break_stuff

# Get the runeString from this portal marker before we kill it
data modify storage warptomes:temp targetString set from entity @s data.runeString

# Remove self and interaction entity
kill @e[dy=1,dx=0,dz=0,type=interaction,limit=1,sort=nearest]
kill @e[distance=..0.5,type=text_display,tag=warptomes.rune_display]
kill @s

function warptomes:linking/break_rune
