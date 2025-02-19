<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Libros</title>
                <style>
                    .titulo { background-color: #ABC; }
                    .autor { background-color: #CBA; }
                    .autor-king { background-color: #456; color: white; }
                </style>
            </head>
            <body>
                <h2>Lista de Libros</h2>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                    </tr>
                    <xsl:apply-templates select="libreria/libro"/>
                </table>
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
