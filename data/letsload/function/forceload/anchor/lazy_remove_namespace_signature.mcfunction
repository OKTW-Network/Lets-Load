$execute store result score #1 temp run data remove entity @s data."letsload:forceload_anchor".registry[{namespace:'$(namespace)',signature:'$(signature)'}]
function letsload:forceload/anchor/_func/examine_try_terminate
return run execute unless score #1 temp matches 0 run scoreboard players get #1 temp
