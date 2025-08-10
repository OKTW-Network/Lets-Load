data modify storage letsload:internal dummy set value {string1:"",string2:"",string3:""}
data modify storage letsload:internal dummy.string1 set string storage letsload:io util.easy_join_string_list.Result
data modify storage letsload:internal dummy.string2 set from storage letsload:io util.easy_join_string_list.separator
data modify storage letsload:internal dummy.string3 set string storage letsload:io util.easy_join_string_list.input[0]
function letsload:util/lazy_join_string with storage letsload:internal dummy
data modify storage letsload:io util.easy_join_string_list.Result set from storage letsload:io util.lazy_join_string.Result

data remove storage letsload:io util.easy_join_string_list.input[0]
execute if data storage letsload:io util.easy_join_string_list.input[0] run function letsload:util/easy_join_string_list/join
