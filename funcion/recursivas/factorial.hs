module Main where

-- Definir la funcion factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

main :: IO ()
main = do
    --
    putStrLn "Funcion factorial(x)= x*factorial(x-1)"

    -- putStrLn "Introduce un número entero no negativo para calcular su factorial:"
    input <- getLine
    let numero = read input :: Int

    -- Verificar que el numero no sea negativo
    if numero < 0
        then putStrLn "El factorial no está definido para números negativos."
        else do
             
            -- LLamar a la funcion factorial
            let resultado = factorial numero

            -- Mostrar el resultado
            putStrLn ("El factorial de " ++ show numero ++ " es: " ++ show resultado)