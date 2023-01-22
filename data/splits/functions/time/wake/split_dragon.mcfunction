scoreboard players operation @s s_t_wake_t = @s lt_ticks
scoreboard players operation @s s_t_wake_s = @s lt_seconds
scoreboard players operation @s s_t_wake_m = @s lt_minutes
scoreboard players operation @s s_t_wake_h = @s lt_hours

scoreboard players operation @s s_s_wake_h = @s s_t_wake_h
scoreboard players operation @s s_s_wake_h -= @s s_t_dragon_h

scoreboard players operation @s s_s_wake_m = @s s_t_wake_m
execute if score @s s_s_wake_m < @s s_t_dragon_m run scoreboard players remove @s s_s_wake_h 1
execute if score @s s_s_wake_m < @s s_t_dragon_m run scoreboard players add @s s_s_wake_m 60
scoreboard players operation @s s_s_wake_m -= @s s_t_dragon_m

scoreboard players operation @s s_s_wake_s = @s s_t_wake_s
execute if score @s s_s_wake_s < @s s_t_dragon_s if score @s s_s_wake_m matches 0 run scoreboard players remove @s s_s_wake_h 1
execute if score @s s_s_wake_s < @s s_t_dragon_s if score @s s_s_wake_m matches 0 run scoreboard players add @s s_s_wake_m 60
execute if score @s s_s_wake_s < @s s_t_dragon_s run scoreboard players remove @s s_s_wake_m 1
execute if score @s s_s_wake_s < @s s_t_dragon_s run scoreboard players add @s s_s_wake_s 60
scoreboard players operation @s s_s_wake_s -= @s s_t_dragon_s

scoreboard players operation @s s_s_wake_t = @s s_t_wake_t
execute if score @s s_s_wake_t < @s s_t_dragon_t if score @s s_s_wake_s matches 0 if score @s s_s_wake_m matches 0 run scoreboard players remove @s s_s_wake_h 1
execute if score @s s_s_wake_t < @s s_t_dragon_t if score @s s_s_wake_s matches 0 if score @s s_s_wake_m matches 0 run scoreboard players add @s s_s_wake_m 60
execute if score @s s_s_wake_t < @s s_t_dragon_t if score @s s_s_wake_s matches 0 run scoreboard players remove @s s_s_wake_m 1
execute if score @s s_s_wake_t < @s s_t_dragon_t if score @s s_s_wake_s matches 0 run scoreboard players remove @s s_s_wake_s 60
execute if score @s s_s_wake_t < @s s_t_dragon_t run scoreboard players remove @s s_s_wake_s 1
execute if score @s s_s_wake_t < @s s_t_dragon_t run scoreboard players add @s s_s_wake_t 20
scoreboard players operation @s s_s_wake_t -= @s s_t_dragon_t
