scoreboard players set #1 temp 0
execute as @e[distance=0..,tag=letsload.forceload.anchor,type=minecraft:marker] \
  if score @s letsload-internal.forceload.anchor.chunk_x = #forceload.anchor.unestablished.chunk_x letsload-internal \ 
  if score @s letsload-internal.forceload.anchor.chunk_z = #forceload.anchor.unestablished.chunk_x letsload-internal \ 
run scoreboard players add #1 temp 1
scoreboard players remove #1 temp 1
execute if score #1 temp matches 1.. run return run function letsload:forceload/anchor/verify/_func/fail
return 1
