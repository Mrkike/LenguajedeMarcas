(: 3. Nombre de los artistas para los que no hay año de fallecimiento :)
for $artista in doc("artistas.xml")/artistas/artista
where not($artista/fallecimiento)
return <nombreCompleto>{ $artista/nombreCompleto/text() }</nombreCompleto>

(: Comentario: La condición "not($artista/fallecimiento)" sirve para filtrar a los artistas que no tienen el dato de fallecimiento. :)
