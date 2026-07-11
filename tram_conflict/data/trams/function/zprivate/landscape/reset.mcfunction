execute as @e[tag=trams.LandscapeModel] run tag @s add trams.PendingRemoval
execute as @e[tag=trams.LandscapeModel] run tag @s remove trams.LandscapeModel

execute as @e[tag=trams.LANDSCAPE.Point] at @s run function trams:zprivate/landscape/summon
execute as @e[tag=trams.PendingRemoval] run data modify entity @s transformation.scale set value [33.0f, 0.0f, 33.0f]
kill @e[tag=trams.PendingRemoval]
