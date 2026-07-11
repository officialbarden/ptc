scoreboard players reset intermission trams.TIMER
scoreboard players set game_state trams 2

# event
function #trams:events/on_game/start

# Bossbar
     bossbar set trams:main name "Game Ongoing"
