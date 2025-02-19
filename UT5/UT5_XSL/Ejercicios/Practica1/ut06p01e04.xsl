<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- Mantener la etiqueta raíz -->
    <xsl:template match="/museos">
        <ciudades>
            <xsl:apply-templates select="museo"/>
        </ciudades>
    </xsl:template>
    
    <xsl:template match="ciudad">
        <ciudad><nombre><xsl:value-of select="nombre"/></nombre><ubicacion ciudad="{ciudad}" pais="{pais}"/></ciudad>
    </xsl:template>
 </xsl:stylesheet>
