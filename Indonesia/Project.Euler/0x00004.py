import Data.List (maximum)

compute :: String
compute = show $ maximum [i * j | i <- [100..999], j <- [100..999], show (i * j) == reverse (show (i * j))]

main :: IO ()
main = putStrLn compute

