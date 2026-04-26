scoreboard players set #forceload.signature.easy_clear_chunk.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.easy_clear_chunk.Result letsload-io
execute unless function letsload:forceload/signature/_func/validate_input_chunk run return run function letsload:forceload/signature/_return_fail

scoreboard players set #forceload.signature.easy_clear_chunk.FUNCTION_STAGE letsload-io 1
execute as @e[distance=0..,tag=letsload.forceload.anchor,type=minecraft:marker] if score @s letsload-internal.forceload.anchor.chunk_x = #forceload.signature.Input.chunk_x letsload-io if score @s letsload-internal.forceload.anchor.chunk_z = #forceload.signature.Input.chunk_z letsload-io run function letsload:forceload/signature/easy_clear_chunk/_func

scoreboard players set #forceload.signature.easy_clear_chunk.FUNCTION_STAGE letsload-io -1
function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.easy_clear_chunk.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_clear_chunk.Result letsload-io
