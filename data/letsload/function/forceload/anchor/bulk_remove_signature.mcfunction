data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy

data modify storage letsload:internal dummy set value {}
data modify storage letsload:internal dummy.signature set from storage letsload:io forceload.anchor.signature
execute as @e[type=minecraft:marker,tag=letsload-forceload_anchor] run function letsload:forceload/anchor/lazy_lax_remove_signature with storage letsload:internal dummy

function letsload:forceload/anchor/_reset_function

return 1
