data remove storage letsload:io forceload.anchor.easy_bulk_query_signature.Result
function letsload:forceload/anchor/_func/normalize_input

data modify storage letsload:io forceload.anchor.easy_bulk_query_signature.Result set value []
execute as @e[tag=letsload.forceload.anchor,type=minecraft:marker] run function letsload:forceload/anchor/easy_bulk_query_signature/_func

function letsload:forceload/anchor/_reset_function

return run execute if data storage letsload:io forceload.anchor.easy_bulk_query_signature.Result[]
