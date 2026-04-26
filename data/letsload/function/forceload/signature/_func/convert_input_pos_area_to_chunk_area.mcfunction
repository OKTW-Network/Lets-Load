data modify storage letsload:internal dummy set value {x:'INVALID',y:0,z:'INVALID'}
execute store result storage letsload:internal dummy.x int 1 run scoreboard players get #forceload.signature.Input.pos_x1 letsload-io
execute store result storage letsload:internal dummy.z int 1 run scoreboard players get #forceload.signature.Input.pos_z1 letsload-io
execute store result score #1 temp run function letsload:util/lazy_get_chunk_coord/main with storage letsload:internal dummy
execute if score #1 temp matches 0 run return fail
scoreboard players operation #forceload.signature.Input.chunk_x1 letsload-io = #util.lazy_get_chunk_coord.Result.x letsload-io
scoreboard players operation #forceload.signature.Input.chunk_z1 letsload-io = #util.lazy_get_chunk_coord.Result.z letsload-io
data modify storage letsload:internal dummy set value {x:'INVALID',y:0,z:'INVALID'}
execute store result storage letsload:internal dummy.x int 1 run scoreboard players get #forceload.signature.Input.pos_x2 letsload-io
execute store result storage letsload:internal dummy.z int 1 run scoreboard players get #forceload.signature.Input.pos_z2 letsload-io
execute store result score #1 temp run function letsload:util/lazy_get_chunk_coord/main with storage letsload:internal dummy
execute if score #1 temp matches 0 run return fail
scoreboard players operation #forceload.signature.Input.chunk_x2 letsload-io = #util.lazy_get_chunk_coord.Result.x letsload-io
scoreboard players operation #forceload.signature.Input.chunk_z2 letsload-io = #util.lazy_get_chunk_coord.Result.z letsload-io
return 1
