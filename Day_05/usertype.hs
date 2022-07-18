class Alphaa a where
  check :: Integer -> a

newtype Password
  = Password String
  deriving (Show)

instance Alphaa Password where
    -- check str = 