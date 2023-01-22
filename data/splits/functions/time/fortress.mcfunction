scoreboard players operation @s s_t_fortress_t = @s lt_ticks
scoreboard players operation @s s_t_fortress_s = @s lt_seconds
scoreboard players operation @s s_t_fortress_m = @s lt_minutes
scoreboard players operation @s s_t_fortress_h = @s lt_hours

scoreboard players operation @s s_s_fortress_h = @s s_t_fortress_h
scoreboard players operation @s s_s_fortress_h -= @s s_t_nether_h

scoreboard players operation @s s_s_fortress_m = @s s_t_fortress_m
execute if score @s s_s_fortress_m < @s s_t_nether_m run scoreboard players remove @s s_s_fortress_h 1
execute if score @s s_s_fortress_m < @s s_t_nether_m run scoreboard players add @s s_s_fortress_m 60
scoreboard players operation @s s_s_fortress_m -= @s s_t_nether_m

scoreboard players operation @s s_s_fortress_s = @s s_t_fortress_s
execute if score @s s_s_fortress_s < @s s_t_nether_s if score @s s_s_fortress_m matches 0 run scoreboard players remove @s s_s_fortress_h 1
execute if score @s s_s_fortress_s < @s s_t_nether_s if score @s s_s_fortress_m matches 0 run scoreboard players add @s s_s_fortress_m 60
execute if score @s s_s_fortress_s < @s s_t_nether_s run scoreboard players remove @s s_s_fortress_m 1
execute if score @s s_s_fortress_s < @s s_t_nether_s run scoreboard players add @s s_s_fortress_s 60
scoreboard players operation @s s_s_fortress_s -= @s s_t_nether_s

scoreboard players operation @s s_s_fortress_t = @s s_t_fortress_t
execute if score @s s_s_fortress_t < @s s_t_nether_t if score @s s_s_fortress_s matches 0 if score @s s_s_fortress_m matches 0 run scoreboard players remove @s s_s_fortress_h 1
execute if score @s s_s_fortress_t < @s s_t_nether_t if score @s s_s_fortress_s matches 0 if score @s s_s_fortress_m matches 0 run scoreboard players add @s s_s_fortress_m 60
execute if score @s s_s_fortress_t < @s s_t_nether_t if score @s s_s_fortress_s matches 0 run scoreboard players remove @s s_s_fortress_m 1
execute if score @s s_s_fortress_t < @s s_t_nether_t if score @s s_s_fortress_s matches 0 run scoreboard players remove @s s_s_fortress_s 60
execute if score @s s_s_fortress_t < @s s_t_nether_t run scoreboard players remove @s s_s_fortress_s 1
execute if score @s s_s_fortress_t < @s s_t_nether_t run scoreboard players add @s s_s_fortress_t 20
scoreboard players operation @s s_s_fortress_t -= @s s_t_nether_t
function #splits:fortress
