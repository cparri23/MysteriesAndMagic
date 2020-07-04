//var _obj2 = instance_create_layer(100, 100, "Instances", oBall_Purple)
show_debug_message(create_X)
show_debug_message(create_Y)
show_debug_message(create_object)
show_debug_message(oBall_Red)
var _obj = instance_create_layer(create_X, create_Y, "Instances", object)
ds_map_add(global.eventObjects, name, _obj);