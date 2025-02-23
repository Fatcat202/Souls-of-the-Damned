/// @description Bounce

// Bounce upon hitting wall
move_bounce_all(true)
// Orient sprite with direction moving
image_angle = direction

num_bounces++
if(num_bounces > max_bounces) instance_destroy()

