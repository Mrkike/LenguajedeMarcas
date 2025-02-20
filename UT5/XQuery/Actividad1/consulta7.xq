(:
Escribir una consulta que obtenga el título de los libros cuyo número de páginas esté por debajo de 500
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro
where $libro/paginas < 500
return $libro/titulo/text()
