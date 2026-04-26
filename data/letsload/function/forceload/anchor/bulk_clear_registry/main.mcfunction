scoreboard players reset #forceload.anchor.bulk_clear_registry.Result letsload-io

execute as @e[tag=letsload.forceload.anchor,type=minecraft:marker] run function letsload:forceload/anchor/bulk_clear_registry/_func

return run execute unless score #forceload.anchor.bulk_clear_registry.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.bulk_clear_registry.Result letsload-io
