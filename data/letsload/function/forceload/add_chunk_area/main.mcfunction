scoreboard players set #forceload.add_chunk_area.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.add_chunk_area.result letsload-io
execute unless score #forceload.add_chunk_area.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/add_chunk_area/_return_fail
execute unless score #forceload.add_chunk_area.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/add_chunk_area/_return_fail
execute unless score #forceload.add_chunk_area.chunk_to_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/add_chunk_area/_return_fail
execute unless score #forceload.add_chunk_area.chunk_to_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/add_chunk_area/_return_fail

scoreboard players set #forceload.add_chunk_area.FUNCTION_STAGE letsload-io 1
execute if score #forceload.add_chunk_area.chunk_x letsload-internal > #forceload.add_chunk_area.chunk_to_x letsload-internal run scoreboard players operation #forceload.add_chunk_area.chunk_x letsload-internal >< #forceload.add_chunk_area.chunk_to_x letsload-internal
execute if score #forceload.add_chunk_area.chunk_z letsload-internal > #forceload.add_chunk_area.chunk_to_z letsload-internal run scoreboard players operation #forceload.add_chunk_area.chunk_z letsload-internal >< #forceload.add_chunk_area.chunk_to_z letsload-internal
scoreboard players operation #1 temp = #forceload.add_chunk_area.chunk_to_x letsload-internal
scoreboard players operation #1 temp -= #forceload.add_chunk_area.chunk_x letsload-internal
scoreboard players add #1 temp 1
scoreboard players operation #2 temp = #forceload.add_chunk_area.chunk_to_x letsload-internal
scoreboard players operation #2 temp -= #forceload.add_chunk_area.chunk_x letsload-internal
scoreboard players add #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute unless score #1 temp matches -256..-1 unless score #1 temp matches 1..256 run return run function letsload:forceload/add_chunk_area/_return_fail

scoreboard players set #forceload.add_chunk_area.FUNCTION_STAGE letsload-io 2
scoreboard players operation #forceload.add_chunk_area.add_chunk_x letsload-internal = #forceload.add_chunk_area.chunk_x letsload-internal
scoreboard players operation #forceload.add_chunk_area.add_chunk_z letsload-internal = #forceload.add_chunk_area.chunk_z letsload-internal
function letsload:forceload/add_chunk_area/_add/main

scoreboard players set #forceload.add_chunk_area.FUNCTION_STAGE letsload-io 3
function letsload:forceload/add_chunk_area/_reset_function

return 1
