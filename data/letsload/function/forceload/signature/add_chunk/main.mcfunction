scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 0
execute unless score #forceload.signature.add_chunk.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk/_return_fail
execute unless score #forceload.signature.add_chunk.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/signature/add_chunk/_return_fail

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 1
execute as @e[distance=0..,limit=1,type=minecraft:marker,tag=letsload-forceload_anchor] if score @s letsload-forceload_anchor.chunk_x = #forceload.signature.add_chunk.chunk_x letsload-io if score @s letsload-forceload_anchor.chunk_z = #forceload.signature.add_chunk.chunk_z letsload-io run return run function letsload:forceload/signature/add_chunk/anchor_add_signature

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 2
execute store success score #1 temp run function letsload:forceload/signature/add_chunk/create_anchor
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_chunk/_return_fail

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 3
function letsload:forceload/signature/add_chunk/_reset_function

return 1
