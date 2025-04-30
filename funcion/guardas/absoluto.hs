module Main where

valorAbsoluto :: Int -> Int
valorAbsoluto x
    |x<0        = x*(-1)
    |x==0       = 0
    |otherwise  = x

main :: IO ()
main = do
    --
    putStrLn "Funcion absoluto(x)=|x|"

    -- Pedir al usuario un numero
    putStrLn "Ingrese un numero: "

    -- Leer la entrada dada por el usuario
    input <- getLine

    -- Convertir a Int
    let numero = read input :: Int

    -- Aplicar la funcion valor absoluto
    let resultado = valorAbsoluto numero

    -- Mostrar al usuario
    putStrLn ("|" ++ show numero ++ "|= " ++ show resultado)