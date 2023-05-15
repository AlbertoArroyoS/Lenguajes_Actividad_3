<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    
        <html>
            <head>
                <title><xsl:value-of select = "/ite/@nombre"/></title>
                <h1><xsl:value-of select = "/ite/@nombre"/></h1>
                       
            </head>
            <body>
                
            </body>
            <footer>
                <h2>Empresa filial de <xsl:value-of select = "ite/empresa"/></h2>
                <h3>Teléfono de contacto: <xsl:value-of select = "ite/telefono"/></h3> 
            </footer>


        </html>

    </xsl:template>
</xsl:stylesheet>