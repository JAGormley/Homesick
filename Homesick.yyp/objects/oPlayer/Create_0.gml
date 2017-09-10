/// Init
Dir = -1					// direction the player is facing
Velocity = [0, 0]
Gravity=.4
MaxVelocity = [3, 16]
JumpSpeed = 7.5
Acceleration = 2
DashAcceleration = 100
DashSpeed = 2.5
RunSpeed = 1.7
RunJumpHSpeed = 1.8
JumpHSpeed = 1.2
Friction = 1
Velocity = [0, 0]
Jump = false
State = states.idle
var layerId = layer_get_id("tlCollision16")
CollisionTileMapId = layer_tilemap_get_id(layerId)