$execute store success score #1 temp run data remove entity @s data."lestload:forceload_anchor".register[{signature:"$(signature)"}]
execute if score #1 temp matches 1 unless data entity @s data."lestload:forceload_anchor".register[].signature run tag @s add TASK.letsload-forceload_anchor.check_out
return run scoreboard players get #1 temp
