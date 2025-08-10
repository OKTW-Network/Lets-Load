execute store success score #1 temp as @e[distance=..1,limit=1,type=minecraft:marker,tag=letsload-forceload_anchor] run function letsload:forceload/anchor/lax_add_signature
execute if score #1 temp matches 1 run kill @s
execute if score #1 temp matches 1 run return 2

forceload add ~ ~
data merge entity @s {Tags:["letsload-forceload_anchor","TASK.letsload-forceload_anchor.check_in"],data:{"letsload:forceload_anchor":{register:[]}}}
scoreboard players operation @s letsload-forceload_anchor.chunk_x = #forceload.anchor.create.chunk_x letsload-io
scoreboard players operation @s letsload-forceload_anchor.chunk_z = #forceload.anchor.create.chunk_z letsload-io
function letsload:forceload/anchor/lax_add_signature

return 1
