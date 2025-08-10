tag @s remove TASK.letsload-forceload_anchor.check_out

execute if data entity @s data."letsload:forceload_anchor".register[].signature run return 2
kill @s
forceload remove ~ ~

return 1
