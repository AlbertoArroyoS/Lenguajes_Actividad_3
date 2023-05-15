<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
    
        <html>
            <link rel="stylesheet" href="styles.css"/>

            <head>
                <title><xsl:value-of select = "/ite/@nombre"/></title>
                <h1 id="titulo_pagina"><xsl:value-of select = "/ite/@nombre"/></h1>
                       
            </head>
            <body>
            <nav> 
            </nav>

            <div class="equipo_directivo">
                <table border ="2" cellpadding= "15px">
                    <caption><h2>Equipo directivo</h2></caption>
                    <thead>
                        <th>Cargo</th>
                        <th>Nombre</th>
                        <th>Despacho</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Directora</td>
                        <td><xsl:value-of select = "//director/nombre"/></td>
                        <td><xsl:value-of select = "//director/despacho"/></td>
                    </tr>
                    <tr>
                        <td>Jefe de estudios</td>
                        <td><xsl:value-of select = "//jefe_estudios/nombre"/></td>
                        <td><xsl:value-of select = "//jefe_estudios/despacho"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            
            <div class="profesores">
                <table border ="2" cellpadding= "15px">
                    <caption><h2>Equipo docente</h2></caption>
                    <thead>
                        <th>Nombre</th>
                        <th>Código</th>
                    </thead>
                    <tbody>
                    <tr>
                        <td><xsl:value-of select = "//profesor[1]/nombre"/></td>
                        <td><xsl:value-of select = "//profesor[1]/id"/></td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select = "//profesor[2]/nombre"/></td>
                        <td><xsl:value-of select = "//profesor[2]/id"/></td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select = "//profesor[3]/nombre"/></td>
                        <td><xsl:value-of select = "//profesor[3]/id"/></td>
                    </tr>
                    <tr>
                        <td><xsl:value-of select = "//profesor[4]/nombre"/></td>
                        <td><xsl:value-of select = "//profesor[4]/id"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
         

            <div class="ciclos">
                <ul> <caption><h2>Ciclos</h2></caption>
                    <ol>
                        <li><xsl:value-of select = "//ciclo[1]/@id"/></li>
                        <li><xsl:value-of select = "//ciclo[1]/nombre"/></li>
                        <li>Nivel: <xsl:value-of select = "//ciclo[1]/grado"/></li>
                        <li>Este grado se creó en <xsl:value-of select = "//ciclo[1]/decretoTitulo/@año"/></li>
                    </ol>

                    <ol>
                        <li><xsl:value-of select = "//ciclo[2]/@id"/></li>
                        <li><xsl:value-of select = "//ciclo[2]/nombre"/></li>
                        <li>Nivel: <xsl:value-of select = "//ciclo[2]/grado"/></li>
                        <li>Este grado se creó en <xsl:value-of select = "//ciclo[2]/decretoTitulo/@año"/></li>
                    </ol>

                    <ol>
                        <li><xsl:value-of select = "//ciclo[3]/@id"/></li>
                        <li><xsl:value-of select = "//ciclo[3]/nombre"/></li>
                        <li>Nivel: <xsl:value-of select = "//ciclo[3]/grado"/></li>
                        <li>Este grado se creó en <xsl:value-of select = "//ciclo[3]/decretoTitulo/@año"/></li>
                    </ol>
                </ul>
            </div>
            <div class="contacto">
                <form action="procesarPeticion.jsp" method="post">
                    <fieldset>
                        <legend>Contáctanos</legend>
                        <div>
                            <label for="nombre">Nombre: </label>
                            <input id="nombre" type="text" name="nombre" placeholder="Andrés"/>
                        </div>

                        <div>
                            <label for="Apellidos">Apellidos: </label>
                            <input id="Apellidos" type="text" name="Apellidos" placeholder="Avendaño Monteagudo"/>
                        </div>

                        <div>
                            <label for="telefono">Teléfono: </label>
                            <input type="tel" name="telefono" placeholder="+34 999 999 999"/>
                        </div>

                        <div>
                            <label for="email">Email: </label>
                            <input id="email" type="email" name="email" placeholder="ejemplo@dominio.es"/>
                        </div>

                        <div>
                            <label for="mensaje">Mensaje: </label><br/>
                            <textarea name="mensaje" id="mensaje" cols="50" rows="10" placeholder="Escribe tu mensaje"> </textarea>
                        </div>

                         <div id="boton">
                            <button type="submit"><b>Enviar</b></button>
                        </div>
                    </fieldset>
                </form>
            </div>
                
            </body>
            <footer>
                <div id="empresa">
                    <h4>Empresa filial de <xsl:value-of select = "ite/empresa"/></h4>
                </div>

                <div id="telefono">
                    <h4>Teléfono de contacto: <xsl:value-of select = "ite/telefono"/></h4>
                </div>

            </footer>


        </html>

    </xsl:template>
</xsl:stylesheet>