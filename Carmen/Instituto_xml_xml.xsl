<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- En este caso , como vamos a tronsfarmar nuestro XML original en otro XML con distinto formato
tendremos que indicarlo de la siguiente manera -->

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<!--El nodo raíz será "instituto", y éste tendrá otros elemntos  como: docentes,equipo directivo, formación y datos de contacto  -->
    <xsl:template match="/">
    
    <instituto>  
    
<!--Dentro de la etiqueta docentes tenemos la etiqueta profesor cuyo atributo será el "id"  -->
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
<!--Englobamos al director y jefe de estudios dentro de la etiqueta "equipo_directivo"                  -->
              <director><xsl:value-of select="ite/director/nombre"/></director> 
              <despacho><xsl:value-of select="ite/director/despacho"/></despacho> 
              <jefe_estudios><xsl:value-of select="ite/jefe_estudios/nombre"/></jefe_estudios> 
              <despacho><xsl:value-of select="/ite/jefe_estudios/despacho"/></despacho>       
                          
            </equipo_directivo>        
<!--La formación vendrá determinada por un atributo "curso" que será el nombre del ciclo , el resto serán elementos  -->
            <formacion>
                <xsl:for-each select="/ite/ciclos/ciclo">
                    <ciclo>
                        <xsl:attribute name="curso">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>
                        <codigo><xsl:value-of select="@id"/></codigo>              
                        <grado><xsl:value-of select="grado"/></grado>
                        <decreto><xsl:value-of select="decretoTitulo/@año"/></decreto>              
                    </ciclo>
                </xsl:for-each>
            </formacion>
<!-- Etiqueta nueva con los datos de contacto del Instituto -->
            <datos_contacto>
              <nombre><xsl:value-of select="ite/@nombre"/></nombre>
              <web><xsl:value-of select="ite/@web"/></web>
              <empresa><xsl:value-of select="ite/empresa"/></empresa>
              <telefono><xsl:value-of select="ite/telefono"/></telefono>
            </datos_contacto>


    </instituto>    
</xsl:template>
</xsl:stylesheet>