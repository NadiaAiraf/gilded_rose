# Gilded Rose in Ruby

Plan to tackle:

I having done a little bit with this it seems like everything should fall into the following classes:

- legendary class (has no sell-by date, never changes value)
- aged-cheese class (no sell-by date, +1 to value each day)
- backstage-pass class (+1 value each day, if 10 days or less +2 quality, +3 for 5 days or less, 0 after sell-by)
- normal class (value -1, -2 after sell-by date)
- conjured class (value -2, -4 after sell-by date)

Most of these will have the same initial methods like update_value and will be have to be inherited due to the goblin in the corner
