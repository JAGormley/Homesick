///scrGetInput

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("H"), vk_space);
keyboard_set_map(ord("S"), vk_down); 


move_right = keyboard_check(vk_right)
move_left = keyboard_check(vk_left)
move_jump = keyboard_check_pressed(vk_space)
move_dash = keyboard_check_pressed(ord("M"))