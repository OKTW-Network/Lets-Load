scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 10
data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.add_chunk.signature
execute store success score #forceload.signature.add_chunk.Result letsload-io run function letsload:forceload/anchor/add_signature

scoreboard players set #forceload.signature.add_chunk.FUNCTION_STAGE letsload-io 11
function letsload:forceload/signature/add_chunk/_reset_function

return run execute unless score #forceload.signature.add_chunk.Result letsload-io matches 0 run scoreboard players get #forceload.signature.add_chunk.Result letsload-io
