<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- 
  Este XSLT realizará la transformación de un XML a otro.

  La salida resultante será un XML.
-->
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!-- Nos situamos en el nodo raíz -->
    <xsl:template match="/">
      <ite>
      <!-- Paso los atributos de ite nombre y web como elementos -->
          <nombre><xsl:value-of select="/ite/@nombre"/></nombre>
          <empresa><xsl:value-of select="/ite/empresa"/></empresa>
          <telefono><xsl:value-of select="/ite/telefono"/></telefono>
          <web><xsl:value-of select="/ite/@web"/></web>
          <!-- Cambio de nombre de etiquetas profesores a profes y profesor a profe -->
          <!-- Paso id de elemento a atributo y el nombre sique como elemento -->
          <profes>
              <xsl:for-each select="/ite/profesores/profesor">
                  <profe>
                      <xsl:attribute name="id"><xsl:value-of select="id"/></xsl:attribute>
                      <nombre><xsl:value-of select="nombre"/></nombre>
                  </profe>
              </xsl:for-each>
          </profes>
          <!-- Paso los elementos de director como atributos -->
          <director>
              <xsl:attribute name="nombre"><xsl:value-of select="/ite/director/nombre"/></xsl:attribute>
              <xsl:attribute name="despacho"><xsl:value-of select="/ite/director/despacho"/></xsl:attribute>
            </director>
          <!-- Pasamos los elementos jefe_estudios como atributos -->
          <jefe_estudios>
              <xsl:attribute name="nombre"><xsl:value-of select="/ite/jefe_estudios/nombre"/></xsl:attribute>
              <xsl:attribute name="despacho"><xsl:value-of select="/ite/jefe_estudios/despacho"/></xsl:attribute>
          </jefe_estudios>
          <!-- Cambio nombre etiqueta de ciclos a ciclos_fp -->
          <!-- Paso los elementos como atributos el grado y el año, y el id pasa de atributo a elemento-->
          <ciclos_fp>
              <xsl:for-each select="/ite/ciclos/ciclo">
                  <ciclo>
                      <xsl:attribute name="año_decreto"><xsl:value-of select="decretoTitulo/@año"/></xsl:attribute>
                      <xsl:attribute name="grado"><xsl:value-of select="grado"/></xsl:attribute>
                      <id><xsl:value-of select="@id"/></id>
                      <nombre><xsl:value-of select="nombre"/></nombre>
                  </ciclo>
              </xsl:for-each>
          </ciclos_fp>
        </ite>
    </xsl:template>
</xsl:stylesheet>