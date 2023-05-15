<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Procedemos a darle formato HTML  a través de XSLT, para ello nos situaremos en el nodo raíz -->

    <xsl:template match="/">

        <html>
        <head>
            <title>Instituto Edix</title>
            <!-- Añadimos enlace al fichero CSS para darle estilo al documento -->
            <link rel="stylesheet" href="../Lenguajes_Actividad_3/css/Instituto.css"/>

        </head>
        <body>

          <h1><xsl:value-of select="ite/@nombre"/></h1> 
<!-- Tabla informativa de los ciclos formativos que se ofertan en el Instituto -->

          <h2>Conoce nuestros ciclos</h2>
            <div>
            <p>Conviértete en un profesional esencial en cualquier empresa.
            Todas nuestras titulaciones son 100% oficiales y válidas en todo el territorio nacional.Las titulaciones oficiales otorgadas a nuestros estudiantes tienen validez en toda España.</p>
            </div>

          <table border="1">
                <thead>
                    <th>Identificador</th>
                    <th>Nombre</th>
                    <th>Grado</th>
                    <th>Decreto</th>
                </thead>
                <tbody>
                <xsl:for-each select="ite/ciclos/ciclo">    
                    <tr>                          
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="grado"/></td>
                        <td><xsl:value-of select="decretoTitulo/@año"/></td>
                    </tr> 
                </xsl:for-each> 
                               
                </tbody> 
            </table>
            
<!-- Lista de docentes del centro -->

          <h2>Nuestros profesores</h2>
            <p>Todos nuestros profesores y equipo docente son profesionales del sector y cuentan con muchos años de experiencia en formación.</p>
            <ol>                    
                 <li><xsl:value-of select="ite/profesores/profesor[1]/nombre"/></li>
                 <li><xsl:value-of select="ite/profesores/profesor[2]/nombre"/></li> 
                 <li><xsl:value-of select="ite/profesores/profesor[3]/nombre"/></li> 
                 <li><xsl:value-of select="ite/profesores/profesor[4]/nombre"/></li> 
               
            </ol>
<!-- Tabla del equipo directivo del centro con sus datos de contacto -->
          <h2>Equipo directivo del centro</h2> 
          <table border="1">
            <thead>
                <tr>
                    <th>Cargo</th>
                    <th>Nombre</th>
                    <th>Despacho</th>
                </tr>
                <tr>               

                    <td>Director</td>
                    <td><xsl:value-of select="ite/director/nombre"/></td>
                    <td><xsl:value-of select="ite/director/despacho"/></td>
                </tr>
                <tr>
                    <td>Jefe Estudios</td>
                    <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                    <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                </tr>               
            </thead>
          </table>

        <h2>Contacta con nosotros</h2>         

 
    
    <!-- Formulario de contacto --> 
    <form>
         <fieldset> 
            <label for="ciclo">Escoja el ciclo sobre el que quiere hacer la consulta </label><br/>
            <select name="Ciclo">
                <option value="ASIR"><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></option>
                <option value="DAW"><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></option>
                <option value="DAM"><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></option>
            </select><br/>           
        

            <label for="name">Nombre</label><br/>
            <input type="text" name="name" id="name" placeholder="Carmen"/><br/>
        
        
            <label for="surname">Apellidos</label><br/>
            <input type="text" name="surname" id="surname" placeholder="Alvarez-Montenegro Piñeiro"/><br/> 
          
             
            <label for="email">Email</label><br/>
            <input type="text" name="email" id="email" placeholder="Email"/><br/>
        
        
            <label for="texto">Mensaje</label><br/>
            <textarea style="resize: none;" name="texto" id="texto" cols="60" rows="8" placeholder="Mensaje" maxlength="100" ></textarea><br/>   
             
            <input class="boton" type="submit" value="Enviar"/>         
         </fieldset> 
    </form>







<!--Enlaces y datos de contacto  -->
            <p>Grupo: <xsl:value-of select="ite/empresa"/></p>
			<p>Telefono de contacto: <xsl:value-of select="ite/telefono"/></p>
            <a href="https://institutotecnologico.edix.com">Conoce nuestra web</a><br/>         
            <a href="https://https://www.linkedin.com/school/unir-formacion-profesional/">Síguenos en Linkedin</a>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
