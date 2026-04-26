scoreboard players set #forceload.anchor.easy_remove_signature.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.easy_remove_signature.Result letsload-io
execute unless entity @s[tag=letsload.forceload.anchor,type=minecraft:marker] run return run function letsload:forceload/anchor/_return_fail
function letsload:forceload/anchor/_func/normalize_input

scoreboard players set #forceload.anchor.easy_remove_signature.FUNCTION_STAGE letsload-io 1
execute store result score #forceload.anchor.easy_remove_signature.Result letsload-io run function letsload:forceload/anchor/_func/remove_signature

scoreboard players set #forceload.anchor.easy_remove_signature.FUNCTION_STAGE letsload-io -1
function letsload:forceload/anchor/_reset_function

return run execute unless score #forceload.anchor.easy_remove_signature.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.easy_remove_signature.Result letsload-io
