# Funciones de Alto Orden en Haskell

En Haskell, las funciones de alto orden son aquellas que pueden recibir otras funciones como argumentos o devolver funciones como resultado. Estas funciones son fundamentales en la programación funcional, ya que permiten una gran flexibilidad y abstracción. A continuación, se describen algunas de las funciones de alto orden más comunes en Haskell.

```haskell
-- Ejemplo de uso de map
doblar :: Int -> Int
doblar x = x * 2

-- Aplicar la funcion "doblar" a cada elemento de la lista
resultado = map doblar [1, 2, 3, 4, 5]

-- resultado: [2, 4, 6, 8, 10]
```

## Características Clave

- **Reciben funciones como argumentos**: Las funciones de alto orden pueden tomar otras funciones como entradas, permitiendo componer y aplicar comportamientos de manera flexible.
- **Devuelven funciones como resultados**: Algunas funciones de alto orden devuelven nuevas funciones, lo que permite crear funciones más especializadas a partir de funciones generales.

## Funciones de Alto Orden Comunes

### `all`

La funcion `all` verifica si todos los elementos de una lista cumplen con una condicion. Recibe una funcion que especifica la condicion a evaluar y una lista de elementos. Si todos los elementos de la lista satisfacen la condicion, devuelve `True`; de lo contrario, devuelve `False`.

### `any`

Similar a `all`, pero en este caso, la funcion `any` devuelve `True` si al menos un elemento de la lista cumple con la condicion especificada. Si ninguno de los elementos satisface la condicion, devuelve `False`.

### `compose`

La funcion `compose` permite componer dos funciones, es decir, crear una nueva funcion que aplica una funcion a los datos y luego aplica otra funcion al resultado de la primera. Esto permite crear cadenas de transformaciones de manera sencilla.

### `concatMap`

La funcion `concatMap` aplica una funcion que devuelve una lista a cada elemento de una lista dada, y luego concatena todas las listas resultantes en una sola lista. Es una combinacion de `map` y `concat`, por lo que es útil cuando se trabaja con listas dentro de listas.

### `const`

La funcion `const` toma dos argumentos y siempre devuelve el primero, independientemente del segundo. Es útil para crear funciones que ignoran su entrada y siempre devuelven un valor constante.

### `filter`

La funcion `filter` toma una funcion que especifica una condicion y una lista, y devuelve una nueva lista con solo los elementos que cumplen con esa condicion. Es ideal para extraer elementos de una lista que cumplen con ciertos criterios.

### `flip`

La funcion `flip` invierte el orden de los dos primeros argumentos de una funcion binaria. Esto permite modificar el comportamiento de funciones que operan sobre dos argumentos cambiando el orden en que se pasan esos argumentos.

### `foldl`

La funcion `foldl` es una funcion de acumulacion que recorre una lista de izquierda a derecha, aplicando una funcion de acumulacion que combina los elementos de la lista con un valor inicial. Es una forma eficiente de reducir una lista a un solo valor.

### `groupBy`

La funcion `groupBy` agrupa los elementos de una lista en sublistas, utilizando una funcion que define si dos elementos deben estar en el mismo grupo. Es muy útil cuando se quiere agrupar elementos de acuerdo a una propiedad común.
