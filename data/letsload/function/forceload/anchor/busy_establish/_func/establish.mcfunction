data modify storage letsload:internal forcelaod.anchor.unestablished.registry set from entity @s data."letsload:forceload_anchor".registry
scoreboard players operation #forceload.anchor.unestablished.chunk_x letsload-internal = @s letsload-internal.forceload.anchor.chunk_x
scoreboard players operation #forceload.anchor.unestablished.chunk_z letsload-internal = @s letsload-internal.forceload.anchor.chunk_z

execute as @e[distance=0..,tag=letsload.forceload.anchor,tag=!letsload.forceload.just_established,type=minecraft:marker] \
  if score @s letsload-internal.forceload.anchor.chunk_x = #forceload.anchor.unestablished.chunk_x letsload-internal \ 
  if score @s letsload-internal.forceload.anchor.chunk_z = #forceload.anchor.unestablished.chunk_x letsload-internal \ 
run kill @s

scoreboard players set #1 temp 0
execute store result score #1 temp as @e[distance=0..,tag=letsload.forceload.anchor,tag=letsload.forceload.just_established,type=minecraft:marker] \
  if score @s letsload-internal.forceload.anchor.chunk_x = #forceload.anchor.unestablished.chunk_x letsload-internal \
  if score @s letsload-internal.forceload.anchor.chunk_z = #forceload.anchor.unestablished.chunk_x letsload-internal \ 
run data modify entity @s data."letsload:forceload_anchor".registry append from storage letsload:internal forcelaod.anchor.unestablished.registry[]
execute unless score #1 temp matches 0 run return run function letsload:forceload/anchor/busy_establish/_func/complete_and_kill

function letsload:forceload/anchor/busy_establish/_func/complete
tag @s add letsload.forceload.anchor
