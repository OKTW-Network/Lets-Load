scoreboard players set #forceload.anchor.clear_registry.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.clear_registry.Result letsload-io
execute unless entity @s[type=minecraft:marker,tag=letsload.forceload.anchor] run return fail

scoreboard players set #forceload.anchor.clear_registry.FUNCTION_STAGE letsload-io 1
execute store result score #forceload.anchor.clear_registry.Result letsload-io run data remove entity @s data."letsload:forceload_anchor".registry[]
function letsload:forceload/anchor/_func/tag_try_terminate

scoreboard players set #forceload.anchor.clear_registry.FUNCTION_STAGE letsload-io -1
return run execute unless score #forceload.anchor.clear_registry.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.clear_registry.Result letsload-io
