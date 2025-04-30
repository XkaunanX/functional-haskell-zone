module Main where

-- Función que verifica si un número es par
esPar :: Int -> Bool
esPar x = x `mod` 2 == 0

main :: IO ()
main = do
    putStrLn "Funcion esPar(x):= True si es par, False si es impar"
    
    -- Pedir un número al usuario
    putStrLn "Introduce un número: "
    input <- getLine
    let numero = read input :: Int
    
    -- Aplicar la función esPar
    let resultado = esPar numero

    -- Mostrar el resultado
    putStrLn ("El número " ++ show numero ++ " es par: " ++ show resultado)
