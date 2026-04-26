scoreboard players set #forceload.signature.easy_add_chunk.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.easy_add_chunk.Result letsload-io
execute unless function letsload:forceload/signature/_func/validate_input_chunk run return run function letsload:forceload/signature/_return_fail

scoreboard players set #forceload.signature.easy_add_chunk.FUNCTION_STAGE letsload-io 1
function letsload:forceload/signature/_func/transfer_input_to_anchor
scoreboard players operation #forceload.anchor.easy_new.Input.chunk_x letsload-io = #forceload.signature.Input.chunk_x letsload-io
scoreboard players operation #forceload.anchor.easy_new.Input.chunk_z letsload-io = #forceload.signature.Input.chunk_z letsload-io
execute store result score #forceload.signature.easy_add_chunk.Result letsload-io run function letsload:forceload/anchor/easy_new/main

scoreboard players set #forceload.signature.easy_add_chunk.FUNCTION_STAGE letsload-io -1
function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.easy_add_chunk.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_add_chunk.Result letsload-io
