/// CreateAniMoveEvent
/// @params object
/// @params distance
/// @params angle (0 - 3 starting E)
/// @params animation (t/f)
/// @params speed
/// @params wait_till_done
/// @params stringargs

	aniMoveEvent = instance_create_layer(0, 0, "Instances", oeMoveEvent)
	
	with(aniMoveEvent) {
		moveObject = argument0
		dist = argument1 
		angle = argument2
		animation = argument3
		moveSpeed = argument4
		wait_till_done = argument5
		stringargs = argument6
		moveX = 0
		moveY = 0
		switch(angle) {
			case 0:
				aniKey = animationName.runE	
				moveX = 1
				break
			case 1:
				aniKey = animationName.runNE
				moveX = 1
				moveY = -1
				break
			case 2:
				aniKey = animationName.runN
				moveY = -1
				break
			case 3:
				aniKey = animationName.runNW
				moveX = -1
				moveY = -1
				break
			case 4:
				aniKey = animationName.runW
				moveX = -1
				break
			case 5:
				aniKey = animationName.runSW
				moveX = -1
				moveY = 1
				break
			case 6:
				aniKey = animationName.runS
				moveY = 1
				break
			case 7:
				aniKey = animationName.runSE
				moveX = 1
				moveY = 1
				break
		}
		
		var moveDirection = point_direction(0, 0, moveX, moveY);
		
		hSpeed = lengthdir_x(moveSpeed, moveDirection);
		vSpeed = lengthdir_y(moveSpeed, moveDirection);
		
		var pulledAniInfo = moveObject.aniInfo[? aniKey]
		frame_start = pulledAniInfo[0];
		frame_amount = pulledAniInfo[1];
		frame_duration = pulledAniInfo[2];
		
		local_frame = 0
		exhaustedDur = 0
		total_move = 0
		

	}
	
	ds_list_add(global.events, aniMoveEvent)