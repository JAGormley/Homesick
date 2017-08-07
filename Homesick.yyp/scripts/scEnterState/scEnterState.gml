///@params state
var state = argument0

var sprite = ds_map_find_value(global.StatesToSprites, state)
var spriteAnimSpeed = ds_map_find_value(global.StatesToSpriteAnimSpeeds, state)
sprite_index = sprite
//if sprite_index == spIdle show_message("yarp")
image_index = 0
sprite_set_speed(sprite_index, spriteAnimSpeed, spritespeed_framespersecond)
State = state