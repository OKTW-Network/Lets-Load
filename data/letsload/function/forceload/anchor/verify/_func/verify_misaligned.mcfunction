scoreboard players operation #util.get_chunk_lowest_pos.Input.chunk_x letsload-io = @s letsload-internal.forceload.anchor.chunk_x
scoreboard players operation #util.get_chunk_lowest_pos.Input.chunk_z letsload-io = @s letsload-internal.forceload.anchor.chunk_z
execute unless function letsload:util/get_chunk_lowest_pos/main run return run function letsload:forceload/anchor/verify/_func/fail
execute store result score #1 temp run data get entity @s Pos[0] 1
execute unless score #1 temp = #util.get_chunk_lowest_pos.Result.pos_x letsload-io run return run function letsload:forceload/anchor/verify/_func/fail
execute store result score #1 temp run data get entity @s Pos[2] 1
execute unless score #1 temp = #util.get_chunk_lowest_pos.Result.pos_z letsload-io run return run function letsload:forceload/anchor/verify/_func/fail
return 1
