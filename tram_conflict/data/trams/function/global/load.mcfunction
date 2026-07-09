# Scoreboards
     scoreboard objectives add trams.CONSTANTS dummy
     scoreboard objectives add trams.VALUES dummy
     scoreboard objectives add trams.TIMER dummy

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
