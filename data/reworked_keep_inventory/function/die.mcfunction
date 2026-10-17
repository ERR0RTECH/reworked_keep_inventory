# Main function to spawn an Allay when a player dies
advancement revoke @s only reworked_keep_inventory:die

# Stops function if player is not in survival or adventure mode
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return 0

# Spawns Allay and sets it to follow the owner
summon allay ~ ~ ~ {Invulnerable:1b,PortalCooldown:-1L,DeathLootTable:"empty",PersistenceRequired:1b,Health:1024f,DuplicationCooldown:-1L,Tags:["reworked_keep_inventory.allay.init"],attributes:[{id:"minecraft:max_health",base:1024},{id:"minecraft:flying_speed",base:0.06}],equipment:{mainhand:{id:"minecraft:allay_spawn_egg",count:1,components:{"minecraft:custom_data":{reworked_keep_inventory.chest:1b},"minecraft:item_model":"minecraft:chest","minecraft:item_name":{"italic":false,"text":"Allay Chest"},"!minecraft:entity_data":{}}}}}
data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] Brain.memories."minecraft:liked_player".value set from entity @s UUID

# Failsafe if no Allay
execute unless entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] run return 0

# DAMAGE GEAR
# COMMENT OUT TO DISABLE
function reworked_keep_inventory:damage_gear

# Clears all items with Curse of Vanishing
clear @s *[enchantments~[{enchantments:"vanishing_curse"}]]

# XP Penalty
execute store result score @s reworked_keep_inventory.xp.points run xp query @s points
execute store result score @s reworked_keep_inventory.xp.levels run xp query @s levels
function reworked_keep_inventory:xp/penalty

# Copies valid inventory items to Allay
execute unless items entity @s inventory.0 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:9b}]
execute unless items entity @s inventory.0 #reworked_keep_inventory:keep run item replace entity @s inventory.0 with air
execute unless items entity @s inventory.1 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:10b}]
execute unless items entity @s inventory.1 #reworked_keep_inventory:keep run item replace entity @s inventory.1 with air
execute unless items entity @s inventory.2 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:11b}]
execute unless items entity @s inventory.2 #reworked_keep_inventory:keep run item replace entity @s inventory.2 with air
execute unless items entity @s inventory.3 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:12b}]
execute unless items entity @s inventory.3 #reworked_keep_inventory:keep run item replace entity @s inventory.3 with air
execute unless items entity @s inventory.4 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:13b}]
execute unless items entity @s inventory.4 #reworked_keep_inventory:keep run item replace entity @s inventory.4 with air
execute unless items entity @s inventory.5 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:14b}]
execute unless items entity @s inventory.5 #reworked_keep_inventory:keep run item replace entity @s inventory.5 with air
execute unless items entity @s inventory.6 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:15b}]
execute unless items entity @s inventory.6 #reworked_keep_inventory:keep run item replace entity @s inventory.6 with air
execute unless items entity @s inventory.7 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:16b}]
execute unless items entity @s inventory.7 #reworked_keep_inventory:keep run item replace entity @s inventory.7 with air
execute unless items entity @s inventory.8 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:17b}]
execute unless items entity @s inventory.8 #reworked_keep_inventory:keep run item replace entity @s inventory.8 with air
execute unless items entity @s inventory.9 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:18b}]
execute unless items entity @s inventory.9 #reworked_keep_inventory:keep run item replace entity @s inventory.9 with air
execute unless items entity @s inventory.10 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:19b}]
execute unless items entity @s inventory.10 #reworked_keep_inventory:keep run item replace entity @s inventory.10 with air
execute unless items entity @s inventory.11 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:20b}]
execute unless items entity @s inventory.11 #reworked_keep_inventory:keep run item replace entity @s inventory.11 with air
execute unless items entity @s inventory.12 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:21b}]
execute unless items entity @s inventory.12 #reworked_keep_inventory:keep run item replace entity @s inventory.12 with air
execute unless items entity @s inventory.13 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:22b}]
execute unless items entity @s inventory.13 #reworked_keep_inventory:keep run item replace entity @s inventory.13 with air
execute unless items entity @s inventory.14 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:23b}]
execute unless items entity @s inventory.14 #reworked_keep_inventory:keep run item replace entity @s inventory.14 with air
execute unless items entity @s inventory.15 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:24b}]
execute unless items entity @s inventory.15 #reworked_keep_inventory:keep run item replace entity @s inventory.15 with air
execute unless items entity @s inventory.16 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:25b}]
execute unless items entity @s inventory.16 #reworked_keep_inventory:keep run item replace entity @s inventory.16 with air
execute unless items entity @s inventory.17 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:26b}]
execute unless items entity @s inventory.17 #reworked_keep_inventory:keep run item replace entity @s inventory.17 with air
execute unless items entity @s inventory.18 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:27b}]
execute unless items entity @s inventory.18 #reworked_keep_inventory:keep run item replace entity @s inventory.18 with air
execute unless items entity @s inventory.19 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:28b}]
execute unless items entity @s inventory.19 #reworked_keep_inventory:keep run item replace entity @s inventory.19 with air
execute unless items entity @s inventory.20 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:29b}]
execute unless items entity @s inventory.20 #reworked_keep_inventory:keep run item replace entity @s inventory.20 with air
execute unless items entity @s inventory.21 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:30b}]
execute unless items entity @s inventory.21 #reworked_keep_inventory:keep run item replace entity @s inventory.21 with air
execute unless items entity @s inventory.22 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:31b}]
execute unless items entity @s inventory.22 #reworked_keep_inventory:keep run item replace entity @s inventory.22 with air
execute unless items entity @s inventory.23 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:32b}]
execute unless items entity @s inventory.23 #reworked_keep_inventory:keep run item replace entity @s inventory.23 with air
execute unless items entity @s inventory.24 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:33b}]
execute unless items entity @s inventory.24 #reworked_keep_inventory:keep run item replace entity @s inventory.24 with air
execute unless items entity @s inventory.25 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:34b}]
execute unless items entity @s inventory.25 #reworked_keep_inventory:keep run item replace entity @s inventory.25 with air
execute unless items entity @s inventory.26 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:35b}]
execute unless items entity @s inventory.26 #reworked_keep_inventory:keep run item replace entity @s inventory.26 with air

execute unless items entity @s hotbar.0 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:0b}]
execute unless items entity @s hotbar.0 #reworked_keep_inventory:keep run item replace entity @s hotbar.0 with air
execute unless items entity @s hotbar.1 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:1b}]
execute unless items entity @s hotbar.1 #reworked_keep_inventory:keep run item replace entity @s hotbar.1 with air
execute unless items entity @s hotbar.2 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:2b}]
execute unless items entity @s hotbar.2 #reworked_keep_inventory:keep run item replace entity @s hotbar.2 with air
execute unless items entity @s hotbar.3 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:3b}]
execute unless items entity @s hotbar.3 #reworked_keep_inventory:keep run item replace entity @s hotbar.3 with air
execute unless items entity @s hotbar.4 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:4b}]
execute unless items entity @s hotbar.4 #reworked_keep_inventory:keep run item replace entity @s hotbar.4 with air
execute unless items entity @s hotbar.5 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:5b}]
execute unless items entity @s hotbar.5 #reworked_keep_inventory:keep run item replace entity @s hotbar.5 with air
execute unless items entity @s hotbar.6 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:6b}]
execute unless items entity @s hotbar.6 #reworked_keep_inventory:keep run item replace entity @s hotbar.6 with air
execute unless items entity @s hotbar.7 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:7b}]
execute unless items entity @s hotbar.7 #reworked_keep_inventory:keep run item replace entity @s hotbar.7 with air
execute unless items entity @s hotbar.8 #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s Inventory[{Slot:8b}]
execute unless items entity @s hotbar.8 #reworked_keep_inventory:keep run item replace entity @s hotbar.8 with air

execute unless items entity @s weapon.offhand #reworked_keep_inventory:keep run data modify entity @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] data.reworked_keep_inventory.storage append from entity @s equipment.offhand
execute unless items entity @s weapon.offhand #reworked_keep_inventory:keep run item replace entity @s weapon.offhand with air

execute as @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] unless data entity @s data.reworked_keep_inventory.storage[0] run function reworked_keep_inventory:allay/delete

# Wraps up Allay work
tag @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay.init] add reworked_keep_inventory.allay
tag @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay] remove reworked_keep_inventory.allay.init

# Make sure Allay is not in the Void for each dimension
execute if dimension minecraft:the_end if entity @s[y=0,dy=-1024] run tp @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay] ~ 1 ~
execute if dimension minecraft:the_nether if entity @s[y=0,dy=-1024] run tp @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay] ~ 1 ~
execute if dimension minecraft:overworld if entity @s[y=-64,dy=-1024] run tp @e[type=allay,distance=0..1,limit=1,sort=nearest,tag=reworked_keep_inventory.allay] ~ -64 ~