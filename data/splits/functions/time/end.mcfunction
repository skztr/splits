scoreboard players operation @s s_t_end_t = @s lt_ticks
scoreboard players operation @s s_t_end_s = @s lt_seconds
scoreboard players operation @s s_t_end_m = @s lt_minutes
scoreboard players operation @s s_t_end_h = @s lt_hours

scoreboard players operation @s s_s_end_h = @s s_t_end_h
scoreboard players operation @s s_s_end_h -= @s s_t_stronghold_h

scoreboard players operation @s s_s_end_m = @s s_t_end_m
execute if score @s s_s_end_m < @s s_t_stronghold_m run scoreboard players remove @s s_s_end_h 1
execute if score @s s_s_end_m < @s s_t_stronghold_m run scoreboard players add @s s_s_end_m 60
scoreboard players operation @s s_s_end_m -= @s s_t_stronghold_m

scoreboard players operation @s s_s_end_s = @s s_t_end_s
execute if score @s s_s_end_s < @s s_t_stronghold_s if score @s s_s_end_m matches 0 run scoreboard players remove @s s_s_end_h 1
execute if score @s s_s_end_s < @s s_t_stronghold_s if score @s s_s_end_m matches 0 run scoreboard players add @s s_s_end_m 60
execute if score @s s_s_end_s < @s s_t_stronghold_s run scoreboard players remove @s s_s_end_m 1
execute if score @s s_s_end_s < @s s_t_stronghold_s run scoreboard players add @s s_s_end_s 60
scoreboard players operation @s s_s_end_s -= @s s_t_stronghold_s

scoreboard players operation @s s_s_end_t = @s s_t_end_t
execute if score @s s_s_end_t < @s s_t_stronghold_t if score @s s_s_end_s matches 0 if score @s s_s_end_m matches 0 run scoreboard players remove @s s_s_end_h 1
execute if score @s s_s_end_t < @s s_t_stronghold_t if score @s s_s_end_s matches 0 if score @s s_s_end_m matches 0 run scoreboard players add @s s_s_end_m 60
execute if score @s s_s_end_t < @s s_t_stronghold_t if score @s s_s_end_s matches 0 run scoreboard players remove @s s_s_end_m 1
execute if score @s s_s_end_t < @s s_t_stronghold_t if score @s s_s_end_s matches 0 run scoreboard players remove @s s_s_end_s 60
execute if score @s s_s_end_t < @s s_t_stronghold_t run scoreboard players remove @s s_s_end_s 1
execute if score @s s_s_end_t < @s s_t_stronghold_t run scoreboard players add @s s_s_end_t 20
scoreboard players operation @s s_s_end_t -= @s s_t_stronghold_t
function #splits:end
