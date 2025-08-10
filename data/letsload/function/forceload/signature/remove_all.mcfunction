data modify storage letsload:io forceload.anchor.signature set from storage letsload:io forceload.signature.remove_all.signature
function letsload:forceload/anchor/bulk_remove_signature

data remove storage letsload:io forceload.signature.remove_all.signature

return 1
