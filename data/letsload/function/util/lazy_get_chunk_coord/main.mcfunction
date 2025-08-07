scoreboard players set #util.lazy_get_chunk_coord.FUNCTION_STAGE letsload-io 0
data remove storage letsload:io util.lazy_get_chunk_coord.result
scoreboard players reset #util.lazy_get_chunk_coord.result.x letsload-io
scoreboard players reset #util.lazy_get_chunk_coord.result.z letsload-io

scoreboard players set #util.lazy_get_chunk_coord.FUNCTION_STAGE letsload-io 1
$execute positioned $(x) $(y) $(z) positioned ~ 0 ~ align xyz summon minecraft:marker run function letsload:util/lazy_get_chunk_coord/_get_pos

scoreboard players set #util.lazy_get_chunk_coord.FUNCTION_STAGE letsload-io 2
data modify storage letsload:io util.lazy_get_chunk_coord.result set value [0,0]
execute if score #util.lazy_get_chunk_coord.pos_x letsload-internal matches ..-1 run scoreboard players remove #util.lazy_get_chunk_coord.pos_x letsload-internal 1
execute if score #util.lazy_get_chunk_coord.pos_z letsload-internal matches ..-1 run scoreboard players remove #util.lazy_get_chunk_coord.pos_z letsload-internal 1
scoreboard players set #1 temp 16
execute store result storage letsload:io util.lazy_get_chunk_coord.result[0] int 1 run scoreboard players operation #util.lazy_get_chunk_coord.pos_x letsload-internal /= #1 temp
execute store result storage letsload:io util.lazy_get_chunk_coord.result[1] int 1 run scoreboard players operation #util.lazy_get_chunk_coord.pos_z letsload-internal /= #1 temp

scoreboard players set #util.lazy_get_chunk_coord.FUNCTION_STAGE letsload-io 3
data remove storage letsload:io util.lazy_get_chunk_coord.input
scoreboard players reset #util.lazy_get_chunk_coord.pos_x letsload-internal
scoreboard players reset #util.lazy_get_chunk_coord.pos_z letsload-internal

execute if data storage letsload:io util.lazy_get_chunk_coord.result run return 1
return fail
