module Main where

-- Definir la funcion que calcula el doble de un numero
cuadrado :: Int -> Int
cuadrado x = x*x

main :: IO ()
main = do
    -- 
    putStrLn "Funcion cuadrado(x):= x*x"

    -- Pedir un numero al usuario
    putStrLn "Introduce un numero: "

    -- Leer el valor ingresado como una cadena
    input <- getLine

    -- Convertir la entrada a un numero entero
    let numero = read input :: Int

    -- Calcular el cuadrado del numero
    let resultado = cuadrado numero

    -- Mostrar el resultado
    putStrLn ("El cuadrado de " ++ show numero ++ " es " ++ show resultado)