<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
<head>
<link rel="stylesheet" href="europe.css" type="text/css" />
</head>
<body>
<table border="1">
  <tr>
   
	<th>Страна</th>
    <th>Столица</th>
	<th>Население</th>
    <th>Площадь</th>
  </tr>
<xsl:for-each select="//Страна">
<xsl:sort order="ascending" select="@Название"/>
  <tr>
    <td><xsl:value-of select="@Название"/></td>
    <td><xsl:value-of select="@Столица"/></td>
	<td><xsl:value-of select="@Население"/></td>
    <td><xsl:value-of select="@Площадь"/></td>
  </tr>
</xsl:for-each>
  </table>
</body>
  </xsl:template>
</xsl:stylesheet>