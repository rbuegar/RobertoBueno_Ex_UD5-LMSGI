<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h3>Nombre y apellidos: Roberto Bueno</h3>
        <xsl:apply-templates select="ies/ciclos/ciclo"/>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="ciclo">
    <p>
      <xsl:text>"</xsl:text>
      <xsl:value-of select="nombre"/>
      <xsl:text>"</xsl:text>
    </p>
  </xsl:template>
</xsl:stylesheet>
