(: 5. El número de artistas nacidos antes de 1600 :)
count(
  for $artista in doc("artistas.xml")/artistas/artista
  where xs:integer($artista/nacimiento) < 1600
  return $artista
)

(: Comentario: Uso la función "count()" para contar cuántos artistas cumplen la condición de haber nacido antes de 1600. :)
