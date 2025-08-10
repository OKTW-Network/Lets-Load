scoreboard players reset #forceload.signature.clear_current_pos.Result letsload-io

function letsload:util/get_current_chunk_coord/main
scoreboard players operation #forceload.signature.clear_chunk.chunk_x letsload-io = #util.get_current_chunk_coord.Result.x letsload-io
scoreboard players operation #forceload.signature.clear_chunk.chunk_z letsload-io = #util.get_current_chunk_coord.Result.z letsload-io
execute store success score #forceload.signature.clear_current_pos.Result letsload-io run function letsload:forceload/signature/clear_chunk/main

return run execute unless score #forceload.signature.clear_current_pos.Result letsload-io matches 0 run scoreboard players get #forceload.signature.clear_current_pos.Result letsload-io
