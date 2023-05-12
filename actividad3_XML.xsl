<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- 
  Este XSLT realizará la transformación de un XML a otro.

  Lo primero, decimos que la salida resultante será un XML.
-->
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!-- Nos situamos en el nodo raíz -->
    <xsl:template match="/">
      <ite>
        <profes>
          <profe>
            <nombre></nombre>
            <xsl:attribute name="id">
                <xsl:value-of select="ite/profesores/profesor/@id"/>
            </xsl:attribute>
          </profe>
        </profes>
        <director>
          <xsl:attribute name="ite/director">
                <xsl:value-of select="@id"/>
          </xsl:attribute>
        
        
        </director>

    
    
    
    
    
    
    
    
      </ite>
    </xsl:template>
</xsl:stylesheet>