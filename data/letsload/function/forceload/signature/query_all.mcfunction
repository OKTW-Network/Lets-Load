scoreboard players reset #forceload.signature.query_all.Result letsload-io

data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.query_all.signature
execute store result score #forceload.signature.query_all.Result letsload-io run function letsload:forceload/anchor/bulk_query_signature/main

data remove storage letsload:io forceload.signature.query_all.signature

return run execute unless score #forceload.signature.query_all.Result letsload-io matches 0 run scoreboard players get #forceload.signature.query_all.Result letsload-io
