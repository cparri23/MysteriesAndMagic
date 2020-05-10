event_inherited()
var hitEnter = keyboard_check_pressed(vk_enter)

if(hitEnter && global.playerCanInteract && (point_distance(global.playerLookX, global.playerLookY, x, y) < 25)) {
	start_interaction = true
}
