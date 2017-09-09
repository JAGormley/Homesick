///scrGetInput

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("H"), vk_space);
keyboard_set_map(ord("S"), vk_down); 

var gpLeft = false
var gpRight = false
var gpUp = false
var gpDown = false
var axisFour = gamepad_axis_value(0, 4) > -1 ? gamepad_axis_value(0, 4) : -1
var axisFive = gamepad_axis_value(0, 5) > -1 ? gamepad_axis_value(0, 5) : -1

if axisFour == 0 && axisFive == 1 gpDown = true
else if axisFour == 1 && axisFive == 0 gpRight = true
else if axisFive == 0 && axisFour == -1 gpLeft = true
else if axisFour == 0 && axisFive == -1 gpUp = true

MoveRightAction = keyboard_check(vk_right) || gpRight
MoveLeftAction = keyboard_check(vk_left) || gpLeft
MoveJumpAction = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face2)
MoveDashAction = keyboard_check_pressed(ord("M"))
MoveJumpHeldAction = keyboard_check(vk_space) || gamepad_button_check(0, gp_face2)
MoveCrouchAction = keyboard_check(vk_down) || gpDown
MoveSlideAction = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_shoulderr)
MoveRunAction = keyboard_check_pressed(ord("N")) || gamepad_button_check_pressed(0, gp_face1)
MoveRunHeldAction = keyboard_check(ord("N")) || gamepad_button_check(0, gp_face1)