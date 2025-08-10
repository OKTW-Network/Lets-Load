scoreboard players set #forceload.signature.add_pos_area.FUNCTION_STAGE letsload-io 0
data modify storage letsload:internal dummy set value {x:"INVALID",y:0,z:"INVALID"}
data modify storage letsload:internal dummy.x set from storage letsload:io forceload.signature.add_pos_area.x1
data modify storage letsload:internal dummy.z set from storage letsload:io forceload.signature.add_pos_area.z1
execute store success score #1 temp run function letsload:util/lazy_get_chunk_coord/main with storage letsload:internal dummy
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_pos_area/_return_fail
scoreboard players operation #forceload.signature.add_pos_area.chunk_x1 letsload-internal = #util.lazy_get_chunk_coord.Result.x letsload-io
scoreboard players operation #forceload.signature.add_pos_area.chunk_z1 letsload-internal = #util.lazy_get_chunk_coord.Result.z letsload-io

scoreboard players set #forceload.signature.add_pos_area.FUNCTION_STAGE letsload-io 1
data modify storage letsload:internal dummy set value {x:"INVALID",y:0,z:"INVALID"}
data modify storage letsload:internal dummy.x set from storage letsload:io forceload.signature.add_pos_area.x2
data modify storage letsload:internal dummy.z set from storage letsload:io forceload.signature.add_pos_area.z2
execute store success score #1 temp run function letsload:util/lazy_get_chunk_coord/main with storage letsload:internal dummy
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_pos_area/_return_fail

scoreboard players set #forceload.signature.add_pos_area.FUNCTION_STAGE letsload-io 2
scoreboard players operation #forceload.signature.add_chunk_area.chunk_x2 letsload-io = #util.lazy_get_chunk_coord.Result.x letsload-io
scoreboard players operation #forceload.signature.add_chunk_area.chunk_z2 letsload-io = #util.lazy_get_chunk_coord.Result.z letsload-io
scoreboard players operation #forceload.signature.add_chunk_area.chunk_x1 letsload-io = #forceload.signature.add_pos_area.chunk_x1 letsload-internal
scoreboard players operation #forceload.signature.add_chunk_area.chunk_z1 letsload-io = #forceload.signature.add_pos_area.chunk_z1 letsload-internal
data modify storage letsload:io forceload.signature.add_chunk_area.signature set from storage letsload:io forceload.signature.add_pos_area.signature
execute store success score #1 temp run function letsload:forceload/signature/add_chunk_area/main
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_pos_area/_return_fail

scoreboard players set #forceload.signature.add_pos_area.FUNCTION_STAGE letsload-io 3
function letsload:forceload/signature/add_pos_area/_reset_function

return 1
