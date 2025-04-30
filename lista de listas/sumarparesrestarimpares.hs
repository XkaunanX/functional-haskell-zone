module Main where

-- Funcion principal que aplica la operacion a cada lista
sumarParesRestarImpares :: [[Int]] -> [Int]
sumarParesRestarImpares [] = []
sumarParesRestarImpares (xs:xss) = resultado : sumarParesRestarImpares xss
  where
    resultado = sumarPares xs + restarImpares xs

-- Funcion para sumar los numeros pares
sumarPares :: [Int] -> Int
sumarPares [] = 0
sumarPares (x:xs)
    | x `mod` 2 == 0 = x + sumarPares xs
    | otherwise      = sumarPares xs

-- Funcion para restar los numeros impares
restarImpares :: [Int] -> Int
restarImpares [] = 0
restarImpares (x:xs)
    | x `mod` 2 /= 0 = -x + restarImpares xs
    | otherwise      = restarImpares xs

main :: IO ()
main = do
    --
    let listaDeListas = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let resultado = sumarParesRestarImpares listaDeListas
    putStrLn "Resultado:"
    print resultado
