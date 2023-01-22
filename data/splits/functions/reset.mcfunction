# must run as a specific player
tag @s remove splits_disabled
tag @s remove splits_enabled

scoreboard players reset @s s_t_nether_t
scoreboard players reset @s s_t_nether_s
scoreboard players reset @s s_t_nether_m
scoreboard players reset @s s_t_nether_h

scoreboard players reset @s s_t_fortress_t
scoreboard players reset @s s_t_fortress_s
scoreboard players reset @s s_t_fortress_m
scoreboard players reset @s s_t_fortress_h

scoreboard players reset @s s_s_fortress_t
scoreboard players reset @s s_s_fortress_s
scoreboard players reset @s s_s_fortress_m
scoreboard players reset @s s_s_fortress_h

scoreboard players reset @s s_t_blaze_t
scoreboard players reset @s s_t_blaze_s
scoreboard players reset @s s_t_blaze_m
scoreboard players reset @s s_t_blaze_h

scoreboard players reset @s s_s_blaze_t
scoreboard players reset @s s_s_blaze_s
scoreboard players reset @s s_s_blaze_m
scoreboard players reset @s s_s_blaze_h

scoreboard players reset @s s_t_stronghold_t
scoreboard players reset @s s_t_stronghold_s
scoreboard players reset @s s_t_stronghold_m
scoreboard players reset @s s_t_stronghold_h

scoreboard players reset @s s_s_stronghold_t
scoreboard players reset @s s_s_stronghold_s
scoreboard players reset @s s_s_stronghold_m
scoreboard players reset @s s_s_stronghold_h

scoreboard players reset @s s_t_end_t
scoreboard players reset @s s_t_end_s
scoreboard players reset @s s_t_end_m
scoreboard players reset @s s_t_end_h

scoreboard players reset @s s_s_end_t
scoreboard players reset @s s_s_end_s
scoreboard players reset @s s_s_end_m
scoreboard players reset @s s_s_end_h

scoreboard players reset @s s_t_dragon_t
scoreboard players reset @s s_t_dragon_s
scoreboard players reset @s s_t_dragon_m
scoreboard players reset @s s_t_dragon_h

scoreboard players reset @s s_s_dragon_t
scoreboard players reset @s s_s_dragon_s
scoreboard players reset @s s_s_dragon_m
scoreboard players reset @s s_s_dragon_h

scoreboard players reset @s s_t_wake_t
scoreboard players reset @s s_t_wake_s
scoreboard players reset @s s_t_wake_m
scoreboard players reset @s s_t_wake_h

scoreboard players reset @s s_s_wake_t
scoreboard players reset @s s_s_wake_s
scoreboard players reset @s s_s_wake_m
scoreboard players reset @s s_s_wake_h

advancement revoke @s only splits:wake
advancement revoke @s only splits:dragon
advancement revoke @s only splits:end
advancement revoke @s only splits:stronghold
advancement revoke @s only splits:blaze
advancement revoke @s only splits:fortress
advancement revoke @s only splits:nether
advancement revoke @s only splits:root

advancement revoke @s only minecraft:nether/obtain_blaze_rod
advancement revoke @s only minecraft:end/kill_dragon
advancement revoke @s only minecraft:story/enter_the_end
advancement revoke @s only minecraft:nether/find_fortress
advancement revoke @s only minecraft:story/enter_the_nether
advancement revoke @s only minecraft:story/follow_ender_eye
