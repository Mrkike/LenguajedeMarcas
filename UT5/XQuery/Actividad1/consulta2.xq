(: 2. Devuelve los títulos de los libros del año 2002 :)

for $libro in doc("libros.xml")/biblioteca/libros/libro
where $libro/@publicacion="2002"
return $libro/titulo