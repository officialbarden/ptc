# Speed Control
     # Accelerate
     execute if score .LandscapeState trams.VELOCITY matches 1 unless score .VELOCITY trams.VELOCITY = landscapeMaxSpeed trams.VELOCITY run scoreboard players operation .VELOCITY trams.VELOCITY += landscapeAcceleration trams.VELOCITY
     # Decelerate
     execute if score .LandscapeState trams.VELOCITY matches 0 unless score .VELOCITY trams.VELOCITY matches ..0 run scoreboard players operation .VELOCITY trams.VELOCITY -= landscapeDeceleration trams.VELOCITY
     # Cap Max
     execute if score .VELOCITY trams.VELOCITY > landscapeMaxSpeed trams.VELOCITY run scoreboard players operation .VELOCITY trams.VELOCITY = landscapeMaxSpeed trams.VELOCITY
     # Cap Min
     execute if score .VELOCITY trams.VELOCITY matches ..-1 run scoreboard players set .VELOCITY trams.VELOCITY 0

# Reroll Landscape
     execute as @e[tag=trams.LandscapeModel, type=item_display] at @s run function trams:zprivate/landscape/check
# Summon
     execute as @e[tag=trams.LANDSCAPE.Point, type=marker] at @s run function trams:zprivate/landscape/summon
# Kill Old Landscape
     # execute store result score totalLandscapes trams.VALUES if entity @e[tag=trams.LandscapeModel]
     # execute if score totalLandscapes trams.VALUES matches 10.. as @e[tag=trams.LandscapeModel] run function trams:zprivate/landscape/kill_self
     execute as @e[tag=trams.LandscapeModel] if score @s trams.ID matches -1 run kill @s

# Move Landscape
     execute store result storage trams:storage TRAMS.LANDSCAPE.VELOCITY float 0.001 run scoreboard players get .VELOCITY trams.VELOCITY
     execute as @e[tag=trams.LandscapeModel] at @s run function trams:zprivate/landscape/move/main with storage trams:storage TRAMS.LANDSCAPE
     