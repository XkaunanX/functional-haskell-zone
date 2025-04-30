module Main where

-- Definir la funcion identidad
identidad :: a -> a
identidad x = x

main :: IO ()
main = do
    putStrLn "Funcion identidad(x):= x"
    
    -- Pedir un valor al usuario
    putStrLn "Ingrese algun valor: "
    input <- getLine
    
    -- Aplicar la funcion identidad
    let resultado = identidad input

    -- Mostrar el resultado
    putStrLn ("-> " ++ resultado)
