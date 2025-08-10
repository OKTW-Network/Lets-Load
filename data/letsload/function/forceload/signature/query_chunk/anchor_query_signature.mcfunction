data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.query_chunk.signature
execute store success score #forceload.signature.query_chunk.Result letsload-io run function letsload:forceload/anchor/query_signature
