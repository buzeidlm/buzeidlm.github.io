<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
html{
background-color:yellow;
}
h1{
border: 1px solid orange;
text-align: center;
background-color:purple;
color: white;
}
table{
border: 1px solid black;
with:100%;
text-align: center;
border-collapse: collapse;
}
td{
width:200px;
height:200px;
}

.u{
background-color: green;
}

th{
background-color: black;
font-size: 150%;
color:red;
}

img {
width: 200px;
height: 200px;

}
</style>
</head>
<body>
<h1>Vuelta al mundo de Buzeid</h1>
<table border="1">
<tr>
<th>Nombre</th>
<th>Fecha inicio</th>
<th>Fecha fin</th>
<th>Duracion</th>
<th>Etapa</th>
<th>medios_de_transporte</th>
<th>Anecdotas</th>
<th>Foto</th>
</tr>

<xsl:for-each select="vuelta/etapa">

<tr class="u">

<td><xsl:value-of select="nombre" /></td>
<td><xsl:value-of select="fecha_inicio" /></td>
<td><xsl:value-of select="fecha_fin" /></td>
<td><xsl:value-of select="duracion" /></td>
<td><xsl:value-of select="@id" /></td>
<td><xsl:value-of select="medios_de_transporte" /></td>
<td><xsl:value-of select="anecdotas" /></td>
<td><img><xsl:attribute name="src"><xsl:value-of select="foto"/></xsl:attribute></img></td>

</tr>
</xsl:for-each>

</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
