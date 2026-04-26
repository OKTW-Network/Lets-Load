# May reach the hard limit (..-30000000 or 30000000..), which is not accepted in commands and most functions.
scoreboard players set #util.get_chunk_lowest_pos.FUNCTION_STAGE letsload-io 0
scoreboard players reset #util.get_chunk_lowest_pos.Result.pos_x letsload-io
scoreboard players reset #util.get_chunk_lowest_pos.Result.pos_z letsload-io
execute unless score #util.get_chunk_lowest_pos.Input.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:util/get_chunk_lowest_pos/_return_fail
execute unless score #util.get_chunk_lowest_pos.Input.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:util/get_chunk_lowest_pos/_return_fail

scoreboard players set #util.get_chunk_lowest_pos.FUNCTION_STAGE letsload-io 1
scoreboard players set #1 temp 16
scoreboard players operation #util.get_chunk_lowest_pos.Result.pos_x letsload-io = #util.get_chunk_lowest_pos.Input.chunk_x letsload-io
scoreboard players operation #util.get_chunk_lowest_pos.Result.pos_x letsload-io *= #1 temp
scoreboard players operation #util.get_chunk_lowest_pos.Result.pos_z letsload-io = #util.get_chunk_lowest_pos.Input.chunk_z letsload-io
scoreboard players operation #util.get_chunk_lowest_pos.Result.pos_z letsload-io *= #1 temp

scoreboard players set #util.get_chunk_lowest_pos.FUNCTION_STAGE letsload-io -1
function letsload:util/get_chunk_lowest_pos/_reset_function

return 1
