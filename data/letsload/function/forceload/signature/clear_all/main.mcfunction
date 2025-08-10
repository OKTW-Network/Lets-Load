scoreboard players reset #forceload.signature.clear_all.Result letsload-io

execute as @e[type=minecraft:marker,tag=letsload-forceload_anchor] run function letsload:forceload/signature/clear_all/anchor_clear_signature

return run execute unless score #forceload.signature.clear_all.Result letsload-io matches 0 run scoreboard players get #forceload.signature.clear_all.Result letsload-io
