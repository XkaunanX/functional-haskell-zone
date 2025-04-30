import System.IO

main :: IO ()
main = do
  -- Abrir un archivo para escribir
  handle <- openFile "salida.txt" WriteMode
  hPutStrLn handle "Hola, este es un archivo."
  hClose handle
  -- Leer un archivo
  contenido <- readFile "salida.txt"
  putStrLn contenido
