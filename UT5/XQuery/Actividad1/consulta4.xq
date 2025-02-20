(:
4. Devuelve los títulos de todos los libros contenidos en el archivo "libros" y todos los comentarios de cada libro contenidos en el archivo "comentarios".
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro
return concat(
    "Título: ", $libro/titulo, 
    " - Comentarios: ", 
    string-join(doc("comentarios.xml")/comentarios/entrada[titulo = $libro/titulo]/comentario, "; ")
)

