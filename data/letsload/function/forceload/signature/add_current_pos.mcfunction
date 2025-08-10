scoreboard players reset #forceload.signature.add_current_pos.Result letsload-io

function letsload:util/get_current_chunk_coord/main
execute store result score #forceload.signature.add_chunk.chunk_x letsload-io run data get storage letsload:io util.get_current_chunk_coord.Result[0]
execute store result score #forceload.signature.add_chunk.chunk_z letsload-io run data get storage letsload:io util.get_current_chunk_coord.Result[1]
data modify storage letsload:io forceload.signature.add_chunk.signature set from storage letsload:io forceload.signature.add_current_pos.signature
execute store success score #forceload.signature.add_current_pos.Result letsload-io run function letsload:forceload/signature/add_chunk/main

data remove storage letsload:io forceload.signature.add_current_pos.signature

return run execute unless score #forceload.signature.add_current_pos.Result letsload-io matches 0 run scoreboard players get #forceload.signature.add_current_pos.Result letsload-io
