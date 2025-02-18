<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="es" xml:lang="es">
            <head>
                <title>CONSULTA XPATH/XQUERY Y TRANSFORMACIÓN DOCUMENTO XML A XSL</title>
            </head>
            <body>
                <h3>1. Listado de los 10 primeros alumnos (indicar número de orden mediante xls):</h3>
                <xsl:for-each select="alumnos/alumno[position() &lt;= 10]">
                    <xsl:value-of select="position()"/>
                    <xsl:text>. -</xsl:text>
                    <xsl:value-of select="apellidos"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="nombre"/>
                    <xsl:text>. </xsl:text>
                    <br />
                </xsl:for-each>
                
                <h3>2. Listado de los 10 primeros alumnos ordenados por localidad:</h3>
                <xsl:for-each select="alumnos/alumno[position() &lt;= 10]">
                    <xsl:sort select="locaclidad"/>
                    <xsl:text>- </xsl:text>
                    <xsl:value-of select="apellidos"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="nombre"/>
                    <xsl:text> (</xsl:text>
                    <xsl:value-of select="localidad"/>
                    <xsl:text>).</xsl:text>
                    <br />
                </xsl:for-each>
                
                <h3>3. Último alumno y su edad:</h3>
                <xsl:text>- El último alumno es </xsl:text>
                <xsl:value-of select="//alumno[last()]/nombre"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="//alumno[last()]/apellidos"/>
                <xsl:text> (</xsl:text>
                <xsl:value-of select="//alumno[last()]/edad"/>
                <xsl:text> años).</xsl:text>
                
                <h3>4. Total de alumnos</h3>
                <xsl:text>- Hay </xsl:text>
                <xsl:value-of select="count(//alumno)"/>
                <xsl:text> alumnos en total.</xsl:text>
                
                <h3>5. Total de alumnos de Murcia</h3>
                <xsl:text>- Hay </xsl:text>
                <xsl:value-of select="count(//alumno[localidad='Murcia'])"/>
                <xsl:text> alumnos de Murcia.</xsl:text>
                
                <h3>6. Suma de la edad de los alumnos de "Murcia" y la suma de todos los alumnos</h3>
                <xsl:text>- La suma de la edad de los alumnos de "Murcia" es </xsl:text>
                <xsl:value-of select="sum(//alumno[localidad='Murcia']/edad)"/>
                <xsl:text> años.</xsl:text>
                <br />
                <xsl:text>- La suma de la edad de los alumnos de "Murcia" y la suma de todos los alumnos es </xsl:text>
                <xsl:value-of select="sum(//alumno[localidad='Murcia']/edad) + count(//alumno)"/>
                
                <h3>7. Lista ordenada con el Nombre completo, Apellido y DNI de todos los alumnos que su nombre comience por Samuel, ordenados alfabeticamente por Apellido:</h3>
                <xsl:for-each select="(//alumno[starts-with(nombre, 'Samuel')])">
                    <xsl:sort select="apellidos" />
                    <xsl:value-of select="nombre" />
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="apellidos" />
                    <xsl:text> -  </xsl:text>
                    <xsl:value-of select="@dni" />
                    
                    <br />
                </xsl:for-each>
               
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
