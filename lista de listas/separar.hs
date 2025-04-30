module Main where

-- Funcion principal: separa los numeros impares y pares de cada sublista
paresimpares :: [[Int]] -> [[Int]]
paresimpares [] = []
paresimpares (xs:xss) = (impares xs ++ pares xs) : paresimpares xss

-- Funcion que devuelve una lista con los numeros impares
impares :: [Int] -> [Int]
impares [] = []
impares (x:xs)
    | x `mod` 2 /= 0 = x : impares xs
    | otherwise      = impares xs

-- Funcion que devuelve una lista con los numeros pares
pares :: [Int] -> [Int]
pares [] = []
pares (x:xs)
    | x `mod` 2 == 0 = x : pares xs
    | otherwise      = pares xs

main :: IO ()
main = do
    let resultado = paresimpares [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]
    putStrLn $ "Valor: " ++ show resultado