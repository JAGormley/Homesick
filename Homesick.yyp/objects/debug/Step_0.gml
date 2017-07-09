/// @description Movement logic
// Get the input
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;

// Horizontal movement
Velocity[AXES.x] = clamp(Velocity[AXES.x]+x_input, -max_Velocity[AXES.x], max_Velocity[AXES.x]);

// Friction
if x_input == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, .2);
}

// Gravity
Velocity[AXES.y] += Gravity;

// Move and contact tiles
playerControlAndCollide(CollisionTileMapId, 32, Velocity);

// Jumping
var onGround = tileCollideAtPoints(CollisionTileMapId, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
if onGround {
	// Jumping
	if keyboard_check_pressed(vk_up) {
		Velocity[AXES.y] = -JumpSpeed;
	}
} else {
	// Control jump height
	if keyboard_check_released(vk_up) && Velocity[AXES.y] <= -(JumpSpeed/3) {
		Velocity[AXES.y] = -(JumpSpeed/3);
	}
}
