///@params xInput
///@params velMod
///@params applyFriction
var xInput = argument0
var velMod = argument1
var applyFriction = argument2

velMod = velMod == noone ? 1 : velMod

// Horizontal movement
Velocity[AXES.x] = 
	clamp(Velocity[AXES.x] + xInput, -MaxVelocity[0] * velMod, MaxVelocity[0] * velMod)

// Friction
if xInput == 0 && applyFriction {
	Velocity[AXES.x] = lerp(Velocity[AXES.x], 0, Friction)
}

if Velocity[AXES.x] > 0 {
	image_xscale = 1
	Dir = 1
} else if Velocity[AXES.x] < 0 {
	image_xscale = -1
	Dir = -1
}