/// @description movement logic

keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("W"), vk_space);
keyboard_set_map(ord("S"), vk_down);

var xInput = (keyboard_check(vk_right) - keyboard_check(vk_left)) * Acceleration;

Velocity[AXES.x] = clamp(Velocity[AXES.x] + xInput, -MaxVelocity[AXES.x], MaxVelocity[AXES.x])

// Friction
if xInput == 0 {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction)
}

// @TODO: player sometime falls through floor if this is above
// Gravity
Velocity[AXES.y] += Gravity

// Move and handle collisions
playerControlAndCollide(CollisionTileMapId, Velocity)