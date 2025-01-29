module Main where

compute :: String
compute = show $ s^2 - s2
  where
    n = 100
    s = sum [i | i <- [1..n]]
    s2 = sum [i^2 | i <- [1..n]]

main :: IO ()
main = putStrLn compute

