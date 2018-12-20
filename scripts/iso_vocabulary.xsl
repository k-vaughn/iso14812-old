<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:vocab="https://www.iso.org/tc204/wg1/vocabulary"
    exclude-result-prefixes="xs xd"
    version="2.0">
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Dec 10, 2018</xd:p>
            <xd:p><xd:b>Author:</xd:b> kvaughn</xd:p>
            <xd:p></xd:p>
        </xd:desc>
    </xd:doc>
<!--    <xsl:key name="el-by-guid" match="*" use="guid"/>  
    <xsl:param name="pattern">\(GUID=(\w{34})\)</xsl:param>
    <xsl:param name="replace"><xsl:value-of select="key(el-by-guid, 'a')" /></xsl:param> -->
    <xsl:template match="/">
<html>
    <body>
        <xsl:for-each select="vocab:vocabulary/vocab:package">
            <xsl:sort select="vocab:id" />
            <xsl:for-each select="vocab:package">
                <xsl:sort select="vocab:id" />
                <xsl:for-each select="vocab:term">
                    <xsl:sort select="vocab:id" />
                    <xsl:apply-templates select="." />
                </xsl:for-each>
                <xsl:for-each select="vocab:package">
                    <xsl:for-each select="vocab:term">
                        <xsl:sort select="vocab:id" />
                        <xsl:apply-templates select="." />
                    </xsl:for-each>
                    <xsl:for-each select="vocab:package">
                        <xsl:for-each select="vocab:term">
                            <xsl:sort select="vocab:id" />
                            <xsl:apply-templates select="." />
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each>
    </body>
</html>
    </xsl:template>
    
    <xsl:template match="vocab:term">
        <p><xsl:value-of select="vocab:name" /></p>
    </xsl:template>
</xsl:stylesheet>

