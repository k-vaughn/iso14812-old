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
<!--    <xsl:key name="el-by-guid" match="*" use="guid"/>  
    <xsl:param name="pattern">\(GUID=(\w{34})\)</xsl:param>
    <xsl:param name="replace"><xsl:value-of select="key(el-by-guid, 'a')" /></xsl:param> -->
    <xsl:template match="/">
<html>
    <head>
        <style>
            h1 {
                mso-style-name:"Heading 1\,h1";
                mso-style-next:"Body Text";
                margin:12pt 0pt 12pt 0pt;
                text-indent:0in;
                line-height:13.5pt;
                mso-pagination:widow-orphan;
                page-break-after:avoid;
                mso-outline-level:1;
                tab-stops:20.0pt list .3in left 28.0pt;
                font-size:13.0pt;
                font-family:Cambria, Georgia, serif;
                font-weight:bold;
                }
            h2 {
                mso-style-name:"Heading 2\,h2";
                mso-style-next:"Body Text";
                margin:12pt 0pt 12pt 0pt;
                text-indent:0in;
                line-height:12.5pt;
                mso-pagination:widow-orphan;
                page-break-after:avoid;
                mso-outline-level:2;
                tab-stops:27.0pt 35.0pt;
                font-size:12.0pt;
                font-family:Cambria, Georgia, serif;
                font-weight:bold;
            }
            h3 {
                mso-style-name:"Heading 3\,h3";
                mso-style-next:"Body Text";
                margin:12pt 0pt 12pt 0pt;
                text-indent:0in;
                line-height:12.0pt;
                mso-pagination:widow-orphan;
                page-break-after:avoid;
                mso-outline-level:3;
                tab-stops:list .5in left 44.0pt;
                font-size:11.5pt;
                font-family:Cambria, Georgia, serif;
                font-weight:bold;
            }
            p {
                mso-style-next:"Body Text";
                margin:0in;
                font-family: Cambria, Georgia, serif;
                font-size: 10.0pt;
                mso-pagination:widow-orphan;
                font-weight:normal;
                }
            p.MsoIndex1 {
                mso-style-name:"Index 1";
                margin:0in 0in 0in .15in;
                text-indent:-.15in;
                tab-stops:right 225.3pt;
            }
            p.MsoIndex2 {
                mso-style-name:"Index 2";
                margin:0in 0in 0in .3in;
                text-indent:-.15in;
                tab-stops:right 3.0in;
            }
            p.MsoToc1 {
                mso-style-name:"TOC 1";
                margin:6.0pt 25.0pt 0in .5in;
                text-indent:-.5in;
                tab-stops:.5in right dotted 487.6pt;
                font-weight:bold;
            }
            p.MsoToc2 {
                mso-style-name:"TOC 2";
                margin:0in 25.0pt 0in .5in;
                text-indent:-.5in;
                tab-stops:.5in right dotted 487.6pt;
                font-weight:bold;
            }
            p.MsoToc3 {
                mso-style-name:"TOC 3";
                margin:0in 25.0pt 0in .5in;
                text-indent:-.5in;
                tab-stops:.5in right dotted 487.6pt;
                font-weight:bold;
            }
            p.MsoHeader {
                tab-stops:center 3.25in right 6.5in;
            }
            p.MsoFooter {
                tab-stops:center 3.25in right 6.5in;
            }
            p.MsoIndexHeading {
                mso-style-next:"Index 1";
                margin:6.0pt 0in 6.0pt 0in;
                font-size:10.0pt;
                font-weight:bold;
                font-style:italic;
            }
            p.MsoCaption {
                margin:0in 0in 10.0pt 0in;
                font-size:9.0pt;
                font-style:italic;
            }
            p.MsoBodyText {
                margin:0in 0in 6.0pt 0in;
            }
            a {
                mso-style-noshow:yes;
                color:blue;
                text-decoration:underline;
                text-underline:single;
            }
            p.ANNEX {
                mso-style-name:ANNEX;
                margin:0in 0in 24.0pt 0in;
                text-align:center;
                text-indent:0in;
                line-height:15.5pt;
                mso-line-height-rule:exactly;
                page-break-before:always;
                page-break-after:avoid;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
            }
            p.BiblioTitle {
                mso-style-name:"Biblio Title";
                margin:0in 0in 15.5pt 0in;
                text-align:center;
                line-height:15.5pt;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
            }
            p.Definition, li.Definition {
                mso-style-name:Definition;
                margin:0in 0in 12.0pt 0in;
                font-size:11.0pt;
            }
            p.ForewordTitle {
                mso-style-name:"Foreword Title";
                margin:0in 0in 15.5pt 0in;
                line-height:15.5pt;
                page-break-before:always;
                page-break-after:avoid;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
            }
            p.IntroTitle {
                mso-style-name:"Intro Title";
                margin:0in 0in 15.5pt 0in;
                line-height:15.5pt;
                page-break-after:avoid;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
            }
            p.Term {
                mso-style-name:"Term";
                mso-style-next:Definition;
                text-indent:0in;
                mso-pagination:widow-orphan;
                page-break-after:avoid;
                font-size:11.0pt;
                font-family: Cambria, Georgia, serif;
                font-weight:normal;
            }
            p.TermNum {
                mso-style-name:TermNum;
                mso-style-next:"Term";
                page-break-after:avoid;
                font-size:11.0pt;
                font-weight:bold;
            }
            p.Note, li.Note {
                mso-style-name:Note;
                margin:0in 0in 12.0pt 1.0in;
                text-indent:-1.0in;
                line-height:10.5pt;
                tab-stops:48.0pt;
                font-size:10.0pt;
            }
            p.Example, li.Example {
                mso-style-name:Example;
                margin:0in 0in 12.0pt 1.0in;
                text-indent:-1.0in;
                line-height:10.5pt;
                tab-stops:1.0in;
                font-size:10.0pt;
            }
            li {
                list-style-type: disc;
                mso-style-next:"Body Text";
                margin:0in;
                font-family: Cambria, Georgia, serif;
                font-size: 10.0pt;
                mso-pagination:widow-orphan;
                font-weight:normal;
            }
        </style>
    </head>
    <body>
        <h1>3 Terms and definitions</h1>
        <p>For the purposes of this document, the following terms and definitions apply.</p>
        <p>ISO and IEC maintain terminological databases for use in standardization at the following addresses:</p>
        <ul>
            <li>ISO Online browsing platform: available at http://www.iso.org/obp</li>
            <li>IEC Electropedia: available at http://www.electropedia.org/</li>
        </ul>
        <xsl:for-each select="vocab:vocabulary/vocab:package">
            <xsl:sort select="vocab:id" />
            <xsl:for-each select="vocab:package">
                <xsl:sort select="vocab:id" />
                <h2><xsl:value-of select="vocab:name" /></h2>
                <xsl:apply-templates select="vocab:figure" />
                <xsl:for-each select="vocab:term">
                    <xsl:sort select="vocab:id" />
                    <xsl:apply-templates select="." />
                </xsl:for-each>
                <xsl:for-each select="vocab:package">
                    <h3><xsl:value-of select="vocab:name" /></h3>
                    <xsl:apply-templates select="vocab:figure" />
                    <xsl:for-each select="vocab:term">
                        <xsl:sort select="vocab:id" />
                        <xsl:apply-templates select="." />
                    </xsl:for-each>
                    <xsl:for-each select="vocab:package">
                        <h4><xsl:value-of select="vocab:name" /></h4>
                        <xsl:apply-templates select="vocab:figure" />
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
    
    <xsl:template match="vocab:figure">
        <p class="BodyText" style='text-align:center;page-break-after:avoid'>
            <img src="14812%20-%20180927.fld/image012.png" /></p>
        <p class="Caption" style='text-align:center'>Figure <!--[if supportFields]><span style='mso-element:field-begin'></span> SEQ Figure \* ARABIC 
         <span style='mso-element:field-end'></span><![endif]-->:
            <xsl:value-of select="vocab:name" /></p>
    </xsl:template>
    
    
    <xsl:template match="vocab:term">
        <p class="TermNum"><xsl:value-of select="vocab:clause" /></p>
        <p class="Term"><span style="font-weight:bold;"><xsl:value-of select="vocab:name" /></span>
            <xsl:text disable-output-escaping="yes">&lt;a name="</xsl:text><xsl:value-of select="vocab:guid" /><xsl:text disable-output-escaping="yes">"&gt;&lt;/a&gt;</xsl:text>
            <xsl:for-each select="vocab:index">
                <xsl:comment><xsl:text>[if supportFields]>&lt;span style='mso-element:field-begin'>&lt;/span>
                        XE &quot;</xsl:text><xsl:value-of select="current()" /><xsl:text>&quot; &lt;![endif]</xsl:text></xsl:comment>
                <xsl:comment><xsl:text>[if supportFields]>&lt;span style='mso-element:field-end'>&lt;/span>&lt;![endif]</xsl:text></xsl:comment>
            </xsl:for-each>
            <span style='mso-element:field-begin'></span> SET <xsl:value-of select="vocab:guid" /> "<xsl:value-of select="vocab:clause" />"
            <span style='mso-element:field-end'></span></p>
        <xsl:for-each select="vocab:synonym"><p class="Term"><span style="font-weight:bold;"><xsl:value-of select="." /></span></p></xsl:for-each>
        <xsl:for-each select="vocab:admittedTerm"><p class="Term"><xsl:value-of select="." /></p></xsl:for-each>
        <xsl:for-each select="vocab:deprecatedTerm"><p class="Term">DEPRECATED: <xsl:value-of select="." /></p></xsl:for-each>
        <p class="Definition"><!--<xsl:value-of select="replace(vocab:definition, $pattern, $replace)" disable-output-escaping="yes"/>--><xsl:value-of select="vocab:definition" disable-output-escaping="yes"/></p>
        <xsl:if test="count(vocab:example) = 1">
            <xsl:for-each select="vocab:example"><p class="Example">EXAMPLE&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
        </xsl:if><xsl:if test="count(vocab:example) &gt; 1">
            <xsl:for-each select="vocab:example"><p class="Example">EXAMPLE <xsl:value-of select="position()" />&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
        </xsl:if>
        <xsl:for-each select="vocab:note"><p class="Note">Note <xsl:value-of select="position()" /> to entry:&#9;<xsl:value-of select="current()" /></p></xsl:for-each>
        <xsl:for-each select="vocab:source"><p class="Definition">[Source: <xsl:value-of select="current()" />]</p></xsl:for-each>
        
    </xsl:template>
</xsl:stylesheet>

