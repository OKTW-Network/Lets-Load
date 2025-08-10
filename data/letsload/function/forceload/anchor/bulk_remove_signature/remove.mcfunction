data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.signature
execute store success score #1 temp run function letsload:forceload/anchor/lazy_lax_remove_signature with storage letsload:internal dummy
scoreboard players operation #forceload.anchor.bulk_remove_signature.Result letsload-io += #1 temp
