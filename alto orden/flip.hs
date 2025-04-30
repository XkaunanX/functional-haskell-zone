module Main where

-- Definir la función resta
resta :: Int -> Int -> Int
resta x y = x - y

-- Usar flip para invertir el orden de los argumentos
flipResta :: Int -> Int -> Int
flipResta = flip resta

main :: IO ()
main = do
    -- Ejemplo normal
    let resultado1 = resta 5 3
    putStrLn $ "Resultado de resta 5 3: " ++ show resultado1  -- 2

    -- Ejemplo usando flip
    let resultado2 = flipResta 3 5
    putStrLn $ "Resultado de flipResta 3 5: " ++ show resultado2  -- 2
