execute if loaded ~ ~ ~ run return fail
data merge entity @s {Tags:["letsload.forceload.unestablished_anchor"],data:{"letsload:forceload_anchor":{registry:[]}}}
scoreboard players add #forceload.anchor.busy_establish letsload-internal 1
schedule function letsload:forceload/anchor/busy_establish/main 1t replace
return 1
