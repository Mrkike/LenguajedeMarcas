(:
8. Devuelva el título del libro, el precio con que consta dicho libro en el archivo "libros" y el precio con que consta ese libro en el archivo "comentarios"
:)

for $libro in doc("libros.xml")/biblioteca/libros/libro
return concat(
  "Título: ", $libro/titulo,
  " - Precio: ",
  string-join(doc("comentarios.xml")/comentarios/entrada[titulo = $libro/titulo]/precio)
)