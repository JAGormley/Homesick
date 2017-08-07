var statesToSprites = ds_map_create()
ds_map_add(statesToSprites, states.idle, spId)
ds_map_add(statesToSprites, states.walking, spWalking)
ds_map_add(statesToSprites, states.dashing, spDashing)
ds_map_add(statesToSprites, states.jumping, spJumping)
ds_map_add(statesToSprites, states.dashJumping, spJumping)
ds_map_add(statesToSprites, states.sliding, spSliding)
ds_map_add(statesToSprites, states.crouchingUp, spCrouchingUp)
ds_map_add(statesToSprites, states.crouchingDown, spCrouchingDown)
ds_map_add(statesToSprites, states.falling, spFalling)

var statesToScripts = ds_map_create()
ds_map_add(statesToScripts, states.idle, scIdle)
ds_map_add(statesToScripts, states.walking, scWalking)
ds_map_add(statesToScripts, states.dashing, scDashing)
ds_map_add(statesToScripts, states.jumping, scJumping)
ds_map_add(statesToScripts, states.dashJumping, scJumping)
ds_map_add(statesToScripts, states.sliding, scSliding)
ds_map_add(statesToScripts, states.crouchingUp, scCrouchingUp)
ds_map_add(statesToScripts, states.crouchingDown, scCrouchingDown)
ds_map_add(statesToScripts, states.falling, scFalling)

var statesToSpriteAnimSpeeds = ds_map_create()
ds_map_add(statesToSpriteAnimSpeeds, states.idle, 0)
ds_map_add(statesToSpriteAnimSpeeds, states.walking, 12)
ds_map_add(statesToSpriteAnimSpeeds, states.dashing, 10)
ds_map_add(statesToSpriteAnimSpeeds, states.jumping, 12)
ds_map_add(statesToSpriteAnimSpeeds, states.dashJumping, 12)
ds_map_add(statesToSpriteAnimSpeeds, states.sliding, 10)
ds_map_add(statesToSpriteAnimSpeeds, states.crouchingUp, 28)
ds_map_add(statesToSpriteAnimSpeeds, states.crouchingDown, 35)
ds_map_add(statesToSpriteAnimSpeeds, states.falling, 10)

global.StatesToSprites = statesToSprites
global.StatesToScripts = statesToScripts
global.StatesToSpriteAnimSpeeds = statesToSpriteAnimSpeeds

room_goto_next()