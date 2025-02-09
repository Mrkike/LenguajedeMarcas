(: Consultas para impresoras.xml :)

(: 1. Modelo de las impresoras de tipo “láser” que sean modelo LaserJet :)
for $impresora in doc("impresoras.xml")/impresoras/impresora
where contains($impresora/modelo, "Laser")
return <modelo>{ $impresora/modelo/text() }</modelo>

(: Comentario: Uso la función "contains()" para que busque cualquier modelo que contenga la palabra "Laser" :)
