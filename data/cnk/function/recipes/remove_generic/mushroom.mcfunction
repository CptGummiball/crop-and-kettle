data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:red_mushroom"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot

data remove storage cnk:temp cooking_pot.slot
data modify storage cnk:temp cooking_pot.slot set from storage cnk:temp cooking_pot.Items[{id:"minecraft:brown_mushroom"}].Slot
execute if data storage cnk:temp cooking_pot.slot run function cnk:recipes/remove with storage cnk:temp cooking_pot