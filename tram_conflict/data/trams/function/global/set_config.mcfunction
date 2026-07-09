# NEVER SET ANY OTHER SCORE FOR "trams" SCOREBOARD IN HERE!!!
# trams.CONSTANTS
     scoreboard players set OneDayinTicks trams.CONSTANTS 24000
     scoreboard players set TicksToSeconds trams.CONSTANTS 20

# trams.VALUES
     scoreboard players set minPlayersNeeded trams.VALUES 1
     scoreboard players set intermission trams.VALUES 200
     scoreboard players set gameDuration trams.VALUES 1000
     scoreboard players set gameEndDuration trams.VALUES 150
# trams
     execute unless score game_state trams matches -2147483648..2147483647 run scoreboard players set game_state trams 0