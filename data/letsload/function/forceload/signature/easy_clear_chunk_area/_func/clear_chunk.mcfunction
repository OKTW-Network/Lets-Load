scoreboard players operation #forceload.signature.Input.chunk_x letsload-io = #forceload.signature.easy_clear_chunk_area.clear_chunk_x letsload-internal
scoreboard players operation #forceload.signature.Input.chunk_z letsload-io = #forceload.signature.easy_clear_chunk_area.clear_chunk_z letsload-internal
execute store result score #1 temp run function letsload:forceload/signature/easy_clear_chunk/main
scoreboard players operation #forceload.signature.easy_clear_chunk_area.Result letsload-io += #1 temp

scoreboard players add #forceload.signature.easy_clear_chunk_area.clear_chunk_x letsload-internal 1
execute if score #forceload.signature.easy_clear_chunk_area.clear_chunk_x letsload-internal > #forceload.signature.Input.chunk_x2 letsload-io run function letsload:forceload/signature/easy_clear_chunk_area/_func/next_line
execute if score #forceload.signature.easy_clear_chunk_area.clear_chunk_z letsload-internal > #forceload.signature.Input.chunk_z2 letsload-io run return 1
function letsload:forceload/signature/easy_clear_chunk_area/_func/clear_chunk
