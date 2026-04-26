function letsload:util/get_current_chunk_coord/main
scoreboard players operation #forceload.signature.Input.chunk_x letsload-io = #util.get_current_chunk_coord.Result.chunk_x letsload-io
scoreboard players operation #forceload.signature.Input.chunk_z letsload-io = #util.get_current_chunk_coord.Result.chunk_z letsload-io
return 1
