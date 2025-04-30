putStrLn "Introduce varios números separados por espacios:"
input <- getLine
let listaNumeros = map read (words input) :: [Int]
putStrLn ("Los números ingresados son: " ++ show listaNumeros)
