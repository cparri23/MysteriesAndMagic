	if(just_activated) {
		just_activated = false
		if(!wait_till_done) {
			ds_list_delete(global.eventQueue, 0)
			global.eventInProgress = false
		}
	}
	
	exhaustedDur += FRAME_DURATION
	
	if(exhaustedDur > frame_duration[local_frame]) {
		exhaustedDur -= frame_duration[local_frame]
		if(local_frame >= frame_amount) {
			local_frame = 0	
		}
		else {
			local_frame++;	
		}
	}
	
	total_move += moveSpeed
	if(total_move >= dist) {
		instance_destroy(self)
		exit
	}
	
	var setFrame = local_frame + frame_start
	var x_inc = hSpeed
	var y_inc = vSpeed
	var moveDirection = point_direction(0, 0, moveX, moveY);
	with(moveObject) {
		x += x_inc
		y += y_inc
		image_index = setFrame
		direction = moveDirection;
		sprite_index = spriteRun;
	}