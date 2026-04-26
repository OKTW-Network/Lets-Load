scoreboard players set #forceload.anchor.easy_new.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.easy_new.Result letsload-io
function letsload:forceload/anchor/_func/normalize_input

scoreboard players set #forceload.anchor.easy_new.FUNCTION_STAGE letsload-io 1
execute store result score #forceload.anchor.easy_new.Result letsload-io run function letsload:forceload/anchor/easy_new/_func/new

scoreboard players set #forceload.anchor.easy_new.FUNCTION_STAGE letsload-io -1
function letsload:forceload/anchor/easy_new/_reset_function

return run execute unless score #forceload.anchor.easy_new.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.easy_new.Result letsload-io
