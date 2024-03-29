<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:p="http://www.parlamento.pt"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>

	<xsl:template match="*">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="p:politicians">
		<table>
			<tr>
				<td>Code</td>
				<td>Party</td>
				<td>Age</td>
				<td>Name</td>
				<td>Number of Interventions</td>
				<td>Number of Sessions</td>
			</tr>
			<xsl:apply-templates />
		</table>
	</xsl:template>

	<xsl:template match="p:politician">
		<xsl:param name="code" select="./@code" />
		<xsl:param name="party" select="./@party" />
		<xsl:param name="age" select="./@age" />
		<xsl:param name="name" select="./text()" />
		<xsl:param name="nParlInterv" select="count(//p:parliament-interventions[./session/speech[@politician = $code]])" />
		<xsl:param name="nSessions" select="count(//p:session[./speech/@politician = $code])" />
		<tr>
			<td><xsl:value-of select="$code" /></td>
			<td><xsl:value-of select="$party" /></td>
			<td><xsl:value-of select="$age" /></td>
			<td><xsl:value-of select="$name" /></td>
			<td><xsl:value-of select="$nParlInterv" /></td>
			<td><xsl:value-of select="$nSessions" /></td>
		</tr>
	</xsl:template>
	
	<xsl:template match="text()" />
	
</xsl:stylesheet>