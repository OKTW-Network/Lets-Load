$execute store success score #1 temp run data remove entity @s data."letsload:forceload_anchor".register[{signature:"$(signature)"}]
execute unless score #1 temp matches 0 unless data entity @s data."letsload:forceload_anchor".register[].signature run tag @s add TASK.letsload-forceload_anchor.check_out
return run execute unless score #1 temp matches 0 run scoreboard players get #1 temp
