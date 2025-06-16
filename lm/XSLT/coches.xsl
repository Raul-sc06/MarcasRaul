<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title></title>
                <style>
                    table {
                        border: 2px solid black;
                    }
                </style>
            </head>
            <body>
                <h1>Listado de Coches</h1>
                <table>
                    <tr>
                        <th>marca</th>
                        <th>modelo</th>
                        <th>anio</th>
                        <th>precio</th>                            
                        <th>combustible</th>
                    </tr>
                    <xsl:for-each select="//coche">
                        <tr>
                            <td>
                                <xsl:value-of select="marca"/>
                            </td>
                            <td>
                                <xsl:value-of select="modelo"/>
                            </td>
                            <td>
                                <xsl:value-of select="anio"/>   
                            </td>
                            <td>
                                <xsl:value-of select="precio"/>
                            </td>
                            <td>
                                <xsl:value-of select="combustible"/>
                            </td>
                            <td>
                                <xsl:if test="anio &lt; 2015">
                                    <p>*</p>
                                </xsl:if>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
