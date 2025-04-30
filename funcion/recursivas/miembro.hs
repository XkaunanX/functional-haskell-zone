module Main where

-- Función que verifica si un elemento pertenece a una lista
miembro :: Eq a => a -> [a] -> Bool
miembro _ [] = False  -- Si la lista está vacía, no hay elemento
miembro x (y:ys) = x == y || miembro x ys  -- Verifica si el elemento está en la lista

main :: IO ()
main = do
    putStrLn "Introduce un número para verificar si está en la lista:"
    input <- getLine
    let numero = read input :: Int

    putStrLn "Introduce una lista de números (como [1, 2, 3]):"
    inputList <- getLine
    let lista = read inputList :: [Int]

    -- Llamar a la función miembro
    let resultado = miembro numero lista

    -- Mostrar el resultado
    putStrLn ("El número " ++ show numero ++ " está en la lista: " ++ show resultado)
