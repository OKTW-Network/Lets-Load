data remove storage letsload:io util.easy_stringify_entity_uuid.result
execute unless data entity @s UUID run return fail
data modify storage letsload:internal dummy set value "_"
data modify storage letsload:internal dummy set string storage letsload:io util.easy_stringify_entity_uuid.separator
data modify storage letsload:io util.easy_stringify_entity_uuid.separator set from storage letsload:internal dummy
data modify storage letsload:internal dummy set value "<UUID_"
data modify storage letsload:internal dummy set string storage letsload:io util.easy_stringify_entity_uuid.prefix
data modify storage letsload:io util.easy_stringify_entity_uuid.prefix set from storage letsload:internal dummy
data modify storage letsload:internal dummy set value ">"
data modify storage letsload:internal dummy set string storage letsload:io util.easy_stringify_entity_uuid.suffix
data modify storage letsload:io util.easy_stringify_entity_uuid.suffix set from storage letsload:internal dummy

data modify storage letsload:io util.easy_join_string_list.input set value []
data modify storage letsload:io util.easy_join_string_list.input append string entity @s UUID[]
data modify storage letsload:io util.easy_join_string_list.separator set from storage letsload:io util.easy_stringify_entity_uuid.separator
function letsload:util/easy_join_string_list/main
data modify storage letsload:io util.easy_join_string_list.input set value []
data modify storage letsload:io util.easy_join_string_list.input append from storage letsload:io util.easy_stringify_entity_uuid.prefix
data modify storage letsload:io util.easy_join_string_list.input append from storage letsload:io util.easy_join_string_list.result
data modify storage letsload:io util.easy_join_string_list.input append from storage letsload:io util.easy_stringify_entity_uuid.suffix
function letsload:util/easy_join_string_list/main
data modify storage letsload:io util.easy_stringify_entity_uuid.result set from storage letsload:io util.easy_join_string_list.result

data remove storage letsload:io util.easy_stringify_entity_uuid.separator
data remove storage letsload:io util.easy_stringify_entity_uuid.prefix
data remove storage letsload:io util.easy_stringify_entity_uuid.suffix

execute if data storage letsload:io util.easy_stringify_entity_uuid.result run return 1
return fail
