module Main where
import GHC.Base (VecElem(Int16ElemRep))

signo :: Int -> Int
signo x
    |x>0        = 1
    |x==0       = 0
    |otherwise  = -1

main :: IO ()
main = do
    --
    putStrLn "Funcion signo(x):=1,if x>0\n:=0, if x=0\n:=-1, otherwise"

    -- Pedir un numero al usuario
    putStrLn "Introduce un numero: "

    -- Leer el valor ingresado como una cadena
    input <- getLine

    -- Convertir la entrada a un numero entero
    let numero = read input :: Int

    -- Preguntar el signo del numero
    let resultado = signo numero

    -- Mostrar el resultado
    putStrLn ("El signo es: " ++ show resultado)