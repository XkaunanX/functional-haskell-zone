module Main where

-- Función que calcula el factorial
factorial :: Int -> Int
factorial n = product [1..n]
    where
        -- Función auxiliar para verificar si un número es negativo
        esNegativo x = x < 0

main :: IO ()
main = do
    putStrLn "Introduce un número para calcular su factorial: "
    input <- getLine
    let num = read input :: Int
    
    if num < 0
    then putStrLn "El número no puede ser negativo."
    else putStrLn ("El factorial de " ++ show num ++ " es: " ++ show (factorial num))
