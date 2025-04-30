import Text.Read (readMaybe)

putStrLn "Introduce un número: "
input <- getLine
let numero = readMaybe input :: Maybe Int
case numero of
  Just n  -> putStrLn ("El número ingresado es: " ++ show n)
  Nothing -> putStrLn "No se ingresó un número válido."
