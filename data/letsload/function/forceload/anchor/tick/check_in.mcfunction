tag @s remove TASK.letsload-forceload_anchor.check_in

tag @s add INTERNAL.letsload-This_forceload_anchor
kill @e[distance=..1,type=minecraft:marker,tag=letsload-forceload_anchor,tag=!INTERNAL.letsload-This_forceload_anchor]
tag @s remove INTERNAL.letsload-This_forceload_anchor

return 1
