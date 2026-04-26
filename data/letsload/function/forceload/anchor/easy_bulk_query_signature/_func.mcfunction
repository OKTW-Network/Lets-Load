execute store result score #1 temp run function letsload:forceload/anchor/_func/query_signature
execute unless score #1 temp matches 1.. run return fail
data modify storage letsload:internal dummy set value {chunk_x:'INVALID',chunk_z:'INVALID',coord:[I;]}
execute store result storage letsload:internal dummy.chunk_x int 1 run scoreboard players get @s letsload-internal.forceload.anchor.chunk_x
execute store result storage letsload:internal dummy.chunk_z int 1 run scoreboard players get @s letsload-internal.forceload.anchor.chunk_z
data modify storage letsload:internal dummy.coord append from storage letsload:internal dummy.chunk_x
data modify storage letsload:internal dummy.coord append from storage letsload:internal dummy.chunk_z
data modify storage letsload:io forceload.anchor.easy_bulk_query_signature.Result append from storage letsload:internal dummy.coord
