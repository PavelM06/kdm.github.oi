<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
<head>
<link rel="stylesheet" href="europe.css" type="text/css" />
</head>
<body>
<table border="1">
  <tr>
<th>	<a href="#" onClick="loadStyle('europe2n.xsl','data');" >Страна</a> </th>
<th>	<a href="#" onClick="loadStyle('europe2c.xsl','data');" >Столица</a> </th>
<th>	<a href="#" onClick="loadStyle('europe2p.xsl','data');" >Население</a> </th>
<th>   <a href="#" onClick="loadStyle('europe2a.xsl','data');" >Площадь</a> </th>
  </tr>
<xsl:for-each select="//Страна">
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