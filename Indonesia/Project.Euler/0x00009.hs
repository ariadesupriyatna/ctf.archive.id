perim :: Int
perim = 1000

main :: IO ()
main = putStrLn (show ans)

ans :: Int
ans = head [a * b * (perim - a - b) | a <- [1..perim], b <- [a+1..perim], isIntegerRightTriangle a b]

isIntegerRightTriangle :: Int -> Int -> Bool
isIntegerRightTriangle a b = a < b && b < c && a * a + b * b == c * c
  where c = perim - a - b

