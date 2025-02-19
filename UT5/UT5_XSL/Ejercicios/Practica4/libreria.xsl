<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>libreria.xsl</title>
                <style>
                    .border-caja {
                    display: inline-block;
                    border: 2px solid black;
                    padding: 10px;
                    margin: 10px;
                    }
                    th {
                    background-color: blue;
                    color: white;
                    }
                    .rojo { background-color: red; color: white; }
                    .verde { background-color: green; color: white; }
                    .azul { background-color: blue; color: white; }
                    .titulo { background-color: #ABC; }
                    .autor { background-color: #CBA; }
                    .autor-king { background-color: #456; color: white; }
                    
                </style>

            </head>
            <body>
                <h1>UT6 - Practica04</h1>
                <p>Dado el documento XML “libreria.xml”, escriba las hojas de estilo XSLT que devuelvan la respuesta deseada</p>
                <h3>1. Un archivo HTML que muestre una tabla con la información de los libros.</h3>
                <div class="border-caja">
                    <h2>Mi biblioteca Personal</h2>
                    <table border="1">
                        <tr color="blue">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:for-each select="/libreria/libro">
                            <xsl:sort select="precio" data-type="number"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="isbn"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="titulo"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="autor"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="precio"/>  
                                </td>   
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                
                <h3>2. Mostrar los libros de King ordenados por precio</h3>
                <div class="border-caja">
                    <table border="1">
                        <tr color="blue">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:for-each select="/libreria/libro[autor='King']">
                            <xsl:sort select="precio" data-type="number"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="isbn"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="titulo"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="autor"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="precio"/>  
                                </td>   
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <h3>3 Mostrar los libros que no son de King ordenados por precio:</h3>
                <div class="border-caja">
                    <table border="1">
                        <tr color="blue">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:for-each select="/libreria/libro[autor!='King']">
                            <xsl:sort select="precio" data-type="number"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="isbn"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="titulo"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="autor"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="precio"/>  
                                </td>   
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <h3>4. Mostrar los libros que valen más de 10€ ordenados por precio</h3>
                <div class="border-caja">
                    <table border="1">
                        <tr color="blue">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:for-each select="/libreria/libro[precio &gt;10]">
                            <xsl:sort select="precio" data-type="number"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="isbn"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="titulo"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="autor"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="precio"/>  
                                </td>   
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <h3>5. Mostrar los libros ordenados por “editor”, mostrando el precio de los libros que valen
                    menos de 10€ con fondo rojo, el de los que valen más de 30€ con fondo verde, y el resto
                    con fondo azul.</h3>
                <div class="border-caja">
                    <table border="1">
                        <tr color="blue">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                        </tr>
                        <xsl:for-each select="/libreria/libro" >
                            <xsl:sort select="editor" />

                            <tr>
                                <td>
                                    <xsl:value-of select="isbn"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="titulo"/>  
                                </td>   
                                <td>
                                    <xsl:value-of select="autor"/>  
                                </td>   
                                <td>
                                    <xsl:variable name="precio" select="precio"/>
                                    <xsl:attribute name="class">
                                        <xsl:choose>
                                            <xsl:when test="$precio &lt; 10">rojo</xsl:when>
                                            <xsl:when test="$precio &gt; 30">verde</xsl:when>
                                            <xsl:otherwise>azul</xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:attribute>
                                    <xsl:value-of select="precio"/>
                                </td>   
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <h3>6. Mostrar, UTILIZANDO ÚNICAMENTE PLANTILLAS, el título y autor de los
                    libros. Los títulos llevan como color de fondo #ABC, los autores #CBA, excepto
                    “King”, que lleva #456 y color de texto blanco</h3>
                <div class="border-caja">
                    <table>
                        <tr>
                            <th>Título</th>
                            <th>Autor</th>
                        </tr>
                        <xsl:apply-templates select="libreria/libro"/>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td class="titulo">
                <xsl:value-of select="titulo"/>
            </td>
            <td>
                <xsl:attribute name="class">
                    <xsl:choose>
                        <xsl:when test="autor='King'">autor-king</xsl:when>
                        <xsl:otherwise>autor</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <xsl:value-of select="autor"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
