/// Init
Dir = -1					// direction the player is facing
Velocity = [0, 0]
Gravity=1.5
MaxVelocity = [8, 32]
JumpSpeed = 28
Acceleration = 2.1
Friction = 0.2


var layerId = layer_get_id("coll2")
CollisionTileMapId = layer_tilemap_get_id(layerId)


//sprite_index = standing;
anim_speed = 0.7;			
image_speed = anim_speed;


//				// speed the player will move at					// gravity that applies to the player
//		// animation to play
//	// animation speed
//health = 3;					// heath of the player			// flag if the player is climbing
//xspeed = 6;					// horizontal speed of the player
//yspeed = -6;				// vertical speed of the player	
//fall = false;				// flag if the player is falling
//						// gravity that applies to the player
//gravmax=12;					// terminal velocity when falling
//gravdelta=1.2;				// difference in gravity
//grav_jump = -18;			// jump gravity
//jump=false;					// flag if the player is jumping
//// camera that follows the player
//view_camera[0] = camera_create_view(x-500,y-200,640,360,0,playerObject,-1,-1,100,100);
