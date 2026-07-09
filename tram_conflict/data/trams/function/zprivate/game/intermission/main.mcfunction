execute store result bossbar trams:main max run scoreboard players get intermission trams.VALUES

execute unless score intermission trams.TIMER matches -2147483648..2147483647 run scoreboard players operation intermission trams.TIMER = intermission trams.VALUES
scoreboard players remove intermission trams.TIMER 1
scoreboard players reset gameDuration trams.TIMER
execute store result bossbar trams:main value run scoreboard players get intermission trams.TIMER
execute if score intermission trams.TIMER matches 0 run function #trams:events/on_game/leave_intermission
execute if score intermission trams.TIMER matches 0 run scoreboard players reset intermission