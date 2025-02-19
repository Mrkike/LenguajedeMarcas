<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>ut06p02e01.xsl</title>
            </head>
            <body>
                <h3>1.- Obtener el siguiente fichero HTML sin etiquetas:</h3>
                <xsl:for-each select="ies/ciclos/ciclo">
                    <xsl:value-of select="nombre"/>
                    <br/>
                </xsl:for-each>
                
                <h3>2.- Obtener el siguiente fichero HTML con párrafos:</h3>
                <xsl:for-each select="ies/ciclos/ciclo">
                    <p>
                        <xsl:value-of select="nombre"/>
                    </p>
                </xsl:for-each>
                
                <h3>3.- Obtener el siguiente fichero HTML con listas:</h3>
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <li>
                            <xsl:value-of select="nombre"/>
                        </li>
                    </xsl:for-each>
                </ul>
                
                <h3>4.- Obtener el siguiente fichero HTML con tablas:</h3>
                <table border="1">
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                        </tr>      
                    </xsl:for-each>
                </table>
                
                <h3>5. Obtener el siguiente fichero HTML con párrafos:</h3>
                <h1>
                    <xsl:value-of select="ies/@nombre"/>
                </h1>                
                <xsl:for-each select="ies/ciclos/ciclo">
                    <p>
                        <xsl:value-of select="nombre"/>
                    </p>
                </xsl:for-each>
                
                <h3>6.- Obtener el siguiente fichero HTML con listas:</h3>
                <h1>
                    <xsl:value-of select="ies/@nombre"/>
                </h1>    
                <p>Página web: <a href="{ies/@web}">http://www.ieschirinos.com</a></p>
                <ul>          
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <li>
                            <xsl:value-of select="nombre"/>
                        </li>
                    </xsl:for-each>
                </ul>  
                
                <h3>7.- Obtener el siguiente fichero HTML con tablas:</h3>
                <h1>
                    <xsl:value-of select="ies/@nombre"/>
                </h1>    
                <p>Página web: <a href="{ies/@web}">http://www.ieschirinos.com</a></p>
                <ul> 
                    <table border="1">  
                        <tr>
                            <th>Nombre del ciclo</th>
                            <th>Grado</th>
                            <th>Año del título</th>
                        </tr>       
                        <xsl:for-each select="ies/ciclos/ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="grado "/>
                                </td>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </ul>  
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
