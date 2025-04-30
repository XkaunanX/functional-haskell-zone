module Main where

-- Función que verifica si un año es bisiesto
esBisiesto :: Int -> String
esBisiesto year
    | (year `mod` 4 == 0 && year `mod` 100 /= 0) || (year `mod` 400 == 0) = "Es bisiesto"
    | otherwise = "No es bisiesto"

main :: IO ()
main = do
    putStrLn "Introduce un año: "
    input <- getLine
    let año = read input :: Int
    putStrLn (esBisiesto año)
