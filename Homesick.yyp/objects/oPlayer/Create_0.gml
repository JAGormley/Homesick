/// Init
Dir = -1					// direction the player is facing
Velocity = [0, 0]
Gravity=.45
MaxVelocity = [2, 4]
JumpSpeed = 9
Acceleration = 2
DashAcceleration = 100
DashSpeed = 2.5
Friction = 1
Jump = false

var layerId = layer_get_id("collision16")
CollisionTileMapId = layer_tilemap_get_id(layerId)

sprite_index = standing
LastSprite = sprite_index
anim_speed = 1.2			
image_speed = anim_speed

scrGetInput()
state = scrMoveState


//if jumping, dashState should be extended, so alarm wont work