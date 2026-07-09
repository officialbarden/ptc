execute store result bossbar trams:main max run scoreboard players get gameDuration trams.VALUES
execute unless score gameDuration trams.TIMER matches -2147483648..2147483647 run scoreboard players operation gameDuration trams.TIMER = gameDuration trams.VALUES
execute store result bossbar trams:main value run scoreboard players get gameDuration trams.TIMER

scoreboard players reset intermission trams.TIMER
scoreboard players remove gameDuration trams.TIMER 1
execute if score gameDuration trams.TIMER matches ..0 run function trams:zprivate/game/change_state/game_end
execute if score gameDuration trams.TIMER matches ..0 run scoreboard players reset gameDuration
