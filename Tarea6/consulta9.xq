(: 4. Marca y modelo de las impresoras con tamaño A3 como único tamaño :)
for $impresora in doc("impresoras.xml")/impresoras/impresora
where count($impresora/tamaño) = 1 and $impresora/tamaño = "A3"
return 
  <impresora>
    <marca>{ $impresora/marca/text() }</marca>
    <modelo>{ $impresora/modelo/text() }</modelo>
  </impresora>

(: Comentario: Uso "count($impresora/tamaño) = 1" para asegurarme que el único tamaño es A3. :)