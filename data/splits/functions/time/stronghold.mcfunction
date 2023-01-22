scoreboard players operation @s s_t_stronghold_t = @s lt_ticks
scoreboard players operation @s s_t_stronghold_s = @s lt_seconds
scoreboard players operation @s s_t_stronghold_m = @s lt_minutes
scoreboard players operation @s s_t_stronghold_h = @s lt_hours

execute if entity @s[advancements={splits:blaze=true}] run function splits:time/stronghold/split_blaze
execute if entity @s[advancements={splits:blaze=false}] run function splits:time/stronghold/split_nether
function #splits:stronghold
