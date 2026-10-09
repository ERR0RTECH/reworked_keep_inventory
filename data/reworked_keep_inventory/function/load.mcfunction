# Function that initiates all requirements for core mechanics
# Required for datapack to function
gamerule keep_inventory true

# Required scoreboards for XP math
scoreboard objectives add reworked_keep_inventory.xp dummy
scoreboard objectives add reworked_keep_inventory.xp.points dummy
scoreboard objectives add reworked_keep_inventory.xp.levels dummy
scoreboard objectives add reworked_keep_inventory.xp.levels_squared dummy
scoreboard objectives add reworked_keep_inventory.math dummy

# Required fake players for XP math
scoreboard players set #reworked_keep_inventory.math.0 reworked_keep_inventory.math 0
scoreboard players set #reworked_keep_inventory.math.1 reworked_keep_inventory.math 1
scoreboard players set #reworked_keep_inventory.math.2 reworked_keep_inventory.math 2
scoreboard players set #reworked_keep_inventory.math.5 reworked_keep_inventory.math 5
scoreboard players set #reworked_keep_inventory.math.6 reworked_keep_inventory.math 6
scoreboard players set #reworked_keep_inventory.math.9 reworked_keep_inventory.math 9
scoreboard players set #reworked_keep_inventory.math.-81 reworked_keep_inventory.math -81
scoreboard players set #reworked_keep_inventory.math.-325 reworked_keep_inventory.math -325

# Default XP penalty multiplier set to 2
# Set to 1 to store all XP
# Set to 3 to store 1/3 of XP
# Set to 4 to store 1/4 of XP
# ... etc
execute unless score #reworked_keep_inventory.xp.penalty.factor reworked_keep_inventory.math > #reworked_keep_inventory.math.0 reworked_keep_inventory.math run scoreboard players set #reworked_keep_inventory.xp.penalty.factor reworked_keep_inventory.math 2