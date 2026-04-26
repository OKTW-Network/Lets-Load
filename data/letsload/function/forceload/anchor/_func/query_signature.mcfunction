execute if function letsload:forceload/anchor/_func/examine_try_terminate run return fail

data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.namespace set from storage letsload:io forceload.anchor.Input.namespace
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.Input.signature
execute if score #forceload.anchor.Option.ignore_namespace letsload-io matches 0 run return run function letsload:forceload/anchor/lazy_query_namespace_signature with storage letsload:internal dummy
execute if score #forceload.anchor.Option.ignore_namespace letsload-io matches 1 run return run function letsload:forceload/anchor/lazy_query_signature with storage letsload:internal dummy
