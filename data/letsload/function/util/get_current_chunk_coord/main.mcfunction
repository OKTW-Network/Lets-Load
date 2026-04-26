# May reach the hard limit (-1875000 or 1874999), which is not accepted in most functions.
scoreboard players reset #util.get_current_chunk_coord.Result.chunk_x letsload-io
scoreboard players reset #util.get_current_chunk_coord.Result.chunk_z letsload-io

execute positioned ~ ~ ~ align xyz summon minecraft:marker run function letsload:util/get_current_chunk_coord/_func
scoreboard players set #1 temp 16
execute store result score #util.get_current_chunk_coord.Result.chunk_x letsload-io run scoreboard players operation #util.get_current_chunk_coord.pos_x letsload-internal /= #1 temp
execute store result score #util.get_current_chunk_coord.Result.chunk_z letsload-io run scoreboard players operation #util.get_current_chunk_coord.pos_z letsload-internal /= #1 temp

scoreboard players reset #util.get_current_chunk_coord.pos_x letsload-internal
scoreboard players reset #util.get_current_chunk_coord.pos_z letsload-internal

return 1
