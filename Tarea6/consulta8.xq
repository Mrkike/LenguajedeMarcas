(: 3. Marca y modelo de las impresoras con tamaño A3 (pueden tener otros) :)
for $impresora in doc("impresoras.xml")/impresoras/impresora
where $impresora/tamaño = "A3"
return 
  <impresora>
    <marca>{ $impresora/marca/text() }</marca>
    <modelo>{ $impresora/modelo/text() }</modelo>
  </impresora>

(: Comentario: Aquí busco las impresoras que tengan al menos un tamaño A3, aunque tengan otros tamaños. :)