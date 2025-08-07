data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.add_chunk.signature
scoreboard players operation #forceload.anchor.create.chunk_x letsload-io = #forceload.add_chunk.chunk_x letsload-io
scoreboard players operation #forceload.anchor.create.chunk_z letsload-io = #forceload.add_chunk.chunk_z letsload-io
return run function letsload:forceload/anchor/create/main
