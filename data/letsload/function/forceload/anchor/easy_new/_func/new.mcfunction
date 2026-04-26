execute as @e[distance=0..,tag=letsload.forceload.anchor,type=minecraft:marker] if score @s letsload-internal.forceload.anchor.chunk_x = #forceload.anchor.easy_new.Input.chunk_x letsload-io if score @s letsload-internal.forceload.anchor.chunk_z = #forceload.anchor.easy_new.Input.chunk_z letsload-io if function letsload:forceload/anchor/verify/main if entity @s[tag=!letsload-internal.forceload.anchor.invalid] run return run function letsload:forceload/anchor/_func/add_signature
scoreboard players operation #util.get_chunk_lowest_pos.Input.chunk_x letsload-io = #forceload.anchor.easy_new.Input.chunk_x letsload-io
scoreboard players operation #util.get_chunk_lowest_pos.Input.chunk_z letsload-io = #forceload.anchor.easy_new.Input.chunk_z letsload-io
execute unless function letsload:util/get_chunk_lowest_pos/main run return fail
data modify storage letsload:internal dummy set value {}
execute store result storage letsload:internal dummy.x int 1 run scoreboard players get #util.get_chunk_lowest_pos.Result.pos_x letsload-io
execute store result storage letsload:internal dummy.z int 1 run scoreboard players get #util.get_chunk_lowest_pos.Result.pos_z letsload-io
return run function letsload:forceload/anchor/easy_new/_func/summon/main with storage letsload:internal dummy
