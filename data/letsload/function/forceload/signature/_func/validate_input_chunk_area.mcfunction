execute unless score #forceload.signature.Input.chunk_x1 letsload-io matches -1874999..1874998 run return fail
execute unless score #forceload.signature.Input.chunk_z1 letsload-io matches -1874999..1874998 run return fail
execute unless score #forceload.signature.Input.chunk_x2 letsload-io matches -1874999..1874998 run return fail
execute unless score #forceload.signature.Input.chunk_z2 letsload-io matches -1874999..1874998 run return fail

execute if score #forceload.signature.Input.chunk_x1 letsload-io > #forceload.signature.Input.chunk_x2 letsload-io run scoreboard players operation #forceload.signature.Input.chunk_x1 letsload-io >< #forceload.signature.Input.chunk_x2 letsload-io
execute if score #forceload.signature.Input.chunk_z1 letsload-io > #forceload.signature.Input.chunk_z2 letsload-io run scoreboard players operation #forceload.signature.Input.chunk_z1 letsload-io >< #forceload.signature.Input.chunk_z2 letsload-io
scoreboard players operation #1 temp = #forceload.signature.Input.chunk_x2 letsload-io
scoreboard players operation #1 temp -= #forceload.signature.Input.chunk_x1 letsload-io
scoreboard players add #1 temp 1
scoreboard players operation #2 temp = #forceload.signature.Input.chunk_x2 letsload-io
scoreboard players operation #2 temp -= #forceload.signature.Input.chunk_x1 letsload-io
scoreboard players add #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute unless score #1 temp matches -256..-1 unless score #1 temp matches 1..256 run return fail

return 1
