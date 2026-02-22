execute at @e[tag=vent] positioned ~ ~1 ~ if entity @p[distance=..1,scores={ventshift = 1..}] run setblock ~ ~-1 ~ air
execute at @e[tag=vent] positioned ~ ~1 ~ if entity @p[distance=..1,scores={ventshift = 1..}] run schedule function vents:reset 40t
execute at @e[type=painting,nbt={variant:"vents:vent"}] unless entity @n[distance=..1,type=item_display] run summon item_display ~ ~ ~ {item:{id:painting,components:{"painting/variant":"vents:vent"}},Tags:["vent"]}
execute at @e[type=painting,nbt={variant:"vents:vent"}] unless entity @n[distance=..1,type=block_display] align xyz run summon block_display ~ ~0.8625 ~ {block_state:{Name:"iron_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,0.09475,1],translation:[0f,0f,0f]}}
execute as @e[tag=vent] at @s align xyz run tp @s ~.5 ~0.9475 ~.5 90 90
execute at @e[nbt={variant:"vents:vent"}] run setblock ~ ~ ~ barrier
kill @e[nbt={variant:"vents:vent"}]
execute at @e[nbt={variant:"vents:accender"}] align xyz run summon block_display ~ ~ ~ {Tags:["accender"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:smooth_stone",Properties:{}},transformation:[0.8750f,0.0000f,0.0000f,0.0625f,0.0000f,0.0625f,0.0000f,0.0000f,0.0000f,0.0000f,0.8750f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:red_concrete",Properties:{}},transformation:[0.5000f,0.0000f,0.0000f,0.2500f,0.0000f,0.1250f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,0.2500f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
execute as @e[nbt={variant:"vents:accender"}] run kill @s
execute at @e[tag=accender] as @a[distance=..1,scores={ventshift=1..}] at @n[tag=vent] run tp @s ~ ~0.125 ~