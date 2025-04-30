module Main where

-- Función palindromo
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

main :: IO ()
main = do
    let lista = [1, 2, 3, 2, 1]
    let resultado = palindromo lista
    putStrLn $ "La lista es un palíndromo: " ++ show resultado
