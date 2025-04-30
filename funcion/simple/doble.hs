module Main where

-- Definir la funcion que calcula el doble de un numero
doble :: Int -> Int
doble x = x*2

main :: IO ()
main = do
    -- 
    putStrLn "Funcion doble(x):= 2*x"

    -- Pedir un numero al usuario
    putStrLn "Introduce un numero: "

    -- Leer el valor ingresado como una cadena
    input <- getLine

    -- Convertir la entrada a un numero entero
    let numero = read input :: Int
    
    -- Calcular el doble del numero
    let resultado = doble numero

    -- Mostrar el resultado
    putStrLn ("El doble de " ++ show numero ++ " es " ++ show resultado)

