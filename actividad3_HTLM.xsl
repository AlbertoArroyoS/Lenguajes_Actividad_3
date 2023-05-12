<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Nos situamos en el nodo raíz -->
    <xsl:template match="/">   
        <!-- Como quiero generar un HTML, escribo HTML -->
        <html>
        <head>
            <title>Actividad 3</title>      
            <link rel="stylesheet" href="css/estilos.css" />
        </head>
        <body>

        <!-- Datos del instituto en una lista no ordenada -->
            <!-- Con arroba (@) accedemos a los atributos -->
            <h1><xsl:value-of select="ite/@nombre"/></h1>
            <ul>               
                <li><p>Empresa: <xsl:value-of select="ite/empresa"/></p> </li>
                <li><p>Telefono: <xsl:value-of select="ite/telefono"/></p> </li>
                <li>
                    <a href="https://institutotecnologico.edix.com">
                    <p>Pagina Web: <xsl:value-of select="ite/@web"/></p>
                    </a>
                </li>
            </ul>

            <!-- Tabla con la lista de profesores con su id -->
            <table border="1">
                <caption><h2>Profesores</h2></caption>
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>ID</th>   
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="id"/></td>     
                        </tr>
                    </xsl:for-each> <!-- Fin de for each de profesores -->
                </tbody>
            </table>
            <!-- lista Equipo directivo del Centro -->
            <h2>Equipo directivo</h2>
            <ol>               
                <li><p>Director/a : <xsl:value-of select="ite/director/nombre"/></p> </li>
                <li><p>Jefe de estudios : <xsl:value-of select="ite/jefe_estudios/nombre"/></p> </li>               
            </ol>

            <table border="1">
                <caption><h2>Director/a</h2></caption>
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>DESPACHO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>      
                        <td><xsl:value-of select="ite/director/nombre"/></td>
                        <td><xsl:value-of select="ite/director/despacho"/></td>
                    </tr>
                </tbody>
            </table>
            <!-- Tabla con datos del jefe de estudios -->
            <table border="1">
                <caption><h2>Jefe de estudios</h2></caption>
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>DESPACHO</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>      
                        <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                        <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                    </tr>
                </tbody>
            </table>

             <!-- Tabla con la informacion de los ciclos -->
            <table border="1">
                <caption>
                    <a href="https://www.edix.com/es/fp/">
                    <h2>Ciclos formativos</h2>
                    </a>
                </caption>
                <thead>
                    <tr>
                        <th>NOMBRE</th>
                        <th>ID</th>
                        <th>GRADO</th>
                        <th>DECRETO</th>   
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>    
                        </tr>
                    </xsl:for-each> <!-- Fin de for each de ciclos -->
                </tbody>
            </table>
            <!-- Formulario de contacto-->

  <!--          <div class="forma-caja">

                <form>
                        
                    <div class="datos-contacto">
                        <legend><h3 >Datos contacto</h3></legend>
                    </div>

                        <label for="name">Nombre</label>
                        <input type="text" name="name" id="name" placeholder="Carmen" autofocus/>
                    
                    
                        <label for="surname">Apellidos</label>
                        <input type="text" name="surname" id="surname" placeholder="Alvarez-Montenegro Piñeiro"/> 
                    
                        
                        <label for="email">Email</label>
                        <input type="text" name="email" id="email" placeholder="Email"required/>
                    
                    
                        <label for="texto">Mensaje</label>
                        <textarea style="resize: none;"name="texto" id="texto" cols="60" rows="8" placeholder="Mensaje" maxlength="100" required></textarea>            
                        
                        <input class="boton" type="submit" value="Enviar"/>         
                    
                </form>
            </div>-->

            <form>
            
            </form>          


        </body>
        </html>     
    </xsl:template>
</xsl:stylesheet>