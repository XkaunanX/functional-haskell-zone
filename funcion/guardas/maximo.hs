module Main where

-- Definir la funcion que calcula el maximo valor entre dos numero y retorne 0 si son iguales
maximo :: (Int, Int) -> Int
maximo (x,y)
    | x == y    = 0
    | x > y     = x
    | otherwise = y

main :: IO ()
main = do
    --
    putStrLn "Funcion maximo(x,y):=x,if x>y\n:=y, if y<x\n:=0, otherwise"
    
    -- Pedir el primer numero al usuario
    putStrLn "Introduce el primer numero: "
    input <- getLine
    let x = read input :: Int

    -- Pedir el segundo numero al usuario
    putStrLn "Introduce el segundo numero: "
    input <- getLine
    let y = read input :: Int

    -- Calcular el maximo o devolver o si son iguales
    let resultado = maximo (x,y)

    -- Mostrar el resultado
    putStrLn ("El maximo es: " ++ show resultado)