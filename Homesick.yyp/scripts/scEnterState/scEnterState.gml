///@params state
var state = argument0

var sprite = ds_map_find_value(global.StatesToSprites, state)
var spriteAnimSpeed = ds_map_find_value(global.StatesToSpriteAnimSpeeds, state)
sprite_index = sprite
image_index = 0
sprite_set_speed(sprite_index, spriteAnimSpeed, spritespeed_framespersecond)

// special state-entry actions
switch state {
	case states.jumping:
	case states.dashJumping:
	case states.runJumping:
		if State != states.jumping && 
			State != states.dashJumping &&
			State != states.runJumping {
				Velocity[AXES.y] = -JumpSpeed
				show_debug_message("jum")
			}
				
		break
	case states.dashing:
	case states.sliding:
		alarm[0] = room_speed/2
		break
	case states.preFalling:
		alarm[1] = room_speed/10
		break
}

State = state