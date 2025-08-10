data remove storage letsload:io util.get_current_chunk_coord.Result
scoreboard players reset #util.get_current_chunk_coord.Result.x letsload-io
scoreboard players reset #util.get_current_chunk_coord.Result.z letsload-io

execute positioned ~ 0 ~ align xyz summon minecraft:marker run function letsload:util/get_current_chunk_coord/get_pos

data modify storage letsload:io util.get_current_chunk_coord.Result set value [0,0]
execute if score #util.get_current_chunk_coord.pos_x letsload-internal matches ..-1 run scoreboard players remove #util.get_current_chunk_coord.pos_x letsload-internal 1
execute if score #util.get_current_chunk_coord.pos_z letsload-internal matches ..-1 run scoreboard players remove #util.get_current_chunk_coord.pos_z letsload-internal 1
scoreboard players set #1 temp 16
execute store result storage letsload:io util.get_current_chunk_coord.Result[0] int 1 run scoreboard players operation #util.get_current_chunk_coord.pos_x letsload-internal /= #1 temp
execute store result storage letsload:io util.get_current_chunk_coord.Result[1] int 1 run scoreboard players operation #util.get_current_chunk_coord.pos_z letsload-internal /= #1 temp

data remove storage letsload:io util.get_current_chunk_coord.input
scoreboard players reset #util.get_current_chunk_coord.pos_x letsload-internal
scoreboard players reset #util.get_current_chunk_coord.pos_z letsload-internal

return run execute if data storage letsload:io util.get_current_chunk_coord.Result
