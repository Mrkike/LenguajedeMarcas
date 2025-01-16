<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />
  
  <!-- Root template -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Artistas</title>
        <meta charset="UTF-8" />
      </head>
      <body>
        <h1>Lista de Artistas</h1>
        <table>
          <tr>
            <th>Código</th>
            <th>Nombre</th>
            <th>Año de nacimiento</th>
            <th>Año de fallecimiento</th>
            <th>País</th>
            <th>Página web</th>
          </tr>
          <xsl:for-each select="artistas/artista [nacimiento > 1500]">
            <xsl:sort select="nacimiento" order="ascending" />
            <tr>
              <td><xsl:value-of select="@cod" /></td>
              <td><xsl:value-of select="nombreCompleto" /></td>
              <td><xsl:value-of select="nacimiento" /></td>
              <td>
                <xsl:choose>
                  <xsl:when test="fallecimiento">
                    <xsl:value-of select="fallecimiento" />
                  </xsl:when>
                  <xsl:otherwise>Desconocido</xsl:otherwise>
                </xsl:choose>
              </td>
              <td><xsl:value-of select="pais" /></td>
              <td><a href="{fichaCompleta}">Saber más</a></td>
            </tr>
          </xsl:for-each>
        </table>
        
        <!-- Counting and displaying additional information -->
        <p>Número total de artistas nacidos después de 1500: 
          <xsl:value-of select="count(artistas/artista[nacimiento > 1500])" />
        </p>
        <p>Número de artistas nacidos en España: 
          <xsl:value-of select="count(artistas/artista[pais='España'])" />
        </p>
        <p>Número de artistas nacidos en el siglo XVI: 
          <xsl:value-of select="count(artistas/artista[nacimiento > 1501 and nacimiento < 1600])" />
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
