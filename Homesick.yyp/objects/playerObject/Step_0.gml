/// @description movement logic

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_space);
keyboard_set_map(ord("S"), vk_down);

// Get the input
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * Acceleration;

// Horizontal movement
Velocity[AXES.x] = clamp(Velocity[AXES.x]+x_input, -MaxVelocity[AXES.x], MaxVelocity[AXES.x]);

// Friction
if x_input == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction);
}

// Gravity
Velocity[AXES.y] += Gravity;

// Move and contact tiles
playerControlAndCollide(CollisionTileMapId, 32, Velocity);

// Jumping
var onGround = tileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
if onGround {
	// Jumping
	if keyboard_check_pressed(vk_space) {
		Velocity[AXES.y] = -JumpSpeed;
	}
} else {
	// Control jump height
	if keyboard_check_released(vk_space) && Velocity[AXES.y] <= -(JumpSpeed/3) {
		Velocity[AXES.y] = -(JumpSpeed/3);
	}
}

animationHandler(Velocity[AXES.x], onGround)