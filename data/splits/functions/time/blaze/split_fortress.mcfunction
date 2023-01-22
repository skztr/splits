scoreboard players operation @s s_s_blaze_h = @s s_t_blaze_h
scoreboard players operation @s s_s_blaze_h -= @s s_t_fortress_h

scoreboard players operation @s s_s_blaze_m = @s s_t_blaze_m
execute if score @s s_s_blaze_m < @s s_t_fortress_m run scoreboard players remove @s s_s_blaze_h 1
execute if score @s s_s_blaze_m < @s s_t_fortress_m run scoreboard players add @s s_s_blaze_m 60
scoreboard players operation @s s_s_blaze_m -= @s s_t_fortress_m

scoreboard players operation @s s_s_blaze_s = @s s_t_blaze_s
execute if score @s s_s_blaze_s < @s s_t_fortress_s if score @s s_s_blaze_m matches 0 run scoreboard players remove @s s_s_blaze_h 1
execute if score @s s_s_blaze_s < @s s_t_fortress_s if score @s s_s_blaze_m matches 0 run scoreboard players add @s s_s_blaze_m 60
execute if score @s s_s_blaze_s < @s s_t_fortress_s run scoreboard players remove @s s_s_blaze_m 1
execute if score @s s_s_blaze_s < @s s_t_fortress_s run scoreboard players add @s s_s_blaze_s 60
scoreboard players operation @s s_s_blaze_s -= @s s_t_fortress_s

scoreboard players operation @s s_s_blaze_t = @s s_t_blaze_t
execute if score @s s_s_blaze_t < @s s_t_fortress_t if score @s s_s_blaze_s matches 0 if score @s s_s_blaze_m matches 0 run scoreboard players remove @s s_s_blaze_h 1
execute if score @s s_s_blaze_t < @s s_t_fortress_t if score @s s_s_blaze_s matches 0 if score @s s_s_blaze_m matches 0 run scoreboard players add @s s_s_blaze_m 60
execute if score @s s_s_blaze_t < @s s_t_fortress_t if score @s s_s_blaze_s matches 0 run scoreboard players remove @s s_s_blaze_m 1
execute if score @s s_s_blaze_t < @s s_t_fortress_t if score @s s_s_blaze_s matches 0 run scoreboard players remove @s s_s_blaze_s 60
execute if score @s s_s_blaze_t < @s s_t_fortress_t run scoreboard players remove @s s_s_blaze_s 1
execute if score @s s_s_blaze_t < @s s_t_fortress_t run scoreboard players add @s s_s_blaze_t 20
scoreboard players operation @s s_s_blaze_t -= @s s_t_fortress_t
