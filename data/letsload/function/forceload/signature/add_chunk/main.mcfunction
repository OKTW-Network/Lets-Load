scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.add_chunk.Result letsload-io
execute unless score #forceload.signature.add_chunk.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk/_return_fail
execute unless score #forceload.signature.add_chunk.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk/_return_fail

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 1
scoreboard players set #forceload.signature.add_chunk.Result letsload-io 0
execute as @e[distance=0..,limit=1,type=minecraft:marker,tag=letsload-forceload_anchor] if score @s letsload-forceload_anchor.chunk_x = #forceload.signature.add_chunk.chunk_x letsload-io if score @s letsload-forceload_anchor.chunk_z = #forceload.signature.add_chunk.chunk_z letsload-io run return run function letsload:forceload/signature/add_chunk/anchor_add_signature

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 2
data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.add_chunk.signature
scoreboard players operation #forceload.anchor.create.chunk_x letsload-io = #forceload.signature.add_chunk.chunk_x letsload-io
scoreboard players operation #forceload.anchor.create.chunk_z letsload-io = #forceload.signature.add_chunk.chunk_z letsload-io
execute store success score #forceload.signature.add_chunk.Result letsload-io run function letsload:forceload/anchor/create/main

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 3
function letsload:forceload/signature/add_chunk/_reset_function

return run execute unless score #forceload.signature.add_chunk.Result letsload-io matches 0 run scoreboard players get #forceload.signature.add_chunk.Result letsload-io
