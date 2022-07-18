import System.Win32 (COORD (x))

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

square :: Num a => a -> a
square x = x * x

areaCircle :: Fractional a => a -> a
areaCircle x = 3.14 * square x