<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:vocab="https://www.iso.org/tc204/wg1/vocabulary"
    exclude-result-prefixes="xs xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Oct 2, 2018</xd:p>
            <xd:p><xd:b>Author:</xd:b> kvaughn</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
    <xsl:template match="/">
<html>
    <head></head>
    <body>
        <h1>Terms and definitions</h1>
        <p>For the purposes of this document, the following terms and definitions apply.</p>
        <p>ISO and IEC maintain terminological databases for use in standardization at the following addresses:</p>
        <ul>
            <li>ISO Online browsing platform: available at http://www.iso.org/obp</li>
            <li>IEC Electropedia: available at http://www.electropedia.org/</li>
        </ul>
        <xsl:for-each select="vocab:vocabulary/vocab:package">
            <xsl:sort select="vocab:id" />
            <h2><xsl:value-of select="vocab:name" /></h2>
            <xsl:for-each select="vocab:figure">
                <p class="BodyText" style='text-align:center;page-break-after:avoid'>
                    <img src="14812%20-%20180927.fld/image012.png" /></p>
                <p class="Caption" style='text-align:center'>Figure <!--[if supportFields]><span style='mso-element:field-begin'></span> SEQ Figure \* ARABIC 
         <span style='mso-element:field-end'></span><![endif]-->:
                    Physical implementation model</p>
            </xsl:for-each>
            <xsl:for-each select="vocab:package">
                <xsl:sort select="vocab:id" />
                <h3><xsl:value-of select="vocab:name" /></h3>
                <xsl:for-each select="vocab:term">
                    <xsl:sort select="vocab:id" />
                    <p class="TermNum"><xsl:value-of select="vocab:clause" /></p>
                    <p class="Term(s)"><xsl:value-of select="vocab:name" />
                    <xsl:text>&lt;a name="</xsl:text><xsl:value-of select="vocab:guid" /><xsl:text>"&gt;&lt;/a&gt;</xsl:text>
                    <xsl:for-each select="vocab:index">
                        <xsl:comment><xsl:text>[if supportFields]>&lt;span style='mso-element:field-begin'>&lt;/span>
                        XE &quot;</xsl:text><xsl:value-of select="current()" /><xsl:text>&quot; &lt;![endif]</xsl:text></xsl:comment>
                        <xsl:comment><xsl:text>[if supportFields]>&lt;span style='mso-element:field-end'>&lt;/span>&lt;![endif]</xsl:text></xsl:comment>
                    </xsl:for-each></p>
                    <xsl:for-each select="vocab:synonym"><p class="Term(s)"><xsl:value-of select="." /></p></xsl:for-each>
                    <xsl:for-each select="vocab:admittedTerm"><p class="TermNotPreferred"><xsl:value-of select="." /></p></xsl:for-each>
                    <xsl:for-each select="vocab:deprecatedTerm"><p class="TermNotPreferred">DEPRECATED: <xsl:value-of select="." /></p></xsl:for-each>
                    <p class="Definition"><xsl:value-of select="vocab:definition" disable-output-escaping="yes"/></p>
                    <xsl:if test="count(vocab:example) = 1">
                        <xsl:for-each select="vocab:example"><p class="Example">EXAMPLE&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
                    </xsl:if><xsl:if test="count(vocab:example) &gt; 1">
                        <xsl:for-each select="vocab:example"><p class="Example">EXAMPLE <xsl:value-of select="position()" />&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
                    </xsl:if>
                    <xsl:for-each select="vocab:note"><p class="Note">Note <xsl:value-of select="position()" /> to entry:&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
                    <xsl:for-each select="vocab:source"><p class="Definition">[Source: <xsl:value-of select="current()" />]</p></xsl:for-each>
                </xsl:for-each>
                <xsl:for-each select="vocab:vocabulary/vocab:package">
                    <xsl:sort select="vocab:id" />
                    <h4><xsl:value-of select="vocab:name" /></h4>
                    <xsl:for-each select="vocab:term">
                        <xsl:sort select="vocab:id" />
                        <p class="TermNum"><xsl:value-of select="vocab:clause" /></p>
                        <p class="Term(s)"><xsl:value-of select="vocab:name" /></p>
                        <p class="Definition"><xsl:value-of select="vocab:definition" /></p>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each>
    </body>
</html>
    </xsl:template>
</xsl:stylesheet>