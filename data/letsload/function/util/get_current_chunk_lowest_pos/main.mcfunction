# May reach the hard limit (..-30000000 or 30000000..), which is not accepted in commands and most functions.
scoreboard players reset #util.get_current_chunk_lowest_pos.Result.pos_x letsload-io
scoreboard players reset #util.get_current_chunk_lowest_pos.Result.pos_z letsload-io

execute positioned ~ ~ ~ align xyz summon minecraft:marker run function letsload:util/get_current_chunk_lowest_pos/_func
scoreboard players set #1 temp 16
scoreboard players operation #util.get_current_chunk_lowest_pos.pos_x letsload-internal /= #1 temp
execute store result score #util.get_current_chunk_lowest_pos.Result.pos_x letsload-io run scoreboard players operation #util.get_current_chunk_lowest_pos.pos_x letsload-internal *= #1 temp
scoreboard players operation #util.get_current_chunk_lowest_pos.pos_z letsload-internal /= #1 temp
execute store result score #util.get_current_chunk_lowest_pos.Result.pos_z letsload-io run scoreboard players operation #util.get_current_chunk_lowest_pos.pos_z letsload-internal *= #1 temp

scoreboard players reset #util.get_current_chunk_lowest_pos.pos_x letsload-internal
scoreboard players reset #util.get_current_chunk_lowest_pos.pos_z letsload-internal

return 1
