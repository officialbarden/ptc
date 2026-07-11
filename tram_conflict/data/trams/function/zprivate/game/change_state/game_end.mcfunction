scoreboard players reset intermission trams.TIMER
scoreboard players reset gameDuration trams.TIMER
scoreboard players set game_state trams 3

# event
function #trams:events/on_game/end

# Bossbar
     bossbar set trams:main name "Game Ended."