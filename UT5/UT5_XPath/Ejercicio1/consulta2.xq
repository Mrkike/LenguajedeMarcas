(: 2.- Seleccionar la página web del instituto :)
for $web in doc("instituto.xml")/ies/web
return $web/text()