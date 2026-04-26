function letsload:forceload/anchor/_func/remove_signature
data modify storage letsload:internal dummy set value {}
execute if score #forceload.anchor.Option.ignore_namespace letsload-io matches 0 run data modify storage letsload:internal dummy.namespace set from storage letsload:io forceload.anchor.Input.namespace
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.Input.signature
return run data modify entity @s data."letsload:forceload_anchor".registry append from storage letsload:internal dummy
