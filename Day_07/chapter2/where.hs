module Where where

import Learn (x, y)

var1 = x
  where
    x = 5

var2 = x * x
  where
    x = 5

var3 = x * y
  where
    x = 5
    y = 6

var4 = x + 3
  where
    x = 3
    y = 100

var5 = x * 3 + y
  where
    x = 3
    y = 1000

var6 = x * 5
  where
    y = 10
    x = 10 * 5 + y

var7 = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10

