# this function is called when the player obtains an item, to set the database flag and (optionally) show a toast for getting it!
# see the cnkea:cookbook/pumpkin_pie/item advancement for the advancement that calls this function

# shows the player the toast for obtaining the item, be sure to keep those tag checks!
# - cnk.cookbook_unlock ensures the toast is not shown when the player decides to fully unlock the cookbook
# - cnk.no_toasts ensures the toast is not shown to players who have opted to disable them
advancement grant @s[tag=!cnk.cookbook_unlock,tag=!cnk.no_toasts] only cnkea:cookbook/pumpkin_pie/toast

# set the flag, which must abide by type, namespace, name order (will match your recipe page function)
function cnk:cookbook/database/set/main {flag:"item.minecraft.pumpkin_pie"}