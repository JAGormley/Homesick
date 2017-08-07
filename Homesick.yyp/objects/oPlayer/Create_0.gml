/// Init
Dir = -1					// direction the player is facing
Velocity = [0, 0]
Gravity=.45
MaxVelocity = [4, 4]
JumpSpeed = 9
Acceleration = 2
DashAcceleration = 100
DashSpeed = 2.5
Friction = 1
Velocity = [0, 0]
Jump = false
State = states.idle
var layerId = layer_get_id("collision16")
CollisionTileMapId = layer_tilemap_get_id(layerId)