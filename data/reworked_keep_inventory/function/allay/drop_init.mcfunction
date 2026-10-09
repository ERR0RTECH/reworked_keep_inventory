# Function to initiate Allay item and xp drops
data remove storage reworked_keep_inventory:main drop.item
function reworked_keep_inventory:allay/drop_recursive
playsound minecraft:entity.allay.item_given player @a ~ ~ ~
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 25
tp @s ~ -512 ~
kill @s