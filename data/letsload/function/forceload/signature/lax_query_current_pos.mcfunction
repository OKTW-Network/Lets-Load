scoreboard players reset #forceload.signature.lax_query_current_pos.Result letsload-io
$data modify storage letsload:io forceload.signature.Input.namespace set value '$(namespace)'
$data modify storage letsload:io forceload.signature.Input.signature set value '$(signature)'
$scoreboard players set #forceload.signature.Option.ignore_namespace letsload-io $(ignore_namespace)

execute store result score #forceload.signature.lax_query_current_pos.Result letsload-io run function letsload:forceload/signature/easy_query_current_pos

function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.lax_query_current_pos.Result letsload-io matches 0 run scoreboard players get #forceload.signature.lax_query_current_pos.Result letsload-io
