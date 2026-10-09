# Function for player XP penalty
execute store result score @s reworked_keep_inventory.xp.levels store result score @s reworked_keep_inventory.xp store result score @s reworked_keep_inventory.xp.levels_squared run xp query @s levels
execute store result score @s reworked_keep_inventory.xp.points run xp query @s points
scoreboard players operation @s reworked_keep_inventory.xp.levels_squared *= @s reworked_keep_inventory.xp.levels_squared

execute if score @s reworked_keep_inventory.xp.levels matches 17..31 run scoreboard players operation @s reworked_keep_inventory.xp.levels_squared *= #reworked_keep_inventory.math.5 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 32.. run scoreboard players operation @s reworked_keep_inventory.xp.levels_squared *= #reworked_keep_inventory.math.9 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 1..16 run scoreboard players operation @s reworked_keep_inventory.xp *= #reworked_keep_inventory.math.6 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 17..31 run scoreboard players operation @s reworked_keep_inventory.xp *= #reworked_keep_inventory.math.-81 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 32.. run scoreboard players operation @s reworked_keep_inventory.xp *= #reworked_keep_inventory.math.-325 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 17.. run scoreboard players operation @s reworked_keep_inventory.xp.levels_squared /= #reworked_keep_inventory.math.2 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 17.. run scoreboard players operation @s reworked_keep_inventory.xp /= #reworked_keep_inventory.math.2 reworked_keep_inventory.math
execute if score @s reworked_keep_inventory.xp.levels matches 17..31 run scoreboard players add @s reworked_keep_inventory.xp 360
execute if score @s reworked_keep_inventory.xp.levels matches 32.. run scoreboard players add @s reworked_keep_inventory.xp 2220

scoreboard players operation @s reworked_keep_inventory.xp += @s reworked_keep_inventory.xp.levels_squared
scoreboard players operation @s reworked_keep_inventory.xp += @s reworked_keep_inventory.xp.points
scoreboard players operation @s reworked_keep_inventory.xp /= #reworked_keep_inventory.xp.penalty.factor reworked_keep_inventory.math
execute store result entity @s data.reworked_keep_inventory.xp int 1 run scoreboard players get @s reworked_keep_inventory.xp

xp set @s 0 points
xp set @s 0 levels
execute if score @s reworked_keep_inventory.xp > #reworked_keep_inventory.math.0 reworked_keep_inventory.math run function reworked_keep_inventory:xp/add_points_recursive