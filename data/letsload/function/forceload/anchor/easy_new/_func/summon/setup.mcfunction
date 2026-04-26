forceload add ~ ~
execute unless function letsload:forceload/anchor/easy_new/_func/summon/not_loaded run data merge entity @s {Tags:["letsload.forceload.anchor"],data:{"letsload:forceload_anchor":{registry:[]}}}
scoreboard players operation @s letsload-internal.forceload.anchor.chunk_x = #forceload.anchor.easy_new.Input.chunk_x letsload-io
scoreboard players operation @s letsload-internal.forceload.anchor.chunk_z = #forceload.anchor.easy_new.Input.chunk_z letsload-io
return run function letsload:forceload/anchor/_func/add_signature
