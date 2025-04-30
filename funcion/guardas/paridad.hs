module Main where

-- Función que determina si un número es par o impar
parImpar :: Int -> String
parImpar n
    | n `mod` 2 == 0 = "Es par"
    | otherwise      = "Es impar"

main :: IO ()
main = do
    putStrLn "Introduce un número: "
    input <- getLine
    let numero = read input :: Int
    putStrLn (parImpar numero)
