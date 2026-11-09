<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>releve</title>
            </head>
            <body>
                <h1>les informations releve</h1>
                <p>
                    RIB: <xsl:value-of select="releve/@RIB"/>
                </p>
                <p>
                    dateReleve: <xsl:value-of select="releve/dateReleve"/>
                </p>
                <p>
                    solde: <xsl:value-of select="releve/solde"/>
                </p>
                <p>
                    Date Debut: <xsl:value-of select="releve/operations/@dateDebut"/>
                </p>
                <p>
                    Date Fin: <xsl:value-of select="releve/operations/@dateFin"/>
                </p>
                <table border="2" width="90%">
                    <tr>
                        <th>Type</th><th>Date</th><th>Montant</th><th>Description</th>
                    </tr>
                    <xsl:for-each select="releve/operations/operation">
                        <tr>
                            <td><xsl:value-of select="@type"/></td>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>