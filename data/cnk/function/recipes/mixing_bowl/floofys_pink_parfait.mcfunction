loot spawn ~ ~-0.3 ~ loot cnk:food/floofys_pink_parfait

function cnk:mixing_bowl/mix/get_items
execute if data storage cnk:temp mixing_bowl.Items[{components:{"minecraft:custom_data":{cnk:{ingredient:{type:"milk_bottle"}}}}}] run loot spawn ~ ~-0.3 ~ loot cnk:other/glass_bottle
execute if data storage cnk:temp mixing_bowl.Items[{id:"minecraft:milk_bucket"}] run loot spawn ~ ~-0.3 ~ loot cnk:other/bucket

function cnk:mixing_bowl/mix/clean_up