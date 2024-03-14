<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h3>Nombre y apellidos : Roberto Buueno</h3>
        <ol>
          <xsl:apply-templates select="//ciclo">
            <xsl:sort select="." order="descending"/>
          </xsl:apply-templates>
        </ol>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="ciclo">
    <li>
      <xsl:text>"</xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>" (</xsl:text>
      <xsl:value-of select="@grado"/>
      <xsl:text>)</xsl:text>
    </li>
  </xsl:template>

</xsl:stylesheet>
