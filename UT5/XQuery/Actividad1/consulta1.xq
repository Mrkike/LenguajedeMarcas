(:
1. Devuelve los títulos de los libros que tengan más de dos autores ordenados por su título. :)

for $libro in doc("libros.xml")/biblioteca/libros/libro
where count($libro/autor) > 1
return $libro/titulo