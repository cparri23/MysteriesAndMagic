//replace these with actual references
var _interactButtonDown = keyboard_check_released(vk_enter)
var _playerAbleToInteract = global.playerCanInteract

startInteraction = _interactButtonDown && _playerAbleToInteract && IsPlayerLookingAtMe()