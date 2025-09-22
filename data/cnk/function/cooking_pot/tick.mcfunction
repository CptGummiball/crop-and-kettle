execute unless block ~ ~ ~ minecraft:hopper[facing=down] run return run function cnk:cooking_pot/break

scoreboard players add @s cnk.timer 1
particle minecraft:flame ~ ~-0.35 ~ 0.18 0.05 0.18 0 1
execute if score @s cnk.timer matches 50 run data modify block ~ ~ ~ TransferCooldown set value 1000
execute if score @s cnk.timer matches 50 run playsound cnk:block.cooking_pot.idling block @a[distance=..6] ~ ~ ~ 0.2 1
execute if score @s cnk.timer matches 50 run scoreboard players reset @s cnk.timer

execute if score @s cnk.cook_cooldown matches 1.. run return run scoreboard players remove @s cnk.cook_cooldown 1

data modify storage cnk:temp cooking_pot.Items set from block ~ ~ ~ Items

execute store result score $filled_slots cnk.dummy run data get storage cnk:temp cooking_pot.Items
execute if score $filled_slots cnk.dummy matches 0 if score @s cnk.cook_time matches 1.. run return run function cnk:cooking_pot/stop
execute if score $filled_slots cnk.dummy matches 0 run return fail

# fathoms compat
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}] run data modify storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}].id set value "minecraft:cod"
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}] run data remove storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"cod"}}}}].components."minecraft:custom_data"
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}] run data modify storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}].id set value "minecraft:salmon"
execute if data storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}] run data remove storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{fathoms:{id:"salmon"}}}}].components."minecraft:custom_data"

data remove storage cnk:temp cooking_pot.Items[{components:{"minecraft:custom_data":{}}}].id

data modify storage cnk:temp unique_items_check set value []
data modify storage cnk:temp unique_items_check set from storage cnk:temp cooking_pot.Items
function cnk:cooking_pot/crafting/get_unique

scoreboard players set $cooking_pot_lock cnk.dummy 0
execute if score $unique_items cnk.dummy matches 1 run function #cnk:recipes/cooking_pot/1
execute if score $unique_items cnk.dummy matches 2 run function #cnk:recipes/cooking_pot/2
execute if score $unique_items cnk.dummy matches 3 run function #cnk:recipes/cooking_pot/3
execute if score $unique_items cnk.dummy matches 4 run function #cnk:recipes/cooking_pot/4
execute if score $unique_items cnk.dummy matches 5 run function #cnk:recipes/cooking_pot/5

execute if score $cooking_pot_lock cnk.dummy matches 0 if score @s cnk.cook_time matches 1.. run function cnk:cooking_pot/stop