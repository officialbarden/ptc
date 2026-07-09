execute store result bossbar trams:main max run scoreboard players get gameEndDuration trams.VALUES

execute unless score gameEndDuration trams.TIMER matches -2147483648..2147483647 run scoreboard players operation gameEndDuration trams.TIMER = gameEndDuration trams.VALUES
scoreboard players remove gameEndDuration trams.TIMER 1
scoreboard players reset gameDuration trams.TIMER
execute store result bossbar trams:main value run scoreboard players get gameEndDuration trams.TIMER
execute if score gameEndDuration trams.TIMER matches 0 run function trams:zprivate/game/change_state/start_new
execute if score gameEndDuration trams.TIMER matches 0 run scoreboard players reset gameEndDuration