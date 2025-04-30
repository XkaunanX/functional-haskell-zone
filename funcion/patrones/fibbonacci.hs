module Main where

-- Función fibonacci utilizando patrones
fibonacci :: Int -> Int
fibonacci 0 = 0  -- Caso base
fibonacci 1 = 1  -- Caso base
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)  -- Llamada recursiva

main :: IO ()
main = do
    putStrLn "Introduce un número para obtener el n-ésimo número de Fibonacci:"
    input <- getLine
    let numero = read input :: Int

    -- Llamar a la función fibonacci
    let resultado = fibonacci numero

    -- Mostrar el resultado
    putStrLn ("El número Fibonacci en la posición " ++ show numero ++ " es: " ++ show resultado)
