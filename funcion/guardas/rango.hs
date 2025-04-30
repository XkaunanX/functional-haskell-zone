module Main where

-- Función que verifica si un número está dentro del rango [10, 20]
estaEnRango :: Int -> String
estaEnRango n
    | n >= 10 && n <= 20 = "Está en el rango"
    | otherwise          = "No está en el rango"

main :: IO ()
main = do
    putStrLn "Introduce un número: "
    input <- getLine
    let numero = read input :: Int
    putStrLn (estaEnRango numero)
