scoreboard players set #forceload.anchor.query_signature.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.query_signature.Result letsload-io
execute unless entity @s[type=minecraft:marker,tag=letsload-forceload_anchor] run return run function letsload:forceload/anchor/_return_fail
data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy

scoreboard players set #forceload.anchor.query_signature.FUNCTION_STAGE letsload-io 1
data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.signature
execute store success score #forceload.anchor.query_signature.Result letsload-io run function letsload:forceload/anchor/lazy_lax_query_signature with storage letsload:internal dummy

scoreboard players set #forceload.anchor.query_signature.FUNCTION_STAGE letsload-io 2
function letsload:forceload/anchor/_reset_function

return run scoreboard players get #forceload.anchor.query_signature.Result letsload-io
