data modify storage letsload:io forceload.signature.remove_chunk.signature set from storage letsload:io forceload.signature.remove_chunk_area.signature
scoreboard players operation #forceload.signature.remove_chunk.chunk_x letsload-io = #forceload.signature.remove_chunk_area.remove_chunk_x letsload-internal
scoreboard players operation #forceload.signature.remove_chunk.chunk_z letsload-io = #forceload.signature.remove_chunk_area.remove_chunk_z letsload-internal
execute store success score #1 temp run function letsload:forceload/signature/remove_chunk/main
scoreboard players operation #forceload.signature.remove_chunk_area.result letsload-io += #1 temp

scoreboard players add #forceload.signature.remove_chunk_area.remove_chunk_x letsload-internal 1
execute if score #forceload.signature.remove_chunk_area.remove_chunk_x letsload-internal > #forceload.signature.remove_chunk_area.chunk_x2 letsload-internal run function letsload:forceload/signature/remove_chunk_area/remove/next_line
execute if score #forceload.signature.remove_chunk_area.remove_chunk_z letsload-internal > #forceload.signature.remove_chunk_area.chunk_z2 letsload-internal run return 1
function letsload:forceload/signature/remove_chunk_area/remove/main
