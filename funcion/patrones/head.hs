module Main where

-- Función que obtiene el primer elemento de una lista
headCustom :: [a] -> a
headCustom (x:_) = x  -- El primer elemento
headCustom []    = error "Lista vacía"  -- Si la lista está vacía, error

main :: IO ()
main = do
    putStrLn "Introduce una lista de elementos (como [1, 2, 3]):"
    input <- getLine
    let lista = read input :: [Int]

    -- Llamar a la función headCustom
    let resultado = headCustom lista

    -- Mostrar el resultado
    putStrLn ("El primer elemento de la lista es: " ++ show resultado)
