module Main where

-- Defino la funcion que suma si ambos numeros son positivos o cero si no lo son
sumaPositivos :: (Int, Int) -> Int
sumaPositivos (x, y)
    |ambosPositivos     = x+y
    |otherwise          = 0
  where ambosPositivos = x>0 && y>0

main :: IO ()
main = do
    --
    putStrLn "Funcion sumaPositivos(x,y)"

    -- Pedir al usuario el primer numero
    putStrLn "Ingrese el primer numero"
    input <- getLine
    let x = read input :: Int

    -- Pedir al usuario el primer numero
    putStrLn "Ingrese el segundo numero"
    input <- getLine
    let y = read input :: Int


    -- Aplicar la funcion sumPositivos
    let resultado = sumaPositivos (x, y)

    -- Imprimir el resultado
    putStrLn ("Resultado: " ++ show resultado)
