var statesToSprites = ds_map_create()
ds_map_add(statesToSprites, states.idle, spIdle)
ds_map_add(statesToSprites, states.walking, spWalking)
ds_map_add(statesToSprites, states.dashing, spDashing)
ds_map_add(statesToSprites, states.jumping, spJumping)
ds_map_add(statesToSprites, states.dashJumping, spJumping)
ds_map_add(statesToSprites, states.sliding, spSliding)
ds_map_add(statesToSprites, states.crouchingUp, spCrouchingUp)
ds_map_add(statesToSprites, states.crouchingDown, spCrouchingDown)

var statesToScripts = ds_map_create()
ds_map_add(statesToScripts, states.idle, scIdle)
ds_map_add(statesToScripts, states.walking, scWalking)
ds_map_add(statesToScripts, states.dashing, scDashing)
ds_map_add(statesToScripts, states.jumping, scJumping)
ds_map_add(statesToScripts, states.dashJumping, scJumping)
ds_map_add(statesToScripts, states.sliding, scSliding)
ds_map_add(statesToScripts, states.crouchingUp, scCrouchingUp)
ds_map_add(statesToScripts, states.crouchingDown, scCrouchingDown)

global.StatesToSprites = statesToSprites
global.StatesToScripts = statesToScripts

room_goto_next()