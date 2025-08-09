data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.signature
data modify storage letsload:io forceload.anchor.signature set from storage letsload:internal dummy
return run data modify entity @s data."lestload:forceload_anchor".register append from storage letsload:io forceload.anchor.signature
