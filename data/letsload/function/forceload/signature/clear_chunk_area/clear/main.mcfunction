scoreboard players operation #forceload.signature.clear_chunk.chunk_x letsload-io = #forceload.signature.clear_chunk_area.clear_chunk_x letsload-internal
scoreboard players operation #forceload.signature.clear_chunk.chunk_z letsload-io = #forceload.signature.clear_chunk_area.clear_chunk_z letsload-internal
execute store success score #1 temp run function letsload:forceload/signature/clear_chunk/main
scoreboard players operation #forceload.signature.clear_chunk_area.result letsload-io += #1 temp

scoreboard players add #forceload.signature.clear_chunk_area.clear_chunk_x letsload-internal 1
execute if score #forceload.signature.clear_chunk_area.clear_chunk_x letsload-internal > #forceload.signature.clear_chunk_area.chunk_x2 letsload-internal run function letsload:forceload/signature/clear_chunk_area/clear/next_line
execute if score #forceload.signature.clear_chunk_area.clear_chunk_z letsload-internal > #forceload.signature.clear_chunk_area.chunk_z2 letsload-internal run return 1
function letsload:forceload/signature/clear_chunk_area/clear/main
