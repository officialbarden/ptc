# If Not Enough Players, Don't Run Logic.
     execute if score totalPlayersOnline trams.VALUES < minPlayersNeeded trams.VALUES run return run bossbar set trams:main name ["Not Enough Players — Need Atleast ", {score:{name:"minPlayersNeeded", objective:"trams.VALUES"}}]

# If Enough Players are Online, start game.
     execute if score game_state trams matches 0 run function #trams:events/on_game/enter_intermission
     execute if score game_state trams matches 1 run function trams:zprivate/game/intermission/main
     execute if score game_state trams matches 2 run function trams:zprivate/game/timer/main
     execute if score game_state trams matches 3 run function trams:zprivate/game/end/main

