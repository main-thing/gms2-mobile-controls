/// @description Clear vkeys
with(obj_virtual_controller)
{
	for(var i = 0; i < array_length(vkeys); i++)
		virtual_key_delete(vkeys[i]);
	vkeys = [];
}