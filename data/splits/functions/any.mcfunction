scoreboard players operation @s s_t_TO_t = @s lt_ticks
scoreboard players operation @s s_t_TO_s = @s lt_seconds
scoreboard players operation @s s_t_TO_m = @s lt_minutes
scoreboard players operation @s s_t_TO_h = @s lt_hours

scoreboard players operation @s s_s_TO_h = @s s_t_TO_h
scoreboard players operation @s s_s_TO_h -= @s s_t_FROM_h

scoreboard players operation @s s_s_TO_m = @s s_t_TO_m
execute if score @s s_s_TO_m < @s s_t_FROM_m run scoreboard players remove @s s_s_TO_h 1
execute if score @s s_s_TO_m < @s s_t_FROM_m run scoreboard players add @s s_s_TO_m 60
scoreboard players operation @s s_s_TO_m -= @s s_t_FROM_m

scoreboard players operation @s s_s_TO_s = @s s_t_TO_s
execute if score @s s_s_TO_s < @s s_t_FROM_s if score @s s_s_TO_m matches 0 run scoreboard players remove @s s_s_TO_h 1
execute if score @s s_s_TO_s < @s s_t_FROM_s if score @s s_s_TO_m matches 0 run scoreboard players add @s s_s_TO_m 60
execute if score @s s_s_TO_s < @s s_t_FROM_s run scoreboard players remove @s s_s_TO_m 1
execute if score @s s_s_TO_s < @s s_t_FROM_s run scoreboard players add @s s_s_TO_s 60
scoreboard players operation @s s_s_TO_s -= @s s_t_FROM_s

scoreboard players operation @s s_s_TO_t = @s s_t_TO_t
execute if score @s s_s_TO_t < @s s_t_FROM_t if score @s s_s_TO_s matches 0 if score @s s_s_TO_m matches 0 run scoreboard players remove @s s_s_TO_h 1
execute if score @s s_s_TO_t < @s s_t_FROM_t if score @s s_s_TO_s matches 0 if score @s s_s_TO_m matches 0 run scoreboard players add @s s_s_TO_m 60
execute if score @s s_s_TO_t < @s s_t_FROM_t if score @s s_s_TO_s matches 0 run scoreboard players remove @s s_s_TO_m 1
execute if score @s s_s_TO_t < @s s_t_FROM_t if score @s s_s_TO_s matches 0 run scoreboard players remove @s s_s_TO_s 60
execute if score @s s_s_TO_t < @s s_t_FROM_t run scoreboard players remove @s s_s_TO_s 1
execute if score @s s_s_TO_t < @s s_t_FROM_t run scoreboard players add @s s_s_TO_t 20
scoreboard players operation @s s_s_TO_t -= @s s_t_FROM_t
