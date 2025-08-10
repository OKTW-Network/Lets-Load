data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.remove_chunk.signature
execute store success score #forceload.signature.remove_chunk.Result letsload-io run function letsload:forceload/anchor/remove_signature
