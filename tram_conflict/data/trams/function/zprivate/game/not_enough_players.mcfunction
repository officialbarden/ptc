bossbar set trams:main name [{"text":"Not Enough Players — Need Atleast ", font:"bebasneue", "shadow_color":0}, "", {score:{name:"minPlayersNeeded", objective:"trams.VALUES"}}]
execute store result bossbar trams:main max run scoreboard players get intermission trams.VALUES
execute store result bossbar trams:main value run scoreboard players get intermission trams.VALUES