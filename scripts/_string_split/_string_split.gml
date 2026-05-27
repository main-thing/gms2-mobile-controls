// lifted from scr_debug_commands.gml
if(PRE_2023_GM)
{
	function _string_split(argument0, argument1)
	{
		argument0 += " "
		var _current_str = ""
		var _list = [0]
		for (var i = 1; i < string_length(argument0) + 1; i++)
		{
			var _char = string_char_at(argument0, i)
			if _char != argument1
				_current_str += _char
			else
			{
				array_push(_list, _current_str)
				_current_str = ""
			}
		}
		return _list;
	}
} else exit;