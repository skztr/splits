execute as @a[tag=!splits_enabled,tag=!splits_disabled] run tag @s add splits_enabled
execute if entity @e[nbt={Item:{tag:{splits:["dragon"]}}}] run advancement grant @e[type=minecraft:player,tag=!splits_disabled,nbt={Dimension:"minecraft:the_end"}] only splits:dragon
kill @e[nbt={Item:{tag:{splits:["dragon"]}}}]
