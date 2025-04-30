module Main where

-- Definir la funcion cinco
cinco :: a -> Int
cinco _ = 5

main :: IO ()
main = do
    --
    putStrLn "Funcion cinco(x):=5"

    -- Pedir un valor al usuario
    putStrLn "Ingrese algun simbolo: "

    -- Leer el valor ingresado como una cadena
    input <- getLine

    -- Aplicar la funcion 5
    let resultado = cinco input

    -- Mostrar el resultado
    putStrLn ("-> " ++ show resultado)