putStrLn "Introduce varias líneas de texto. Para finalizar, presiona Ctrl-D (Unix) o Ctrl-Z (Windows):"
contenido <- getContents
putStrLn "Has introducido:"
putStrLn contenido
