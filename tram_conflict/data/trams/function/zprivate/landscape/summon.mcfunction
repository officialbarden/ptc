# As and At the Spawner Markers
scoreboard players operation #ID trams.ID = @s trams.ID
execute if entity @n[tag=trams.LandscapeModel,predicate=trams:id] run return fail

summon minecraft:item_display ~ ~ ~ {view_range:2f,teleport_duration: 2, Tags:[trams.LandscapeModel, trams.new],item: {components: {"minecraft:item_model": "trams:landscape/rails"}, count: 1, id: "minecraft:dirt"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [33.0f, 33.0f, 33.0f], translation: [0.0f, 0.0f, 15.0f]}}

scoreboard players operation @s trams.ID = .global trams.ID
scoreboard players operation @e[tag=trams.new] trams.ID = .global trams.ID
scoreboard players add .global trams.ID 1
tag @e remove trams.new