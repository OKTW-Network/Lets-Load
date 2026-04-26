execute unless score #forceload.signature.Option.ignore_namespace letsload-io matches 0..1 run scoreboard players set #forceload.signature.Option.ignore_namespace letsload-io 0
execute if score #forceload.signature.Option.ignore_namespace letsload-io matches 1 run data remove storage letsload:io forceload.signature.Input.namespace
