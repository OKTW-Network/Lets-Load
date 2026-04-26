scoreboard players set #forceload.signature.easy_remove_chunk_area.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.easy_remove_chunk_area.Result letsload-io
execute unless function letsload:forceload/signature/_func/validate_input_chunk_area run return run function letsload:forceload/signature/easy_remove_chunk_area/_return_fail

scoreboard players set #forceload.signature.easy_remove_chunk_area.FUNCTION_STAGE letsload-io 1
scoreboard players operation #forceload.signature.easy_remove_chunk_area.remove_chunk_x letsload-internal = #forceload.signature.Input.chunk_x1 letsload-io
scoreboard players operation #forceload.signature.easy_remove_chunk_area.remove_chunk_z letsload-internal = #forceload.signature.Input.chunk_z1 letsload-io
function letsload:forceload/signature/easy_remove_chunk_area/_func/remove_chunk

scoreboard players set #forceload.signature.easy_remove_chunk_area.FUNCTION_STAGE letsload-io 3
function letsload:forceload/signature/easy_remove_chunk_area/_reset_function

return run execute unless score #forceload.signature.easy_remove_chunk_area.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_remove_chunk_area.Result letsload-io
