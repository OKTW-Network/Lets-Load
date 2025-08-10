scoreboard players reset #forceload.anchor.bulk_query_signature.Result letsload-io
data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy

execute as @e[type=minecraft:marker,tag=letsload-forceload_anchor] run function letsload:forceload/anchor/bulk_query_signature/query

function letsload:forceload/anchor/_reset_function

return run scoreboard players get #forceload.anchor.bulk_query_signature.Result letsload-io
