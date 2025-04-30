# Listas en Haskell

En Haskell, las listas son una de las estructuras de datos mas utilizadas debido a su simplicidad y flexibilidad. Las listas permiten almacenar y manipular colecciones de elementos del mismo tipo.

Ejemplo: 

```haskell
-- Función para manejar el item (sumarle 1)
procesarItem :: Int -> Int
procesarItem x = x + 1

-- Función para manejar la lista (aplicar procesarItem a cada elemento)
procesarLista :: [Int] -> [Int]
procesarLista lista = map procesarItem lista

-- Ejemplo de uso
main :: IO ()
main = do
  let lista = [1, 2, 3, 4, 5]
  let resultado = procesarLista lista
  print resultado
```

## Caracteristicas de las Listas

- **Homogeneas**: Todos los elementos en una lista deben ser del mismo tipo.
- **Inmutables**: Una vez creada, una lista no puede ser modificada. Sin embargo, se pueden crear nuevas listas a partir de operaciones sobre las existentes.
- **Dinamicas**: No tienen un tamaño fijo; se pueden expandir o reducir mediante operaciones.
- **Recursivas**: Las listas son definidas de manera recursiva, ya que una lista puede estar vacia o contener un elemento seguido de otra lista.

## Operaciones Principales

Haskell proporciona una amplia variedad de operaciones para trabajar con listas, incluyendo:

- **Concatenacion**: Combinar dos listas en una sola.
- **Acceso por indice**: Obtener un elemento especifico de la lista basado en su posicion.
- **Mapeo**: Aplicar una funcion a cada elemento de la lista.
- **Filtrado**: Crear una nueva lista que cumpla con ciertos criterios.
- **Reduccion**: Combinar todos los elementos de la lista en un unico valor.

## Representacion y Notacion

Las listas en Haskell se representan utilizando corchetes y los elementos se separan por comas. La lista vacia se denota con `[]`.

## Patrones y Operaciones Avanzadas

Haskell permite trabajar con listas mediante patrones para realizar operaciones complejas, como:

- **Descomposicion**: Dividir una lista en su primer elemento (cabeza) y el resto de la lista (cola).
- **Comprension de listas**: Generar listas utilizando una sintaxis declarativa que combina condiciones y generadores.
- **Uso de funciones recursivas**: Operar sobre listas mediante recursion.

## Funciones y Metodos

Haskell incluye muchas funciones predefinidas para trabajar con listas, como:

- **length**: Calcula el numero de elementos en la lista.
- **reverse**: Invierte el orden de los elementos.
- **take y drop**: Selecciona o elimina una cantidad especifica de elementos desde el inicio.
- **foldr y foldl**: Realizan reducciones sobre listas desde la derecha o la izquierda.

## Aplicaciones de las Listas

- Almacenamiento de colecciones de datos.
- Manipulacion de secuencias de elementos.
- Procesamiento de texto y cadenas.
- Representacion de estructuras como colas, pilas y arboles.

Las listas son esenciales en Haskell y constituyen una herramienta poderosa para modelar y resolver problemas en un estilo funcional. 
