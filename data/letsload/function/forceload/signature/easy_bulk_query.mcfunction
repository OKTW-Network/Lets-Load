data remove storage letsload:io forceload.signature.easy_bulk_query.Result

function letsload:forceload/signature/_func/transfer_input_to_anchor
function letsload:forceload/anchor/easy_bulk_query_signature/main
data modify storage letsload:io forceload.signature.easy_bulk_query.Result set from storage letsload:io forceload.anchor.easy_bulk_query_signature.Result

function letsload:forceload/signature/_reset_function

return run execute if data storage letsload:io forceload.signature.easy_bulk_query.Result[]
