var hsp = keyboard_check(global.key_right) - keyboard_check(global.key_left)
var vsp = keyboard_check(global.key_down) - keyboard_check(global.key_up)

x += hsp * 5
y += vsp * 5