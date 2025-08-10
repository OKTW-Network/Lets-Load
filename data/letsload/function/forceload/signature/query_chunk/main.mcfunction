scoreboard players set #forceload.signature.query_chunk.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.signature.query_chunk.Result letsload-io
execute unless score #forceload.signature.query_chunk.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/query_chunk/_return_fail
execute unless score #forceload.signature.query_chunk.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/query_chunk/_return_fail

scoreboard players set #forceload.signature.query_chunk.FUNCTION_STAGE letsload-io 1
scoreboard players set #forceload.signature.query_chunk.Result letsload-io 0
execute as @e[distance=0..,limit=1,type=minecraft:marker,tag=letsload-forceload_anchor] if score @s letsload-forceload_anchor.chunk_x = #forceload.signature.query_chunk.chunk_x letsload-io if score @s letsload-forceload_anchor.chunk_z = #forceload.signature.query_chunk.chunk_z letsload-io run function letsload:forceload/signature/query_chunk/anchor_query_signature

scoreboard players set #forceload.signature.query_chunk.FUNCTION_STAGE letsload-io 2
function letsload:forceload/signature/query_chunk/_reset_function

return run execute unless score #forceload.signature.query_chunk.Result letsload-io matches 0 run scoreboard players get #forceload.signature.query_chunk.Result letsload-io
