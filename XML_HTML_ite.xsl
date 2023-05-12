<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Edix</title>
                <link rel="stylesheet" href="styles.css" />
            </head>
            <body>
                <h1>
                    <xsl:value-of select="//empresa" />
                </h1>
                <p class="edix">EDIX - Instituto Tecnológico</p>
                <p class="claim">CF Grados Superiores FP con altas tasas de empleabilidad
                </p>
                <div>

                <a class="linkform" href="#formulario">Contáctanos</a> 
                <a href="https://unirfp.unir.net/" target="blank">Visita nuestra web</a>
            </div>
                <h2>Claustro de profesores</h2>
                <table>
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Nombre</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//profesores/profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

                <h2>Equipo directivo</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Cargo</th>
                            <th>Despacho</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <xsl:value-of select="//director/nombre"/>
                            </td>
                            <td>Director</td>
                            <td>
                                <xsl:value-of select="//director/despacho"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="//jefe_estudios/nombre"/>
                            </td>
                            <td>Jefe de Estudios</td>
                            <td>
                                <xsl:value-of select="//jefe_estudios/despacho"/>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <h2>Ciclos Superiores</h2>
                <ul>
                    <xsl:for-each select="//ciclos/ciclo" >
                        <li><xsl:value-of select="nombre" /> - <xsl:value-of select="@id" /> - (Año decreto: <xsl:value-of select="decretoTitulo/@año" />)</li>
                    </xsl:for-each>
                </ul>


                <form id="formulario">
                    <legend>FORMULARIO DE INSCRIPCIÓN</legend>
                    <br></br>

                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" />                    
                    <br></br>
                    <label for="apellidos">Apellidos:</label>
                    <input type="text" id="apellidos" name="apellidos" />
                    <br></br>
                    <label for="telefono">Teléfono:</label>
                    <input type="tel" id="telefono" name="telefono" />
                    <br></br>

                    <label for="opciones">Opciones:</label>                    
                    <select id="opciones" name="opciones">
                        <xsl:for-each select="//ciclos/ciclo" >
                        <option> <xsl:value-of select="@id" /></option>
                    </xsl:for-each>
                    </select>
                    <br></br>
                    
                    <input type="submit" value="Enviar"/>
		            <input type="reset" value="Borrar"/>
                </form>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
