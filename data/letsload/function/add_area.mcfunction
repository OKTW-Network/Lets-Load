# To be directly executed by an entity or for an example/template purpose.

execute if function letsload:util/easy_stringify_entity_uuid run data modify storage letsload:io forceload.add_pos_area.signature set from storage letsload:io util.easy_join_string_list.result
$data modify storage letsload:io forceload.add_pos_area.x1 set value $(x1)
$data modify storage letsload:io forceload.add_pos_area.z1 set value $(z1)
$data modify storage letsload:io forceload.add_pos_area.x2 set value $(x2)
$data modify storage letsload:io forceload.add_pos_area.z2 set value $(z2)
return run function letsload:forceload/signature/add_pos_area/main
