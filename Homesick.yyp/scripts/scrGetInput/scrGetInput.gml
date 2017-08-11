///scrGetInput

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("H"), vk_space);
keyboard_set_map(ord("S"), vk_down); 


MoveRightAction = keyboard_check(vk_right)
MoveLeftAction = keyboard_check(vk_left)
MoveJumpAction = keyboard_check_pressed(vk_space)
MoveDashAction = keyboard_check_pressed(ord("M"))
MoveJumpHeldAction = keyboard_check(vk_space)
MoveCrouchAction = keyboard_check(vk_down)
MoveSlideAction = keyboard_check_pressed(vk_down)