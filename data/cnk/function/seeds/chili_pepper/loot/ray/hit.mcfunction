execute store result storage cnk:temp slot int 1 run random value 0..26
function cnk:seeds/chili_pepper/loot/ray/modify with storage cnk:temp

execute if score $cherry_chance cnk.dummy matches 1 run return fail
execute store result storage cnk:temp slot int 1 run random value 0..26
function cnk:seeds/chili_pepper/loot/ray/modify with storage cnk:temp

execute if score $cherry_chance cnk.dummy matches 2 run return fail
execute store result storage cnk:temp slot int 1 run random value 0..26
function cnk:seeds/chili_pepper/loot/ray/modify with storage cnk:temp