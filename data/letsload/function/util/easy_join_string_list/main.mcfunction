data remove storage letsload:io util.easy_join_string_list.result
data modify storage letsload:internal dummy set value ""
data modify storage letsload:internal dummy set string storage letsload:io util.easy_join_string_list.separator
data modify storage letsload:io util.easy_join_string_list.separator set from storage letsload:internal dummy

data modify storage letsload:io util.easy_join_string_list.result set string storage letsload:io util.easy_join_string_list.input[0]
data remove storage letsload:io util.easy_join_string_list.input[0]
execute if data storage letsload:io util.easy_join_string_list.input[0] run function letsload:util/easy_join_string_list/join

data remove storage letsload:io util.easy_join_string_list.input
data remove storage letsload:io util.easy_join_string_list.separator

execute if data storage letsload:io util.easy_join_string_list.result run return 1
return fail
