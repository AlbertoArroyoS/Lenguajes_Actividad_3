<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Formato de salida XML-->

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">

      <!-- Cambio nombre etiqueta raíz. Atributos nombre y web pasan a etiqueta-->

      <instituto>
          <informacion>
              <nombre><xsl:value-of select="//@nombre"/></nombre>
              <web><xsl:value-of select="//@web"/></web>
              <empresa><xsl:value-of select="//empresa"/></empresa>
              <telefono><xsl:value-of select="//telefono"/></telefono>
          </informacion> 

          <!-- Cambio etiqueta id a atributo-->

          <claustro>
          <xsl:for-each select="//profesor">
              <profesor>
              <xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
              <nombre><xsl:value-of select="nombre"/></nombre>
              </profesor>
              </xsl:for-each>
          </claustro>

          <!-- Cambio etiqueta despacho a atributo -->

          <direccion>
          <xsl:attribute name="despacho"><xsl:value-of select="//director/despacho"/></xsl:attribute>
            <nombre><xsl:value-of select="//director/nombre"/></nombre>
          </direccion>

          <!-- Cambio etiqueta despacho a atributo -->

          <jefe_estudios>
          <xsl:attribute name="despacho"><xsl:value-of select="//jefe_estudios/despacho"/></xsl:attribute>
            <nombre><xsl:value-of select="//jefe_estudios/nombre"/></nombre>
          </jefe_estudios>

          <!-- Cambio nombre etiqueta raíz. Etiquetas grado y decretoTitulo pasan a atributo-->

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
