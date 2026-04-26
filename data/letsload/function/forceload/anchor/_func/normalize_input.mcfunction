data modify storage letsload:internal dummy set value ''
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.Input.signature
data modify storage letsload:io forceload.anchor.Input.signature set from storage letsload:internal dummy

data modify storage letsload:internal dummy set value ''
data modify storage letsload:internal dummy set string storage letsload:io forceload.anchor.Input.namespace
data modify storage letsload:io forceload.anchor.Input.namespace set from storage letsload:internal dummy

execute unless score #forceload.anchor.Option.ignore_namespace letsload-io matches 0..1 run scoreboard players set #forceload.anchor.Option.ignore_namespace letsload-io 0
