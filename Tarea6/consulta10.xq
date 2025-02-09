(: 5. Modelo de las impresoras en red :)
for $impresora in doc("impresoras.xml")/impresoras/impresora
where $impresora/enred
return <modelo>{ $impresora/modelo/text() }</modelo>

(: Comentario: Aquí simplemente filtro las impresoras que tienen el nodo "enred", que indica que están en red. :)