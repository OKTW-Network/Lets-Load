scoreboard players set #forceload.signature.add_chunk_area.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.add_chunk_area.Result letsload-io
execute unless score #forceload.signature.add_chunk_area.chunk_x1 letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk_area/_return_fail
execute unless score #forceload.signature.add_chunk_area.chunk_z1 letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk_area/_return_fail
execute unless score #forceload.signature.add_chunk_area.chunk_x2 letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk_area/_return_fail
execute unless score #forceload.signature.add_chunk_area.chunk_z2 letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk_area/_return_fail

scoreboard players set #forceload.signature.add_chunk_area.FUNCTION_STAGE letsload-io 1
execute if score #forceload.signature.add_chunk_area.chunk_x1 letsload-internal > #forceload.signature.add_chunk_area.chunk_x2 letsload-internal run scoreboard players operation #forceload.signature.add_chunk_area.chunk_x1 letsload-internal >< #forceload.signature.add_chunk_area.chunk_x2 letsload-internal
execute if score #forceload.signature.add_chunk_area.chunk_z1 letsload-internal > #forceload.signature.add_chunk_area.chunk_z2 letsload-internal run scoreboard players operation #forceload.signature.add_chunk_area.chunk_z1 letsload-internal >< #forceload.signature.add_chunk_area.chunk_z2 letsload-internal
scoreboard players operation #1 temp = #forceload.signature.add_chunk_area.chunk_x2 letsload-internal
scoreboard players operation #1 temp -= #forceload.signature.add_chunk_area.chunk_x1 letsload-internal
scoreboard players add #1 temp 1
scoreboard players operation #2 temp = #forceload.signature.add_chunk_area.chunk_x2 letsload-internal
scoreboard players operation #2 temp -= #forceload.signature.add_chunk_area.chunk_x1 letsload-internal
scoreboard players add #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute unless score #1 temp matches -256..-1 unless score #1 temp matches 1..256 run return run function letsload:forceload/signature/add_chunk_area/_return_fail

scoreboard players set #forceload.signature.add_chunk_area.FUNCTION_STAGE letsload-io 2
scoreboard players operation #forceload.signature.add_chunk_area.add_chunk_x letsload-internal = #forceload.signature.add_chunk_area.chunk_x1 letsload-internal
scoreboard players operation #forceload.signature.add_chunk_area.add_chunk_z letsload-internal = #forceload.signature.add_chunk_area.chunk_z1 letsload-internal
function letsload:forceload/signature/add_chunk_area/add/main

scoreboard players set #forceload.signature.add_chunk_area.FUNCTION_STAGE letsload-io 3
function letsload:forceload/signature/add_chunk_area/_reset_function

return run execute unless score #forceload.signature.add_chunk_area.Result letsload-io matches 0 run scoreboard players get #forceload.signature.add_chunk_area.Result letsload-io
