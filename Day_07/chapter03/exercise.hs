-- Exercises: Scope
-- 1. These lines of code are from a REPL session. Is 𝑦 in scope for 𝑧?
-- Prelude> let x = 5
-- Prelude> let y = 7
-- Prelude> let z = x * y
-- Answer

--  Yes both x and y both are in scope 


-- 2. These lines of code are from a REPL session. Is ℎ in scope for
-- function 𝑔?
-- Prelude> let f = 3
-- Prelude> let g = 6 * f + h

-- No, h is not in scope 

-- 3. This code sample is from a source file. Is everything we need
-- to execute area in scope?
-- area d = pi * (r * r)
-- r = d / 2

-- No, decalring r and d not in scope

-- 4. This code is also from a source file. Now are 𝑟 and 𝑑 in scope
-- for area?
-- area d = pi * (r * r)
-- where r = d / 2

-- Yes, both r and d are in scope.

-- Syntax error
--1. ++ [1, 2, 3] [4, 5, 6]
-- ANS
-- (++) [1, 2, 3] [4, 5, 6] 

-- 2. '<3' ++ ' Haskell'
-- ANS
-- "<3" ++ " Haskell"
-- 3. concat ["<3", " Haskell"]
-- ANS
-- No syntax error,compiles