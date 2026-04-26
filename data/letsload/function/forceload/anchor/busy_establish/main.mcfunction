scoreboard players add $forceload.anchor.busy_establish letsload-alert 1
execute as @e[tag=letsload.forceload.unestablished_anchor,type=minecraft:marker] at @s run function letsload:forceload/anchor/busy_establish/_func/establish
tag @e remove letsload.forceload.just_established
execute if score #forceload.anchor.busy_establish letsload-internal matches 1.. run return run schedule function letsload:forceload/anchor/busy_establish/main 1t replace

scoreboard players set $forceload.anchor.busy_establish letsload-alert 0
function letsload:forceload/anchor/busy_establish/_reset_function
