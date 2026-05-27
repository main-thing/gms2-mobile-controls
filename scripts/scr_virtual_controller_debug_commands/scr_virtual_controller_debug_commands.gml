register_vkey_debug_command
(
	function()
	{
		var _str = "";
	    for(var i = 0; i < argument_count; i ++)
	    {
	        _str += string(argument[i]) + " ";
	    }
		show_debug_message(_str)
	},
	"show_debug_message",
	"show_debug_message str"
);