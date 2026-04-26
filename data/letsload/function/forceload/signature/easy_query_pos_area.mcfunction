scoreboard players set #forceload.signature.easy_query_pos_area.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.easy_query_pos_area.Result letsload-io
execute unless function letsload:forceload/signature/_func/convert_input_pos_area_to_chunk_area run return run function letsload:forceload/signature/_return_fail

scoreboard players set #forceload.signature.easy_query_pos_area.FUNCTION_STAGE letsload-io 1
execute store result score #forceload.signature.easy_query_pos_area.Result letsload-io run function letsload:forceload/signature/easy_query_chunk_area/main

scoreboard players set #forceload.signature.easy_query_pos_area.FUNCTION_STAGE letsload-io -1
function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.easy_query_pos_area.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_query_pos_area.Result letsload-io
