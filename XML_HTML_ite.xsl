<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
      <html>
         <head>
            <title>Edix</title>
            <link rel="stylesheet" href="styles.css" />
         </head>
         <body>

            <h1><xsl:value-of select="//empresa" /></h1>

            <h2 class="edix">EDIX - Instituto Tecnológico</h2>
            
            <div class="claimlink">
               <p class="claim">CF Grados Superiores FP con altas tasas de empleabilidad</p>
               <a href="#formulario"> Inscríbete</a>
               <a href="https://unirfp.unir.net/" target="blank"> Visita nuestra web</a>
               <a href="tel"> Llámanos al <xsl:value-of select="//telefono" /></a>
            </div>

            <div class="claustro">
               <h3>Claustro de profesores</h3>
               
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
                              <xsl:value-of select="id" />
                           </td>
                           <td>
                              <xsl:value-of select="nombre" />
                           </td>
                        </tr>
                     </xsl:for-each>
                  </tbody>
               </table>
            </div>
            
            <div class="direccion">
               <h3>Equipo directivo</h3>
               
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
                           <xsl:value-of select="//director/nombre" />
                        </td>
                        <td>Director</td>
                        <td>
                           <xsl:value-of select="//director/despacho" />
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <xsl:value-of select="//jefe_estudios/nombre" />
                        </td>
                        <td>Jefe de Estudios</td>
                        <td>
                           <xsl:value-of select="//jefe_estudios/despacho" />
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            
            <div class="grados">
               <h3>Ciclos Superiores</h3>
            
               <ul>
                  <xsl:for-each select="//ciclos/ciclo">
                     <li><xsl:value-of select="nombre" /> - <xsl:value-of select="@id" />
                        - (Año decreto: <xsl:value-of select="decretoTitulo/@año" />)</li>
                  </xsl:for-each>
               </ul>
            </div>
            
            <form id="formulario">
               <legend>FORMULARIO DE INSCRIPCIÓN</legend>
               <br/>
               <label for="nombre">Nombre:</label>
               <input
                  type="text"
                  id="nombre"
                  name="nombre"
                  placeholder="Alejandro"
                  />
               <br/>
               <label for="apellidos">Apellidos:</label>
               <input
                  type="text"
                  id="apellidos"
                  name="apellidos"
                  placeholder="Aguiar"
                  />
               <br/>
               <label for="telefono">Teléfono:</label>
               <input
                  type="tel"
                  id="movil"
                  name="movil"
                  pattern="[0-9]+"
                  placeholder="123456789"
                  />
               <br/>
               <label for="opciones">Opciones:</label>
               <select id="opciones" name="opciones">
                  <xsl:for-each select="//ciclos/ciclo">
                     <option>
                        <xsl:value-of select="@id" />
                     </option>
                  </xsl:for-each>
               </select>
               <br/>
               <input type="submit" value="Enviar" />
               <input type="reset" value="Borrar" />
               <br/>
            </form>
       
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
