/// Init
Dir = -1					// direction the player is facing
Velocity = [0, 0]
Gravity=.5
MaxVelocity = [2, 4]
JumpSpeed = 10
Acceleration = 2
DashAcceleration = 100
Friction = 1

var layerId = layer_get_id("coll2")
CollisionTileMapId = layer_tilemap_get_id(layerId)

sprite_index = standing;
anim_speed = 1.2;			
image_speed = anim_speed;

scrGetInput()
state = scrMoveState