scoreboard players set #forceload.signature.clear_chunk.FUNCTION_STAGE letsload-io 0
execute unless score #forceload.signature.clear_chunk.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/clear_chunk/_return_fail
execute unless score #forceload.signature.clear_chunk.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/clear_chunk/_return_fail

scoreboard players set #forceload.signature.clear_chunk.FUNCTION_STAGE letsload-io 1
execute as @e[distance=0..,limit=1,type=minecraft:marker,tag=letsload-forceload_anchor] if score @s letsload-forceload_anchor.chunk_x = #forceload.signature.clear_chunk.chunk_x letsload-io if score @s letsload-forceload_anchor.chunk_z = #forceload.signature.clear_chunk.chunk_z letsload-io run function letsload:forceload/anchor/clear_signature

scoreboard players set #forceload.signature.clear_chunk.FUNCTION_STAGE letsload-io 2
function letsload:forceload/signature/clear_chunk/_reset_function

return 1
