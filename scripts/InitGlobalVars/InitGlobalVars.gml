global.lightInteraction = false
global.hardInteraction = false

global.eventQueue = ds_queue_create()
global.textQueue = ds_queue_create()
global.concurrentEvents = ds_map_create()

global.eventInProgress = false
global.evt_DrawTextBack = false
global.playerCanInteract = true

global.playerX = 0
global.playerY = 0
global.playerLookX = 0
global.playerLookY = 0