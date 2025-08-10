scoreboard players set #forceload.anchor.add_signature.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.add_signature.Result letsload-io
execute unless entity @s[type=minecraft:marker,tag=letsload-forceload_anchor] run return run function letsload:forceload/anchor/_return_fail
data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy

scoreboard players set #forceload.anchor.add_signature.FUNCTION_STAGE letsload-io 1
data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.signature
function letsload:forceload/anchor/lazy_lax_remove_signature with storage letsload:internal dummy
execute store success score #forceload.anchor.add_signature.Result letsload-io run data modify entity @s data."letsload:forceload_anchor".register append from storage letsload:io forceload.anchor.signature

scoreboard players set #forceload.anchor.add_signature.FUNCTION_STAGE letsload-io 2
function letsload:forceload/anchor/_reset_function

return run execute unless score #forceload.anchor.add_signature.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.add_signature.Result letsload-io
