module Main where

-- Definir la funcion negativo
negativo :: Int -> Int
negativo x = -x

main :: IO ()
main = do
    putStrLn "Funcion negativo(x):=-x"
    
    -- Pedir un número al usuario
    putStrLn "Introduce un número: "
    input <- getLine
    let numero = read input :: Int
    
    -- Aplicar la funcion negativo
    let resultado = negativo numero

    -- Mostrar el resultado
    putStrLn ("El negativo de " ++ show numero ++ " es: " ++ show resultado)
