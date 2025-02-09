(: 1. Nombre y país de todos los artistas :)
for $artista in doc("artistas.xml")/artistas/artista
return 
  <artista>
    <nombreCompleto>{ $artista/nombreCompleto/text() }</nombreCompleto>
    <pais>{ $artista/pais/text() }</pais>
  </artista>
  
(: Comentario: Aquí selecciono cada artista y simplemente extraigo su nombre completo y el país. Uso "text()" para que solo se muestre el texto sin etiquetas adicionales. :)
