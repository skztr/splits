scoreboard players operation @s s_t_wake_t = @s lt_ticks
scoreboard players operation @s s_t_wake_s = @s lt_seconds
scoreboard players operation @s s_t_wake_m = @s lt_minutes
scoreboard players operation @s s_t_wake_h = @s lt_hours

execute if entity @s[advancements={splits:dragon=true}] run function splits:time/wake/split_dragon
execute if entity @s[advancements={splits:dragon=false}] run function splits:time/wake/split_nil
function #splits:wake
