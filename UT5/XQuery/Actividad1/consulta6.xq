(:
Devuelve todos los nodos libro que tengan al menos un nodo autor.
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro
where $libro/autor
return $libro
