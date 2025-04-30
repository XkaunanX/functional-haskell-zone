module Main where

-- Declarar la funcion que devuelve el primer elemento de un par ordenado
primero :: (a, b) -> a
primero (x, _) = x

main :: IO ()
main = do
    --
    putStrLn "Funcion primero(x,y):= x"

    -- Pedir al usuario la primera componente
    putStrLn "Ingrese el primer valor del par ordenado"
    x <- getLine 

    -- Pedir al usuario la segunda compenente
    putStrLn "Ingrese el primer valor del par ordenado"
    y <- getLine 

    -- Aplicar la funcion primero
    let resultado = primero (x, y)

    -- Mostrar al usuario
    putStrLn ("-> " ++ show resultado)