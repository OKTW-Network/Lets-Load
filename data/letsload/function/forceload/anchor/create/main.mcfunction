scoreboard players set #forceload.anchor.create.FUNCTION_STAGE letsload-io 0
execute unless score #forceload.anchor.create.chunk_x letsload-io matches -1874999..1874998 run return run function letsload:forceload/anchor/create/_return_fail
execute unless score #forceload.anchor.create.chunk_z letsload-io matches -1874999..1874998 run return run function letsload:forceload/anchor/create/_return_fail

scoreboard players set #forceload.anchor.create.FUNCTION_STAGE letsload-io 1
data modify storage letsload:internal dummy set value {x:"INVALID",z:"INVALID"}
scoreboard players set #1 temp 16
scoreboard players operation #2 temp = #forceload.anchor.create.chunk_x letsload-io
scoreboard players operation #2 temp *= #1 temp
execute if score #forceload.anchor.create.chunk_x letsload-io matches ..-1 run scoreboard players add #2 temp 1
execute store result storage letsload:internal dummy.x int 1 run scoreboard players get #2 temp
scoreboard players operation #2 temp = #forceload.anchor.create.chunk_z letsload-io
scoreboard players operation #2 temp *= #1 temp
execute if score #forceload.anchor.create.chunk_z letsload-io matches ..-1 run scoreboard players add #2 temp 1
execute store result storage letsload:internal dummy.z int 1 run scoreboard players get #2 temp
execute store success score #1 temp run function letsload:forceload/anchor/create/create/main with storage letsload:internal dummy
execute if score #1 temp matches 0 run return run function letsload:forceload/anchor/create/_return_fail

scoreboard players set #forceload.anchor.create.FUNCTION_STAGE letsload-io 2
function letsload:forceload/anchor/create/_reset_function

return 1
