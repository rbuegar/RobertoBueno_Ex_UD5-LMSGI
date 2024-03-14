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
            background-color: red;
          }
          .italic {
            font-style: italic;
          }
        </style>
      </head>
      <body>
        <h2>Nombre y apellidos :Roberto Bueno</h2>
        <table>
          <tr>
            <th>Precio del libro</th>
            <th>Título del libro</th>
            <th>Año de publicación</th>
          </tr>
          <xsl:apply-templates select="//libro">
            <xsl:sort select="precio"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="libro">
    <tr>
      <td>
        <xsl:value-of select="precio"/>
      </td>
      <td>
        <xsl:if test="precio > 100">
          <span class="highlight">
            <xsl:value-of select="titulo"/>
          </span>
        </xsl:if>
        <xsl:if test="precio &lt;= 100">
          <xsl:value-of select="titulo"/>
        </xsl:if>
      </td>
      <td>
        <span class="italic">
          <xsl:value-of select="@año"/>
        </span>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
