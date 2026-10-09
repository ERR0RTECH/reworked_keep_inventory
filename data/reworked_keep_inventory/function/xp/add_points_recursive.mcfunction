# Recursive function that sets XP amount after death
xp add @s 1 points
scoreboard players remove @s reworked_keep_inventory.xp 1
execute if score @s reworked_keep_inventory.xp > #reworked_keep_inventory.math.0 reworked_keep_inventory.math run function reworked_keep_inventory:xp/add_points_recursive