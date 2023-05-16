<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- En este caso , como vamos a tronsfarmar nuestro XML original en otro XML con distinto formato
tendremos que indicarlo de la siguiente manera -->

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<!--El nodo raíz será "instituto", y éste tendrá otros elemntos  como: equipo  -->
    <xsl:template match="/">
    
    <instituto>
             
            <docentes>
               <xsl:for-each select="/ite/profesores/profesor">
                <profesor>
                    <xsl:attribute name="id">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="nombre"/></nombre>
                </profesor>
                </xsl:for-each>   
            </docentes> 

            <equipo_directivo>
                 
              <director><xsl:value-of select="ite/director/nombre"/></director> 
              <despacho><xsl:value-of select="ite/director/despacho"/></despacho> 
              <jefe_estudios><xsl:value-of select="ite/jefe_estudios/nombre"/></jefe_estudios> 
              <despacho><xsl:value-of select="/ite/jefe_estudios/despacho"/></despacho>       
                          
            </equipo_directivo>        

           

            <datos_contacto>
              <nombre><xsl:value-of select="ite/@nombre"/></nombre>
              <web><xsl:value-of select="ite/@web"/></web>
              <empresa><xsl:value-of select="ite/empresa"/></empresa>
              <telefono><xsl:value-of select="ite/telefono"/></telefono>
            </datos_contacto>


    </instituto>    
</xsl:template>
</xsl:stylesheet>