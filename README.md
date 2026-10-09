# REWORKED KEEP INVENTORY
**Reworked Keep Inventory** overhauls the way the `keepInventory` gamerule works by letting you respawn with equipment like **weapons, tools, and armor** at the **cost of durability** and **half of your experience points** (configurable). The **rest of your inventory** is **stored within an Allay holding a chest** that is spawned at your death location, a twist on the typical **gravestone mod/datapack**. 

This **allows death to still be punishing**, without the frustration of losing hard earned equipment nor having your lost items and experience stored in a rough spot.

# FEATURES
- When you **die**, **all your equipment** and **half of your experience points** (configurable) is kept upon respawning.
- **The rest of your items** are **stored within an Allay holding a chest** that is **spawned at your death location.**
- Upon respawning, **by default 15% of durability** (configurable) on your **equipment** is **lost**.
- **The Allay will fly towards the respective player it spawned from** when the player is **close to their death location**, making it easier to regain one's lost items and experience if the player died within a rough spot.
- **Right clicking on the Allay with an empty hand** to take the chest **will give back all stored items.**
- **Once the Allay is retrieved**, the **Allay will disappear** having fulfilled it's duty.

# CONFIGURATION
You can **modify the items that are considered equipment** by **modifying the tag** within `data/reworked_keep_inventory/tags/item/keep.json`.
- To **make gear that should be dropped**, remove them from that list. To **add items that should be kept**, add them to that list.

You can **modify the equipment damage penalty** by **modifying the number** within `data/reworked_keep_inventory/item_modifier/damage_gear.json`. 
- To **remove the equipment damage penalty**, you can **set this number to 0**.

You can **modify the experience penalty factor** by typing the following command `scoreboard players set #reworked_keep_inventory.xp.penalty.factor reworked_keep_inventory.math [integer factor]`. 
- By default it is 2, with 1/2 experience being stored. 3 with 1/3 experience being stored. 4 with 1/4 experience being stored, etc.

# COMPATIBILITY
- This datapack will **VERY likely not work together with grave packs or similar packs** with features relating to player's inventories during deaths.
- This datapack tries to be compatible with **modded items**, by making use of **both vanilla item tags** and the **common convention of** `c` **tags** used by mod loaders. There still however **very likely will be incompatibilies**. If you are a **modpack creator**, please make sure to **update the keep item tag** as seen above in the CONFIGURATION section.

# FAQ
Q. How does the player **retrieve items** from the Allay?
> A. The player needs to **right click on the Allay with an empty hand**.

Q. Will the Allay ever **die or despawn**?
> A. They **shouldn't be able to die**, as they are set to be invulnerable. The Allay will **despawn when a player retrieves from it**, they will **never despawn on their own**.

Q. What if the player dies again before collecting from their Allay?
> A. **Another one with a seperate inventory will spawn** at that death location. The **existing** one(s) **will not combine or despawn.**

Q. Can other players collect items from Allays they didn't spawn
> A. Yes, I may reconsider this in the future, but for sake of simplicity anyone is able to collect from any Allay.

Q. What if the player dies in lava or in the void?
> A. **The Allay will still spawn safely.** They will fly out of lava when the player gets close. When the player dies in the void, they will be spawned at the bottom of each respective dimension.

Q. What if the **player has no items**?
> A. An Allay **will not spawn.**

Q. There are **multiple Allays** that have spawned from **different players**, how can we **tell them apart**?
> A. Allays will **follow their respective owner**. Players should move away from each other to see which Allay follows who.

Q. How **far** can the Allay **see the player**?
> A. Same as a normal Allay, **64 blocks**. I found this could not be changed, even with modifying the `follow_range` attribute.

Q. Why does the **Allay move slower** than a normal Allay?
> A. Because of their 64 block follow range, at normal speeds I felt they reached the player far too fast. In my eyes, it did not feel right. You can think of it as the Allay struggling to carry the player's inventory.

Q. Can I **change the durability and experience penalty**?
> A. Yes, **please see the CONFIGURATION section**.

Q. Am I able to use this in my own modpacks, servers, videos, etc?
> A. Yes, just **do not pass it off as your own creation**. Credit accordingly.

# ADMIN TOOLS
To **clear all Allays** within render distance, enter the command `/function reworked_keep_inventory:admin/clear_all`, they will drop all their stored items on the ground.

To **make all Allays glow** within render distance, enter the command `/function reworked_keep_inventory:admin/glow`

# CREDITS
- Large inspiration by PuckiSilver's [Keep Some Inventory](https://modrinth.com/datapack/keep-some-inventory) datapack. Recursive item drop function learned from this pack.
- Experience math calculations learned from Conure512's [Very Simple Gravestones](https://modrinth.com/datapack/conures-graves).
