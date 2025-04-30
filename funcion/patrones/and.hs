module Main where

-- Funcion and

andCustom :: (Bool, Bool) -> Bool
andCustom (True, True)    = True
andCustom (True, False)   = False
andCustom (False, True)   = False
andCustom (False, False)  = False

main :: IO ()
main = do
    --
    putStrLn "Funcion and(x,y):= True o False"

    -- Pedir al usuario el primer booleano
    putStrLn "Introduce el primer booleano (True o False):"
    input <- getLine
    let x = read input :: Bool

    -- Pedir al usuario el segundo booleano
    putStrLn "Introduce el segundo booleano (True o False):"
    input <- getLine
    let y = read input :: Bool

    -- LLamar a la funcion and
    let resultado = andCustom (x, y)

      -- Mostrar el resultado
    putStrLn ("El resultado de " ++ show x ++ " AND " ++ show y ++ " es: " ++ show resultado)
