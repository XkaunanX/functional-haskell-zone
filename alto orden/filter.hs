module Main where

-- Funcion para filtrar los numeros pares
filtrarPares :: [Int] -> [Int]
filtrarPares xs = filter even xs

-- Funcion para filtrar los numeros impares
filtrarImpares :: [Int] -> [Int]
filtrarImpares xs = filter odd xs

-- Funcion para calcular la suma de los numeros pares e impares
sumarParesEImpares :: [Int] -> (Int, Int)
sumarParesEImpares xs =
    let pares = filtrarPares xs
        impares = filtrarImpares xs
    in (sum pares, sum impares)

main :: IO ()
main = do
    --
    let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let (sumaPares, sumaImpares) = sumarParesEImpares lista
    putStrLn "Lista original:"
    print lista
    putStrLn "Suma de numeros pares:"
    print sumaPares
    putStrLn "Suma de numeros impares:"
    print sumaImpares