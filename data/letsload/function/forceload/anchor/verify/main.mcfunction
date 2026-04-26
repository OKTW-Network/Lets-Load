scoreboard players set #forceload.anchor.verify.FUNCTION_STAGE letsload-io 0
scoreboard players reset #forceload.anchor.verify.Result letsload-io
execute unless entity @s[type=minecraft:marker] run return fail

scoreboard players set #forceload.anchor.verify.FUNCTION_STAGE letsload-io 1
scoreboard players set #forceload.anchor.verify.Result letsload-io 0
execute if function letsload:forceload/anchor/verify/_func/verify_misaligned if function letsload:forceload/anchor/verify/_func/verify_redundant run scoreboard players set #forceload.anchor.verify.Result letsload-io 1

scoreboard players set #forceload.anchor.verify.FUNCTION_STAGE letsload-io -1
return run execute unless score #forceload.anchor.verify.Result letsload-io matches 0 run scoreboard players get #forceload.anchor.verify.Result letsload-io
