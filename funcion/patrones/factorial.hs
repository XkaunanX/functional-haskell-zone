module Main where

-- Función factorial utilizando patrones
factorial :: Int -> Int
factorial 0 = 1  -- Caso base
factorial n = n * factorial (n - 1)  -- Llamada recursiva

main :: IO ()
main = do
    putStrLn "Introduce un número para calcular su factorial:"
    input <- getLine
    let numero = read input :: Int

    -- Llamar a la función factorial
    let resultado = factorial numero

    -- Mostrar el resultado
    putStrLn ("El factorial de " ++ show numero ++ " es: " ++ show resultado)
