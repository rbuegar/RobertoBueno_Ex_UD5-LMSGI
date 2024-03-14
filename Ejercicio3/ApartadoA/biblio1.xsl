<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <h2>Nombre y apellidos: Roberto Bueno</h2>
      </head>
      <body>
        <xsl:apply-templates select="//autor">
          <xsl:sort select="apellido"/>
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="autor">
    <xsl:variable name="index" select="position()"/>
    <p><xsl:value-of select="concat($index, '. ', apellido, ', ', nombre)"/></p>
  </xsl:template>

</xsl:stylesheet>
