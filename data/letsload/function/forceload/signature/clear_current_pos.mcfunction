function letsload:util/get_current_chunk_coord/main
execute store result score #forceload.signature.clear_chunk.chunk_x letsload-io run data get storage letsload:io util.get_current_chunk_coord.result[0]
execute store result score #forceload.signature.clear_chunk.chunk_z letsload-io run data get storage letsload:io util.get_current_chunk_coord.result[1]
execute store success score #1 temp run function letsload:forceload/signature/clear_chunk/main
execute if score #1 temp matches 0 run return fail

return 1
