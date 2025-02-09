(: 2. Marca y modelo de las impresoras con más de un tamaño :)
for $impresora in doc("impresoras.xml")/impresoras/impresora
where count($impresora/tamaño) > 1
return 
  <impresora>
    <marca>{ $impresora/marca/text() }</marca>
    <modelo>{ $impresora/modelo/text() }</modelo>
  </impresora>

(: Comentario: Uso "count($impresora/tamaño) > 1" para buscar impresoras que tengan más de un tamaño. Luego muestro la marca y el modelo. :)