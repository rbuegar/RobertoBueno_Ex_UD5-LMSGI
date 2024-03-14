<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
          .highlight {
            color: red;
          }
        </style>
      </head>
      <body>
        <h2>Nombre y apellidos : Roberto Bueno</h2>
        <table>
          <tr>
            <th>Título del libro</th>
            <th>Autores del libro</th>
            <th>Editores del libro</th>
          </tr>
          <xsl:apply-templates select="//libro">
            <xsl:sort select="titulo"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <tr>
      <td>
        <xsl:choose>
          <xsl:when test="precio > 100">
            <span class="highlight">
              <xsl:value-of select="concat(titulo, ' (Caro)')"/>
            </span>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="titulo"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>
      <td>
        <xsl:if test="count(autor) &gt; 0">
          <xsl:for-each select="autor">
            <xsl:value-of select="nombre"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="apellido"/>
            <xsl:if test="position() != last()">
              <xsl:text>, </xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:if>
      </td>
      <td>
        <xsl:if test="count(editor) &gt; 0">
          <xsl:for-each select="editor">
            <xsl:value-of select="nombre"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="apellido"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="afiliacion"/>
            <xsl:if test="position() != last()">
              <xsl:text>, </xsl:text>
            </xsl:if>
          </xsl:for-each>
        </xsl:if>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
