module Main where

-- Función que calcula la longitud de una lista
longitud :: [a] -> Int
longitud [] = 0  -- Si la lista está vacía, la longitud es 0
longitud (_:xs) = 1 + longitud xs  -- Si no, cuenta 1 más la longitud del resto

main :: IO ()
main = do
    putStrLn "Introduce una lista de elementos (como [1, 2, 3]):"
    input <- getLine
    let lista = read input :: [Int]

    -- Llamar a la función longitud
    let resultado = longitud lista

    -- Mostrar el resultado
    putStrLn ("La longitud de la lista es: " ++ show resultado)
