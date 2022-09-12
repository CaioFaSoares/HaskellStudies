module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"

doubleSecond :: Num t => [t] -> [t]
doubleSecond xs = zipWith (*) xs $ concat (repeat [1,2])