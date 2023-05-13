<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    
    <instituto>
         <informacion>
            <nombre><xsl:value-of select="//@nombre"/></nombre>
            <web><xsl:value-of select="//@web"/></web>
            <empresa><xsl:value-of select="//empresa"/></empresa>
            <telefono><xsl:value-of select="//telefono"/></telefono>
         </informacion> 

        <claustro>
         <xsl:for-each select="//profesor">
            <profesor>
            <xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
            <nombre><xsl:value-of select="nombre"/></nombre>
            </profesor>
            </xsl:for-each>
        </claustro>
        <direccion>
         <xsl:attribute name="despacho"><xsl:value-of select="//director/despacho"/></xsl:attribute>
          <nombre><xsl:value-of select="//director/nombre"/></nombre>
        </direccion>

        <jefe_estudios>
        <xsl:attribute name="despacho"><xsl:value-of select="//jefe_estudios/despacho"/></xsl:attribute>
          <nombre><xsl:value-of select="//jefe_estudios/nombre"/></nombre>
        </jefe_estudios>

        <estudios>
        <xsl:for-each select="//ciclo">
            <ciclo>
            <xsl:attribute name="id"><xsl:value-of select="@id"/></xsl:attribute>
            <xsl:attribute name="año_decreto"><xsl:value-of select="decretoTitulo/@año"/></xsl:attribute>
            <xsl:attribute name="grado"><xsl:value-of select="grado"/></xsl:attribute>
            <nombre><xsl:value-of select="nombre"/></nombre>
            </ciclo>
            </xsl:for-each>
        </estudios>
        
    </instituto>
    </xsl:template>
</xsl:stylesheet>
