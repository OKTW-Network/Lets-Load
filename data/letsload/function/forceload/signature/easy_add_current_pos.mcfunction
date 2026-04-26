scoreboard players reset #forceload.signature.easy_add_current_pos.Result letsload-io

function letsload:forceload/signature/_func/convert_current_pos_to_input_chunk
execute store result score #forceload.signature.easy_add_current_pos.Result letsload-io run function letsload:forceload/signature/easy_add_chunk

function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.easy_add_current_pos.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_add_current_pos.Result letsload-io
