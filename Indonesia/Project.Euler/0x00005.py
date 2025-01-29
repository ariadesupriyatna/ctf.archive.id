import Data.List (foldl1')
import Data.Function (on)
import Data.Maybe (fromJust)

lcm' :: Integral a => a -> a -> a
lcm' x y = abs (x * y) `div` gcd x y

compute :: String
compute = show $ foldl1' lcm' [1..20]

main :: IO ()
main = putStrLn compute

