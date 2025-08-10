# To be directly executed by an entity or for an example/template purpose.

execute if function letsload:util/easy_stringify_entity_uuid run data modify storage letsload:io forceload.add_current_pos.signature set from storage letsload:io util.easy_join_string_list.Result
return run function letsload:forceload/signature/add_current_pos/main
