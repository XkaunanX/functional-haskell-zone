module Main where

-- Función que calcula el IMC
imc :: Float -> Float -> Float
imc peso altura = peso / (altura * altura)

-- Función que clasifica según el IMC
clasificarIMC :: Float -> String
clasificarIMC indice
    | indice < 18.5   = "Bajo peso"
    | indice < 24.9   = "Peso normal"
    | indice < 29.9   = "Sobrepeso"
    | otherwise       = "Obesidad"

main :: IO ()
main = do
    putStrLn "Introduce tu peso (kg): "
    pesoInput <- getLine
    putStrLn "Introduce tu altura (m): "
    alturaInput <- getLine
    
    let peso = read pesoInput :: Float
    let altura = read alturaInput :: Float
    
    let indice = imc peso altura
    putStrLn ("Tu IMC es: " ++ show indice)
    putStrLn ("Clasificación: " ++ clasificarIMC indice)
