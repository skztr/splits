scoreboard players operation @s s_t_blaze_t = @s lt_ticks
scoreboard players operation @s s_t_blaze_s = @s lt_seconds
scoreboard players operation @s s_t_blaze_m = @s lt_minutes
scoreboard players operation @s s_t_blaze_h = @s lt_hours

execute if entity @s[advancements={splits:fortress=true}] run function splits:time/blaze/split_fortress
execute if entity @s[advancements={splits:fortress=false}] run function splits:time/blaze/split_nether
function #splits:blaze
