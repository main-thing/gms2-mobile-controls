draw_self();
if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self))
	draw_text(x, y, buttonlockable);

if(keycodes[0] == VKEYUI_KEY_TYPES.JOYSTICK)
{
	if(sprite_exists(spr_joystick))
		draw_sprite_ext(spr_joystick, 0, x + joy_x, y + joy_y, image_xscale * stick_xscale, image_yscale * stick_yscale, 0, joy_blend, image_alpha);
	if(global.vkeyui_movingvkeys && global.vkeyui_selectedvbutton == self)
	{
		draw_set_color(c_yellow)
		draw_set_alpha(0.5)
		draw_rectangle(
			bbox_left, 
			bbox_top,
			bbox_left + radius * (1 - joy_deadzone_x), 
			bbox_bottom, 
		true);
		
		draw_rectangle(
			bbox_right,
			bbox_top,
			bbox_right - radius * (1 - joy_deadzone_x),
			bbox_bottom,
		true);
		
		draw_rectangle(
			bbox_left,
			bbox_top + radius * (1 - joy_deadzone_y),
			bbox_right,
			bbox_top,
		true);
		
		draw_rectangle(
			bbox_left,
			bbox_bottom - radius * (1 - joy_deadzone_y),
			bbox_right,
			bbox_bottom, 
		true);
	}
}