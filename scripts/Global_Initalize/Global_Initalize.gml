global.eventQueue = ds_queue_create()
global.textQueue = ds_queue_create()
global.moveQueue = ds_queue_create()
global.concurrentEvents = ds_map_create()

global.eventInProgress = false
global.evt_DrawTextBack = false
global.playerInEvent = false

global.playerCanInteract = true
global.playerCanMove = true

global.playerX = 0
global.playerY = 0
global.playerLookX = 0
global.playerLookY = 0