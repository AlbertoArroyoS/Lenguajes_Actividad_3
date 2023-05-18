<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent= "yes"/>

    <xsl:template match="/">
       <instituto >
            <xsl:attribute name="telf">
                <xsl:value-of select="//telefono"></xsl:value-of>
            </xsl:attribute>
            <nombre><xsl:value-of select="ite/@nombre"></xsl:value-of></nombre>
            <web><xsl:value-of select="ite/@web"></xsl:value-of></web>
            <matriz><xsl:value-of select="//empresa"></xsl:value-of></matriz>

            <equipo_directivo>
                <direccion>
                    <xsl:attribute name="cargo">directora</xsl:attribute>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="//director/nombre"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="//director/despacho"></xsl:value-of>
                </direccion>
                
                <jefatura>
                    <xsl:attribute name="cargo">jefe de estudios</xsl:attribute>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="//jefe_estudios/nombre"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="//jefe_estudios/despacho"></xsl:value-of>
                </jefatura>
            </equipo_directivo>

            <equipo_docente>
                <xsl:for-each select="//profesor">
                    <docente>
                        <xsl:attribute name="id">
                             <xsl:value-of select="id"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="nombre">
                             <xsl:value-of select="nombre"></xsl:value-of>
                        </xsl:attribute>
                    </docente>
                </xsl:for-each>
            </equipo_docente>
            
            <ciclos>
                <xsl:for-each select="//ciclo">
                    <grado>
                        <xsl:attribute name="nivel">
                             <xsl:value-of select="grado"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="año">
                             <xsl:value-of select="decretoTitulo/@año"></xsl:value-of>
                        </xsl:attribute>
                        <nombre>
                             <xsl:attribute name="abreviatura">
                                <xsl:value-of select="@id"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="nombre"></xsl:value-of>
                        </nombre>
                    </grado>
                </xsl:for-each>
            </ciclos>


       </instituto>
    </xsl:template>
</xsl:stylesheet>