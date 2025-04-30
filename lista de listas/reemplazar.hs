module Main where

-- Funcion principal que reemplaza un numero en una lista de listas
remplazarNumero :: ([[Int]], Int, Int, Int) -> [[Int]]
remplazarNumero ([], _, _, _) = []
remplazarNumero (xs:xss, k, m, n)
    | contiene (xs, k) = remplazarEnLista (xs, k, m, n) : remplazarNumero (xss, k, m, n)
    | otherwise        = xs : remplazarNumero (xss, k, m, n)

-- Funcion para reemplazar un numero en una lista
remplazarEnLista :: ([Int], Int, Int, Int) -> [Int]
remplazarEnLista ([], _, _, _) = []
remplazarEnLista (x:xs, k, m, n)
    | x == k    = m : n : remplazarEnLista (xs, k, m, n)
    | otherwise = x : remplazarEnLista (xs, k, m, n)

-- Funcion para verificar si una lista contiene un numero
contiene :: ([Int], Int) -> Bool
contiene ([], _) = False
contiene (x:xs, k)
    | x == k    = True
    | otherwise = contiene (xs, k)

main :: IO ()
main = do
    --
    let listaDeListas = [[1, 2, 3], [4, 5, 1], [6, 7, 8]]
    let numeroAReemplazar = 1
    let primerNumeroNuevo = 9
    let segundoNumeroNuevo = 10
    let resultado = remplazarNumero (listaDeListas, numeroAReemplazar, primerNumeroNuevo, segundoNumeroNuevo)
    putStrLn "Lista original:"
    print listaDeListas
    putStrLn "Lista modificada:"
    print resultado
