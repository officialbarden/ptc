# Scoreboards
     # The difference between "trams" and "trams.VALUES" and "trams.CONSTANTS" is that
     # .VALUES => stores variable values
     # .CONSTANTS => stores unchangable game constants
     # just trams => stores actual game values.
     scoreboard objectives add trams dummy
     scoreboard objectives add trams.CONSTANTS dummy
     scoreboard objectives add trams.VALUES dummy
     scoreboard objectives add trams.TIMER dummy

     # Set Config
     function trams:global/set_config


     # ID scoreboard
     scoreboard objectives add trams.ID dummy
     scoreboard players add .global trams.ID 1



# Add Teams
     # Red Team
     team add team_RED "RED"
     team modify team_RED color red
     team modify team_RED collisionRule never
     team modify team_RED nametagVisibility never
     # Blue Team
     team add team_BLUE "BLUE"
     team modify team_BLUE color blue
     team modify team_BLUE collisionRule never
     team modify team_BLUE nametagVisibility never

# PRE-LOAD
     function trams:zprivate/handle_events/preload

# BOSSBAR
     bossbar add trams:main "TRAMS CONFLICT"
     bossbar set trams:main style progress
     bossbar set trams:main players @a
     bossbar set trams:main visible true

# LOAD MESSAGE
     tellraw @a {"text": "[TRAMS-Main] Loaded."}