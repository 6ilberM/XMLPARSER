<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/favorite">
<html>
<head>
<title>My stuff</title>
</head>
	<body>
<table border="1">
	<tr>
		<th>Name </th>
		<th>Stats </th>
		<th>Type </th>
		<th>Played </th>
		<th>Developer </th>
	</tr>
	<xsl:for-each select="game">
	<xsl:sort select="year" order="descending"/>
		<xsl:if test="@alive='yes'">
			<tr>
				<td><xsl:value-of select="title" /></td>
				<td><xsl:value-of select="year" /></td>
				<td><xsl:value-of select="genre" /></td>
                <td><xsl:value-of select="Played" /></td>
                <td><xsl:value-of select="Developer" /></td>
			</tr>
		</xsl:if>
		<xsl:if test="@alive='no'">
			<tr style="color:red">
				<td><xsl:value-of select="title" /></td>
				<td><xsl:value-of select="year" /></td>
				<td><xsl:value-of select="genre" /></td>
                <td><xsl:value-of select="Played" /></td>
<td><xsl:value-of select="Developer" /></td>
			</tr>
		</xsl:if>
	</xsl:for-each>
</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>