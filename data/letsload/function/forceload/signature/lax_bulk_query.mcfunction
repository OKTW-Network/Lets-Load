data remove storage letsload:io forceload.signature.lax_bulk_query.Result
$data modify storage letsload:io forceload.signature.Input.namespace set value '$(namespace)'
$data modify storage letsload:io forceload.signature.Input.signature set value '$(signature)'
$scoreboard players set #forceload.signature.Option.ignore_namespace letsload-io $(ignore_namespace)

function letsload:forceload/signature/easy_bulk_query
data modify storage letsload:io forceload.signature.lax_bulk_query.Result set from storage letsload:io forceload.signature.easy_bulk_query.Result

function letsload:forceload/signature/_reset_function

return run execute if data storage letsload:io forceload.signature.lax_bulk_query.Result[]
