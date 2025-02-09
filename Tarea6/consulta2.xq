(: 2. El nombre (sin etiquetas) de los artistas que nacieron antes de 1500 :)
for $artista in doc("artistas.xml")/artistas/artista
where xs:integer($artista/nacimiento) < 1500
return $artista/nombreCompleto/text()

(: Comentario: Utilizo "xs:integer" para asegurarme de que el año de nacimiento se compara como número. Solo saco el texto del nombre sin etiquetas. :)
