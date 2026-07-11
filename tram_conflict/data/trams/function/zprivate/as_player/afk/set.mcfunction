scoreboard players reset @s AFK-Toggle

# Apply Tag
function trams:zprivate/as_player/afk/tags

# Event:
execute at @s run function #trams:events/on_player/set_afk
