scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 10
data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.add_chunk.signature
execute store success score #1 temp run function letsload:forceload/anchor/add_signature
execute if score #1 temp matches 0 run return run function letsload:forceload/signature/add_chunk/_return_fail

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 11
function letsload:forceload/signature/add_chunk/_reset_function

return 1
