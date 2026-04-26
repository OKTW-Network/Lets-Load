tag @s remove letsload-internal.forceload.anchor.try_terminate
execute if data entity @s data."letsload:forceload_anchor".registry[].signature run return fail
function letsload:forceload/anchor/terminate
return 1
