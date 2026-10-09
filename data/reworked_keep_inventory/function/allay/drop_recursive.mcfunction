# Recursive function that drops items from Allay's inventory until inventory is empty
data modify storage reworked_keep_inventory:main drop.item set from entity @s data.reworked_keep_inventory.storage[-1]
execute unless entity @p[advancements={reworked_keep_inventory:click_interaction=true},sort=nearest] run function reworked_keep_inventory:allay/drop_item with storage reworked_keep_inventory:main drop
execute at @p[advancements={reworked_keep_inventory:click_interaction=true},sort=nearest] run function reworked_keep_inventory:allay/drop_item with storage reworked_keep_inventory:main drop
data remove entity @s data.reworked_keep_inventory.storage[-1]
execute if data entity @s data.reworked_keep_inventory.storage[0] run function reworked_keep_inventory:allay/drop_recursive