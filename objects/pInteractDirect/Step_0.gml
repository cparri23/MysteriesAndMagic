//replace these with actual references
var _interactButtonDown = keyboard_check_released(vk_enter)
var _playerAbleToInteract = global.playerCanInteract
 //This should be moved into the statment so it can be shorted and not run every frmae

if(_interactButtonDown && _playerAbleToInteract && IsPlayerLookingAtMe()) {
	show_debug_message("I've been interacted with :)")
	show_debug_message("My id is:")
	show_debug_message(id)
	
	localFrame = 0
	
}