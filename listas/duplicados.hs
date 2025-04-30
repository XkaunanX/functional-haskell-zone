module Main where

-- Función duplicados
duplicados :: Eq a => [a] -> [a]
duplicados [] = []
duplicados (x:xs) 
    | x `elem` xs = duplicados xs
    | otherwise = x : duplicados xs

main :: IO ()
main = do
    let lista = [1, 2, 2, 3, 4, 4, 5]
    let resultado = duplicados lista
    putStrLn $ "Lista sin duplicados: " ++ show resultado
