scoreboard players operation @s s_t_dragon_t = @s lt_ticks
scoreboard players operation @s s_t_dragon_s = @s lt_seconds
scoreboard players operation @s s_t_dragon_m = @s lt_minutes
scoreboard players operation @s s_t_dragon_h = @s lt_hours

scoreboard players operation @s s_s_dragon_h = @s s_t_dragon_h
scoreboard players operation @s s_s_dragon_h -= @s s_t_end_h

scoreboard players operation @s s_s_dragon_m = @s s_t_dragon_m
execute if score @s s_s_dragon_m < @s s_t_end_m run scoreboard players remove @s s_s_dragon_h 1
execute if score @s s_s_dragon_m < @s s_t_end_m run scoreboard players add @s s_s_dragon_m 60
scoreboard players operation @s s_s_dragon_m -= @s s_t_end_m

scoreboard players operation @s s_s_dragon_s = @s s_t_dragon_s
execute if score @s s_s_dragon_s < @s s_t_end_s if score @s s_s_dragon_m matches 0 run scoreboard players remove @s s_s_dragon_h 1
execute if score @s s_s_dragon_s < @s s_t_end_s if score @s s_s_dragon_m matches 0 run scoreboard players add @s s_s_dragon_m 60
execute if score @s s_s_dragon_s < @s s_t_end_s run scoreboard players remove @s s_s_dragon_m 1
execute if score @s s_s_dragon_s < @s s_t_end_s run scoreboard players add @s s_s_dragon_s 60
scoreboard players operation @s s_s_dragon_s -= @s s_t_end_s

scoreboard players operation @s s_s_dragon_t = @s s_t_dragon_t
execute if score @s s_s_dragon_t < @s s_t_end_t if score @s s_s_dragon_s matches 0 if score @s s_s_dragon_m matches 0 run scoreboard players remove @s s_s_dragon_h 1
execute if score @s s_s_dragon_t < @s s_t_end_t if score @s s_s_dragon_s matches 0 if score @s s_s_dragon_m matches 0 run scoreboard players add @s s_s_dragon_m 60
execute if score @s s_s_dragon_t < @s s_t_end_t if score @s s_s_dragon_s matches 0 run scoreboard players remove @s s_s_dragon_m 1
execute if score @s s_s_dragon_t < @s s_t_end_t if score @s s_s_dragon_s matches 0 run scoreboard players remove @s s_s_dragon_s 60
execute if score @s s_s_dragon_t < @s s_t_end_t run scoreboard players remove @s s_s_dragon_s 1
execute if score @s s_s_dragon_t < @s s_t_end_t run scoreboard players add @s s_s_dragon_t 20
scoreboard players operation @s s_s_dragon_t -= @s s_t_end_t
function #splits:dragon
