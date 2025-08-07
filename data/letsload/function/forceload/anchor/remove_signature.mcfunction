scoreboard players set #forceload.anchor.remove_signature.FUNCTION_STAGE letsload-io 0
execute unless entity @s[type=minecraft:marker,tag=letsload-forceload_anchor] run return run function letsload:forceload/anchor/_return_fail
data remove storage letsload:internal dummy
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data remove storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy
execute unless data storage letsload:io forceload.anchor.signature run return run function letsload:forceload/anchor/_return_fail

scoreboard players set #forceload.anchor.remove_signature.FUNCTION_STAGE letsload-io 1
data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.signature
execute store success score #1 temp run function letsload:forceload/anchor/lazy_lax_remove_signature with storage letsload:internal dummy
execute if score #1 temp matches 0 run return run function letsload:forceload/anchor/_return_fail

scoreboard players set #forceload.anchor.remove_signature.FUNCTION_STAGE letsload-io 2
execute unless data entity @s data."lestload:forceload_anchor".register[].signature run tag @s add TASK.letsload-forceload_anchor.check_out

scoreboard players set #forceload.anchor.remove_signature.FUNCTION_STAGE letsload-io 3
function letsload:forceload/anchor/_reset_function

return 1
