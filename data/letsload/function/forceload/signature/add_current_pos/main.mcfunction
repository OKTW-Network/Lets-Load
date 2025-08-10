scoreboard players set #forceload.signature.add_current_pos.FUNCTION_STAGE letsload-io 0
function letsload:util/get_current_chunk_coord/main
execute store result score #forceload.signature.add_chunk.chunk_x letsload-io run data get storage letsload:io util.get_current_chunk_coord.Result[0]
execute store result score #forceload.signature.add_chunk.chunk_z letsload-io run data get storage letsload:io util.get_current_chunk_coord.Result[1]
data modify storage letsload:io forceload.signature.add_chunk.signature set from storage letsload:io forceload.signature.add_current_pos.signature
execute store success score #1 temp run function letsload:forceload/signature/add_chunk/main
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_current_pos/_return_fail

scoreboard players set #forceload.signature.add_current_pos.FUNCTION_STAGE letsload-io 1
function letsload:forceload/signature/add_current_pos/_reset_function

return 1
