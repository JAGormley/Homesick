/// handleGroundAnim
///@param isStanding
///@param isDashing

var isStanding = argument0
var isDashing = argument1

if isStanding {
	sprite_index = standing
} else {	
	sprite_index = isDashing ? dashing : walking
}