execute unless data storage letsload:io forceload.anchor.Input.namespace run return fail
execute if data storage letsload:io forceload.anchor.Input{namespace:''} run return fail
execute if function letsload:forceload/anchor/_func/examine_try_terminate run return fail

data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.namespace set from storage letsload:io forceload.anchor.Input.namespace
return run function letsload:forceload/anchor/lazy_remove_namespace with storage letsload:internal dummy
