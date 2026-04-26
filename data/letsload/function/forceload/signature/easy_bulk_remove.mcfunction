scoreboard players reset #forceload.signature.easy_bulk_remove.Result letsload-io

function letsload:forceload/signature/_func/transfer_input_to_anchor
execute store result score #forceload.signature.easy_bulk_remove.Result letsload-io run function letsload:forceload/anchor/easy_bulk_remove_signature/main

function letsload:forceload/signature/_reset_function

return run execute unless score #forceload.signature.easy_bulk_remove.Result letsload-io matches 0 run scoreboard players get #forceload.signature.easy_bulk_remove.Result letsload-io
