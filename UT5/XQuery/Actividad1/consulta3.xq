(:
3. Devuelve el título de cada uno de los libros de archivo "libros" junto con el número de autores de cada libro 
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro
return concat ($libro/titulo/text(), " - número de autores: ", count($libro/autor))

(: También se podría hacer usando una variable:
for $libro in doc("libros.xml")/biblioteca/libros/libro
let $numAutores := count($libro/autor)
return concat($libro/titulo, " - Número de autores: ", $numAutores)
:)