# In earlier versions we didn't need to be as careful with rotation on armorstands as it would snap to angle increments when close enough. In 1.15 armorstands render the way they are actually pointed so many of the armorstands in the world need to be snapped to the correct rotation


execute as @e[tag=noticeBoard] run function hp:1_15_rotation_snap
execute as @e[tag=turningPillar] run function hp:1_15_rotation_snap