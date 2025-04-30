module Main where

-- Definir la funcion que calcula la cuarta de un numero
cuarta :: Int -> Int
cuarta x = cuadrado x * cuadrado x

    -- Definir la funcion que calcula el doble de un numero
    where cuadrado x = x*x

main :: IO ()
main = do
    --
    putStrLn "Funcion cuarta(x):= doble(x)*doble(x)"

    -- Pedir un numero al usuario
    putStrLn "Introduce un numero: "

    -- Leer el valor ingresado como una cadena
    input <- getLine

    -- Convertir la entrada a un numero entero
    let numero = read input :: Int

    -- Calcular la cuarta del numero
    let resultado = cuarta numero

    -- Mostrar el resultado
    putStrLn ("La cuarta de: " ++ show numero ++ " es " ++ show resultado)