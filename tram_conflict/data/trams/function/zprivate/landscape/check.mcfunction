scoreboard players operation #ID trams.ID = @s trams.ID
execute unless entity @n[type=marker,distance=..1] run return fail
execute if entity @n[predicate=trams:id,type=marker, distance=..1] run return fail

execute at @s if entity @n[tag=trams.LANDSCAPE.Point, distance=..1, predicate=!trams:id] run function trams:zprivate/landscape/reset
