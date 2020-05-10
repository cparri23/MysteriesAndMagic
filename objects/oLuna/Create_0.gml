image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;

spriteRun = sLunaRun;
spriteIdle = sLuna;
localFrame = 0;
stopMe = false
lookDistance = 10

aniInfo = ds_map_create()
ds_map_add(aniInfo, animationName.runE, [0, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runNE, [6, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runN, [12, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runNW, [18, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runW, [24, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runSW, [30, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runS, [36, 6, [100, 100, 100, 100, 100, 100]])
ds_map_add(aniInfo, animationName.runSE, [42, 6, [100, 100, 100, 100, 100, 100]])