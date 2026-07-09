# Player Connectivity Handler.
     execute store result score totalPlayersOnline trams.VALUES if entity @a
     execute unless score #totalPlayersOnline trams.VALUES matches -2147483648..2147483647 run scoreboard players operation #totalPlayersOnline trams.VALUES = totalPlayersOnline trams.VALUES
     execute if score #totalPlayersOnline trams.VALUES < totalPlayersOnline trams.VALUES run function #trams:events/on_player/join
     execute if score #totalPlayersOnline trams.VALUES > totalPlayersOnline trams.VALUES run function #trams:events/on_player/leave
     scoreboard players operation #totalPlayersOnline trams.VALUES = totalPlayersOnline trams.VALUES

# On Player Drop Item
     execute as @a if score @s trams.EVENTS.player.DROP_ITEM matches 1.. run function #trams:events/on_player/drop_item
     scoreboard players reset @a trams.EVENTS.player.DROP_ITEM
