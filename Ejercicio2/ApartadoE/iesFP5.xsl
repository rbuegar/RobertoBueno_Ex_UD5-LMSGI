<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" encoding="UTF-8" indent="yes"/>

 <xsl:template match="/">
    <html>
      <body>
        <h1><xsl:value-of select="ies/@nombre"/></h1>
        
        <table border="1">
          <tr>
            <th>Nombre del Ciclo</th>
            <th>Año</th>
          </tr>
          <xsl:for-each select="ies/ciclos/ciclo">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td>
                <xsl:choose>
                 <xsl:when test="decretoTitulo/@año > 2009">
                    <span style="color:green;"><xsl:value-of select="decretoTitulo/@año"/></span>
                 </xsl:when>
                 <xsl:when test="decretoTitulo/@año = 2009">
                    <span style="color:blue;"><xsl:value-of select="decretoTitulo/@año"/></span>
                 </xsl:when>
                 <xsl:otherwise>
                    <span style="color:red;"><xsl:value-of select="decretoTitulo/@año"/></span>
                 </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
 </xsl:template>

</xsl:stylesheet>
