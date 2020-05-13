Player_GatherInput()

if(global.playerCanMove) {
	Player_UpdateMove()
}

if(global.playerCanInteract) {
	Player_UpdateInteract()	
}

global.playerX = x;
global.playerY = y;