# Handles whether game should start or end. Good cuz this way i can reuse intermission code both during start and end of game.
execute if score game_state trams matches 1 run return run function trams:zprivate/game/change_state/game_start
execute if score game_state trams matches 2 run return run function trams:zprivate/game/change_state/game_end
execute if score game_state trams matches 3 run return run function trams:zprivate/game/change_state/start_new