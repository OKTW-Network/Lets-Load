function letsload:forceload/signature/_func/transfer_input_to_anchor
execute store result score #1 temp run function letsload:forceload/anchor/easy_remove_signature
scoreboard players operation #forceload.signature.easy_remove_chunk.Result letsload-io += #1 temp
