scoreboard players reset #forceload.anchor.easy_bulk_remove_signature.Result letsload-io
function letsload:forceload/anchor/_func/normalize_input

execute as @e[tag=letsload.forceload.anchor,type=minecraft:marker] run function letsload:forceload/anchor/easy_bulk_remove_signature/_func

function letsload:forceload/anchor/_reset_function

return run execute unless score #forceload.anchor.easy_bulk_remove_signature.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.easy_bulk_remove_signature.Result letsload-io
