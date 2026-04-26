function letsload:forceload/signature/_func/normalize_input
data modify storage letsload:io forceload.anchor.Input.namespace set from storage letsload:io forceload.signature.Input.namespace
data modify storage letsload:io forceload.anchor.Input.signature set from storage letsload:io forceload.signature.Input.signature
scoreboard players operation #forceload.anchor.Option.ignore_namespace letsload-io = #forceload.signature.Option.ignore_namespace letsload-io
