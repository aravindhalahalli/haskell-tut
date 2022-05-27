-- 1. These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y

-- Yes

-- 2. These lines of code are from a REPL session. Is ℎ in scope for
-- function 𝑔?
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h

-- No

-- 3. This code sample is from a source file. Is everything we need
-- to execute area in scope?
-- area d = pi * (r * r)
-- r = d / 2

-- No

-- area1 :: Floating a => p -> a
-- area1 d = pi * (r * r)
-- r = d / 2

-- Varibale d not in scope 

-- 4. This code is also from a source file. Now are 𝑟 and 𝑑 in scope
-- for area?
-- area d = pi * (r * r)
-- where r = d / 2

-- No

area :: Floating a => a -> a
area d = pi * (r * r)
  where
    r = d / 2
