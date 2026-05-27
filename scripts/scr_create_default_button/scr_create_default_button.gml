// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if(USE_ASSETS_FOR_DEFAULT_LAYOUT)
{
	function scr_create_default_button(_x, _y, _spr, _blend, _angle)
	{
		var _vkey_vars = 
		{
			// Base buttons
			spr_button_joystick_base : { keycodes : [VKEYUI_KEY_TYPES.JOYSTICK, vk_up, vk_down, vk_left, vk_right], spr_joystick : spr_button_joystick, radius : sprite_get_width(_spr) / 2},
		
			spr_button_z_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("Z")] },
			spr_button_z : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("Z")] },
		
			spr_button_x_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("X")] },
			spr_button_x : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("X")] },
		
			spr_button_c_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("C")] },
			spr_button_c : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("C")] },
		
			spr_button_a_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("A")] },
			spr_button_a : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("A")] },
		
			spr_button_shoot_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("A")] },
			spr_button_shoot : { keycodes : [VKEYUI_KEY_TYPES.NONE, ord("A")] },
			
			spr_button_shift_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, vk_lshift], spr_pressed : spr_button_shift_big },
			spr_button_shift : { keycodes : [VKEYUI_KEY_TYPES.NONE, vk_lshift], spr_pressed : spr_button_shift  },
		
			spr_button_escape_big : { keycodes : [VKEYUI_KEY_TYPES.NONE, vk_escape] },
			spr_button_escape : { keycodes : [VKEYUI_KEY_TYPES.NONE, vk_escape] },
		
			spr_button_cog_big : { keycodes : [VKEYUI_KEY_TYPES.EDIT] },
			spr_button_cog : { keycodes : [VKEYUI_KEY_TYPES.EDIT] },
		
			spr_button_add_big : { keycodes : [VKEYUI_KEY_TYPES.ADD] },
			spr_button_add : { keycodes : [VKEYUI_KEY_TYPES.ADD] },
		
			spr_button_remove_big : { keycodes : [VKEYUI_KEY_TYPES.REMOVE] },
			spr_button_remove : { keycodes : [VKEYUI_KEY_TYPES.REMOVE] },
		
			spr_button_color_big : { keycodes : [VKEYUI_KEY_TYPES.COLOR] },
			spr_button_color : { keycodes : [VKEYUI_KEY_TYPES.COLOR] },
		
			spr_button_grid_big : { keycodes : [VKEYUI_KEY_TYPES.GRID], spr_pressed : spr_button_grid_pressed_big },
			spr_button_grid : { keycodes : [VKEYUI_KEY_TYPES.GRID], spr_pressed : spr_button_grid_pressed  },
		
			spr_button_save_big : { keycodes : [VKEYUI_KEY_TYPES.SAVE] },
			spr_button_save : { keycodes : [VKEYUI_KEY_TYPES.SAVE] },
		
			spr_button_load_big : { keycodes : [VKEYUI_KEY_TYPES.LOAD] },
			spr_button_load : { keycodes : [VKEYUI_KEY_TYPES.LOAD] },
		}
	
		var _vars = _vkey_vars[$ sprite_get_name(_spr)];
		if(_vars == undefined) _vars = {};
		
		if(_blend != c_white)
		{
			_vars.buttonlockable = true;
			_vars.pressed_color = _blend; 
		}
		
		//show_debug_message("[VIRTUAL_CONTROLLER] adding button: " + sprite_get_name(_spr) + " : " + string(_vars));
	
		var _inst = instance_create_depth(_x, _y, VKEY_DEPTH, obj_virtual_controller, _vars);	
		with(_inst)
		{
			image_angle = _angle;
			sprite = _spr;
			sprite_index = _spr;
			vkey_init_input();
		}
	}
}