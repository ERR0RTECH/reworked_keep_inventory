# Function caused by the player to initiate Allay item and xp collection
clear @s allay_spawn_egg[custom_data={reworked_keep_inventory.chest:1b}]
execute as @e[type=allay,tag=reworked_keep_inventory.allay] unless items entity @s weapon.mainhand allay_spawn_egg[custom_data={reworked_keep_inventory.chest:1b}] at @s run function reworked_keep_inventory:allay/drop_init
advancement revoke @s only reworked_keep_inventory:click_interaction