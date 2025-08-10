execute unless entity @s[type=minecraft:marker,tag=letsload-forceload_anchor] run return fail

data remove entity @s data."lestload:forceload_anchor".register[]
tag @s add TASK.letsload-forceload_anchor.check_out

return 1
