module Main where

-- Función recursiva que calcula la suma de una lista
suma :: [Int] -> Int
suma [] = 0  -- Caso base: la suma de una lista vacía es 0
suma (x:xs) = x + suma xs  -- Suma el primer elemento con la suma del resto de la lista

main :: IO ()
main = do
    putStrLn "Introduce una lista de números (como [1, 2, 3]):"
    input <- getLine
    let lista = read input :: [Int]

    -- Llamar a la función suma
    let resultado = suma lista

    -- Mostrar el resultado
    putStrLn ("La suma de los números es: " ++ show resultado)
