if(wait_till_done) {
	global.eventInProgress = false
	global.hardInteraction = false
	ds_list_delete(global.events, 0)
}
var endFrame = angle
with(moveObject) {
	sprite_index = spriteIdle
	image_index = endFrame
}