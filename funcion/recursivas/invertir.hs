module Main where

-- Función que invierte una lista
reverseList :: [a] -> [a]
reverseList [] = []  -- Si la lista está vacía, retorna una lista vacía
reverseList (x:xs) = reverseList xs ++ [x]  -- Recursivamente invierte la lista

main :: IO ()
main = do
    putStrLn "Introduce una lista para invertirla (como [1, 2, 3]):"
    input <- getLine
    let lista = read input :: [Int]

    -- Llamar a la función reverseList
    let resultado = reverseList lista

    -- Mostrar el resultado
    putStrLn ("La lista invertida es: " ++ show resultado)
