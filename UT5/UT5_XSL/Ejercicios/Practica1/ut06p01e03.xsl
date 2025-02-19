<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    
    <!-- Mantener la etiqueta raíz -->
    <xsl:template match="/">
        <museos>
            <xsl:apply-templates select="museos/museo"/>
        </museos>
    </xsl:template>
    
    <xsl:template match="museo">
        <museo><nombre><xsl:value-of select="nombre"/></nombre><ubicacion ciudad="{ciudad}" pais="{pais}"/></museo>
    </xsl:template>
 </xsl:stylesheet>
