scoreboard players reset #forceload.signature.lax_clear_current_pos.Result letsload-io

execute store result score #forceload.signature.lax_clear_current_pos.Result letsload-io run function letsload:forceload/signature/easy_clear_current_pos

function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.lax_clear_current_pos.Result letsload-io matches 0 run scoreboard players get #forceload.signature.lax_clear_current_pos.Result letsload-io
