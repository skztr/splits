scoreboard players operation @s s_s_stronghold_h = @s s_t_stronghold_h
scoreboard players operation @s s_s_stronghold_h -= @s s_t_blaze_h

scoreboard players operation @s s_s_stronghold_m = @s s_t_stronghold_m
execute if score @s s_s_stronghold_m < @s s_t_blaze_m run scoreboard players remove @s s_s_stronghold_h 1
execute if score @s s_s_stronghold_m < @s s_t_blaze_m run scoreboard players add @s s_s_stronghold_m 60
scoreboard players operation @s s_s_stronghold_m -= @s s_t_blaze_m

scoreboard players operation @s s_s_stronghold_s = @s s_t_stronghold_s
execute if score @s s_s_stronghold_s < @s s_t_blaze_s if score @s s_s_stronghold_m matches 0 run scoreboard players remove @s s_s_stronghold_h 1
execute if score @s s_s_stronghold_s < @s s_t_blaze_s if score @s s_s_stronghold_m matches 0 run scoreboard players add @s s_s_stronghold_m 60
execute if score @s s_s_stronghold_s < @s s_t_blaze_s run scoreboard players remove @s s_s_stronghold_m 1
execute if score @s s_s_stronghold_s < @s s_t_blaze_s run scoreboard players add @s s_s_stronghold_s 60
scoreboard players operation @s s_s_stronghold_s -= @s s_t_blaze_s

scoreboard players operation @s s_s_stronghold_t = @s s_t_stronghold_t
execute if score @s s_s_stronghold_t < @s s_t_blaze_t if score @s s_s_stronghold_s matches 0 if score @s s_s_stronghold_m matches 0 run scoreboard players remove @s s_s_stronghold_h 1
execute if score @s s_s_stronghold_t < @s s_t_blaze_t if score @s s_s_stronghold_s matches 0 if score @s s_s_stronghold_m matches 0 run scoreboard players add @s s_s_stronghold_m 60
execute if score @s s_s_stronghold_t < @s s_t_blaze_t if score @s s_s_stronghold_s matches 0 run scoreboard players remove @s s_s_stronghold_m 1
execute if score @s s_s_stronghold_t < @s s_t_blaze_t if score @s s_s_stronghold_s matches 0 run scoreboard players remove @s s_s_stronghold_s 60
execute if score @s s_s_stronghold_t < @s s_t_blaze_t run scoreboard players remove @s s_s_stronghold_s 1
execute if score @s s_s_stronghold_t < @s s_t_blaze_t run scoreboard players add @s s_s_stronghold_t 20
scoreboard players operation @s s_s_stronghold_t -= @s s_t_blaze_t
