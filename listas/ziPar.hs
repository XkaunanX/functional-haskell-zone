module Main where

-- Función zipar
zipar :: [a] -> [b] -> [(a, b)]
zipar [] _ = []
zipar _ [] = []
zipar (x:xs) (y:ys) = (x, y) : zipar xs ys

main :: IO ()
main = do
    let lista1 = [1, 2, 3]
    let lista2 = ['a', 'b', 'c']
    let resultado = zipar lista1 lista2
    putStrLn $ "Lista de pares: " ++ show resultado
