# Splits: Track Splits for Speedruns

Depends on other datapacks:
   - Lifetime (keeps track of playtime)

Adds additional scoreboards for timing of specific advancements.

All prefixed with `s_t_` for totals, `s_s_` for splits from the previous.

All suffixed with `_t` for ticks, `_s` for seconds, `_m` for minutes, `_h` for hours.

In order:

   - `nether` - enter The Nether
   - `fortress` - find a Nether Fortress
   - `blaze` - get a Blaze Rod
   - `stronghold` - enter a Stronghold
   - `end` - enter The End
   - `dragon` - kill The Ender Dragon
   - `wake` - exit The End

Each split, when achieved, also calls functions tagged with the above goal as `#splits:<goal>`
