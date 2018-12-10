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
                font-size: 11.0pt;
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
                margin:6.0pt 25.0pt 0in .4in;
                text-indent:-.4in;
                tab-stops:.25in right dotted 487.6pt;
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
                font-size:11.0pt;
                font-weight:bold;
                font-style:italic;
            }
            p.MsoCaption {
                margin:0in 0in 10.0pt 0in;
                font-size:9.0pt;
                font-style:italic;
            }
            p.MsoNormal {
                mso-style-name:"Normal";
                mso-style-next:"Body Text";
                margin:0pt 0pt 0pt 0pt;
                text-indent:0in;
                mso-pagination:widow-orphan;
                font-size:11.0pt;
                font-family:Cambria, Georgia, serif;
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
                mso-style-name:"ANNEX";
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
            p.a2 {
                mso-style-name:"Annex 2";
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
            p.a3 {
                mso-style-name:"Annex 3";
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
            p.BiblioTitle {
                mso-style-name:"Biblio Title";
                margin:0in 0in 15.5pt 0in;
                text-align:center;
                line-height:15.5pt;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
            }
            p.BiblioEntry {
                mso-style-name:"Biblio Entry";
                margin-left:33.15pt;
                text-indent:-33.15pt;
                tab-stops: 33.15pt
            }
            p.Definition, li.Definition {
                mso-style-name:Definition;
                margin:0in 0in 12.0pt 0in;
                font-size:11.0pt;
            }
            p.zzContents {
                mso-style-name:"Foreword Title";
                margin:0in 0in 15.5pt 0in;
                line-height:15.5pt;
                page-break-before:always;
                page-break-after:avoid;
                mso-outline-level:1;
                font-size:14.0pt;
                font-weight:bold;
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
                font-size: 11.0pt;
                mso-pagination:widow-orphan;
                font-weight:normal;
            }
        </style>
    </head>
    <body lang="EN-GB" link="blue" vlink="#954F72" style='tab-interval:.5in'>
        <div class="WordSection1">
            <p class="MsoBodyText" align="right" style='text-align:right; margin-bottom:0pt'>Date: <xsl:value-of select="current-date()"></xsl:value-of></p>
            <p class="MsoBodyText" align="right" style='text-align:right; margin-bottom:0pt'><b><span style='font-size:14.0pt;'>ISO/TR 14812 (WD)</span></b></p>
            <p class="MsoBodyText" align="right" style='text-align:right; margin-bottom:0pt'>ISO TC 204/WG 1</p>
            <p class="MsoBodyText" align="right" style='text-align:right'>Secretariat: ANSI</p>
                    
            <p class="MsoBodyText" style='line-height:18.0pt; margin: 100pt 0pt 100pt 0pt;'><b><span style='font-size:16.0pt;'>Intelligent transport systems — Vocabulary </span></b></p>
            
            <div style='mso-element:para-border-div;border:solid windowtext 1.0pt;
                    mso-border-alt:solid windowtext .5pt;padding:1.0pt 4.0pt 1.0pt 4.0pt;
                    margin-left:4.25pt;margin-right:4.25pt'>
                <p class="MsoBodyText" align="center" style='text-align:center;'><b><span style='font-size:40.0pt;'>WD stage</span></b></p>
            </div>
            <p class="MsoBodyText" style='margin-bottom:6.0pt'> </p>
            <div style='mso-element:para-border-div;border:solid windowtext 1.0pt;
                mso-border-alt:solid windowtext .5pt;padding:1.0pt 4.0pt 1.0pt 4.0pt;
                margin-left:4.25pt;margin-right:4.25pt'>
                <p class="MsoBodyText" align="center" style='margin-bottom:6.0pt;text-align:center;'><b>
                    <span style='font-size:10.0pt;'>Warning for WDs and CDs</span></b></p>
                
                <p class="MsoBodyText" style='margin-bottom:6.0pt;'><span style='font-size:10.0pt;'>This document is not 
                        an ISO International Standard. It is distributed for review and comment. It is subject to change without
                        notice and may not be referred to as an International Standard.</span></p>
                
                <p class="MsoBodyText"><span style='font-size:10.0pt;'>Recipients of this draft 
                        are invited to submit, with their comments, notification of any relevant patent rights of which they are
                        aware and to provide supporting documentation.</span></p>
            </div>
            
            <p class="MsoBodyText"> </p>
                
        </div>
        
        <br clear="all" style='page-break-before:always;mso-break-type:section-break'></br>
        
        <div class="WordSection2">
            <div style='mso-element:para-border-div;border:solid windowtext 1.0pt;
                    border-bottom:none;mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:
                    solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;padding:1.0pt 4.0pt 0in 4.0pt;
                    margin-left:5.1pt;margin-right:5.1pt'>
                <p class="zzCopyright" style='margin-top:2.0pt;margin-right:0in;margin-bottom:
                        0in;margin-left:0in;margin-bottom:.0001pt;page-break-before:always;border:none;
                        mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
                        mso-border-right-alt:solid windowtext .5pt;padding:0in;mso-padding-alt:1.0pt 4.0pt 0in 4.0pt'>
                        © ISO 2018, Published in Switzerland</p>
            </div>
            <div style='mso-element:para-border-div;border-top:none;border-left:solid windowtext 1.0pt;
                    border-bottom:none;border-right:solid windowtext 1.0pt;mso-border-left-alt:
                    solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;padding:0in 4.0pt 0in 4.0pt;
                    margin-left:5.1pt;margin-right:5.1pt'>
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;border:none;
                        mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;
                        padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>All
                        rights reserved. Unless otherwise specified, no part of this publication may be
                        reproduced or utilized otherwise in any form or by any means, electronic or
                        mechanical, including photocopying, or posting on the internet or an intranet,
                        without prior written permission. Permission can be requested from either ISO
                        at the address below or ISO’s member body in the country of the requester.</p>
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            ISO copyright office</p>
                        
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            Ch. de <span class="SpellE">Blandonnet</span> 8 • CP 401</p>
                        
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            CH-1214 Vernier, Geneva, Switzerland</p>
                        
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            Tel.  + 41 22 749 01 11</p>
                        
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            Fax  + 41 22 749 09 47</p>
                        
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                            border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-right-alt:
                            solid windowtext .5pt;padding:0in;mso-padding-alt:0in 4.0pt 0in 4.0pt'>
                            copyright@iso.org</p>
                <p class="zzCopyright" style='margin:0in;margin-bottom:.0001pt;text-indent:20.15pt;
                        border:none;mso-border-left-alt:solid windowtext .5pt;mso-border-bottom-alt:
                        solid windowtext .5pt;mso-border-right-alt:solid windowtext .5pt;padding:0in;
                        mso-padding-alt:0in 4.0pt 1.0pt 4.0pt'>www.iso.org</p>
            </div>
            
            <p class="zzContents">Contents</p>
            <p class="MsoToc1"><span style='mso-element:field-begin'></span> TOC \h \z \o  
                &quot;1-3&quot; \t &quot; ANNEX;1;Biblio Title;1;Foreword Title;1;Intro Title;1;Front Head;1&quot; 
                <span style='mso-element:field-end'></span> </p>
        
            <p class="ForewordTitle">Foreword</p>
            <p class="MsoBodyText">ISO (the International Organization for Standardization) is a worldwide federation of
                    national standards bodies (ISO member bodies). The work of preparing
                    International Standards is normally carried out through ISO technical
                    committees. Each member body interested in a subject for which a technical
                    committee has been established has the right to be represented on that
                    committee. International organizations, governmental and non-governmental, in
                    liaison with ISO, also take part in the work. ISO collaborates closely with the
                    International Electrotechnical Commission (IEC) on all matters of
                    electrotechnical standardization.</p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">The
                        procedures used to develop this document and those intended for its further
                        maintenance are described in the ISO/IEC Directives, Part 1. In particular
                        the different approval criteria needed for the different types of ISO documents
                        should be noted. This document was drafted in accordance with the editorial
                        rules of the ISO/IEC Directives, Part 2 (see <span
                        class="MsoHyperlink"><a href="http://www.iso.org/directives">www.iso.org/directives</a></span>.</p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">Attention is drawn to the possibility that some of the elements of this document may be
                      the subject of patent rights. ISO shall not be held responsible for identifying
                      any or all such patent rights. Details of any patent rights identified during
                      the development of the document will be in the Introduction and/or on the ISO
                      list of patent declarations received (see <span class="MsoHyperlink"><a
                      href="http://www.iso.org/patents">www.iso.org/patents</a></span></p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">Any trade name used in this document is information given for the convenience of users
                      and does not constitute an endorsement.</p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">For an explanation on the meaning of ISO specific terms and expressions related to
                      conformity assessment, as well as information about ISO's adherence to the
                      World Trade Organization (WTO) principles in the Technical Barriers to Trade
                      (TBT) see the following URL: <span class="MsoHyperlink"><a
                      href="http://www.iso.org/iso/foreword.html">www.iso.org/iso/foreword.html</a>.</span></p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">The committee responsible for this document is Technical Committee ISO/TC <i>204</i>,
                      Intelligent transport systems.</p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">This is the first edition of this document.</p>
            <p class="MsoBodyText"> </p>    
            
            <p class="IntroTitle" style='page-break-before:always'>Introduction</p>
            <p class="MsoBodyText">This document establishes the preferred vocabulary within ISO/TC 204. Standards developed by
                    this committee are encouraged to copy the definitions found in this document as
                    they have been formulated in accordance with major ISO standards such as ISO
                    704 <i>Terminology Work – Principles and Methods</i> and are based on a consistent concept model.</p>
            <p class="MsoBodyText"> </p>
            <p class="MsoBodyText">Other
                        standards groups and organisations are also encouraged to adopt the terminology
                        in this document to promote better understanding of terms among ITS
                        professionals worldwide. The terms and definitions contained within this
                        document can be searched online at ISO’s Online Browsing Platform available at https://www.iso.org/obp.</p>
            <p class="MsoBodyText"> </p>
        </div>
        <b><span style='font-size:16.0pt;'><br clear="all" style='page-break-before:always;mso-break-type:section-break'></br>
            </span></b>
        
        
        <div class="WordSection3">
            <p class="MsoBodyText" style='line-height:18.0pt'><b><span style='font-size:16.0pt;'>Intelligent transport systems <span style='mso-no-proof:
                        yes'>—</span> Vocabulary</span></b></p>
            <h1>1 Scope</h1>
            <p class="MsoBodyText">This document is intended to formally document the vocabulary used and
                            developed by the entire intelligent transport systems (ITS) community. The
                            terms and definitions are developed in an open environment according to the
                            principles defined in Annex A with specific versions formally adopted through
                            updates to this ISO document.</p>
            <p class="MsoBodyText">It is recognized that the contents of this
                            document are not exhaustive, and that terminology evolves over time. ISO/TC 204
                            standards are encouraged to adopt the definitions included within this
                            document; however, it is recognized that each document may need to define
                            additional terms to meet its own needs. Annex B provides the best practices for
                            defining terms in other documents. The process to suggest changes to the
                            contents of this document is provided in Annex C.</p>
            <p class="MsoBodyText">In most cases, the definitions provided within
                            this document are suitable for general application throughout ITS. In those
                            circumstances where the definition only applies within a restricted context,
                            the context is indicated at the beginning of the definition.</p>
            <p class="MsoBodyText"><span style='background:yellow;mso-highlight:yellow;'>EDITOR’S
                            NOTE 1:<span style='mso-tab-count:1'>  </span>Text marked “EDITOR’S NOTE” in
                            this document will be removed in the final TR.</span></p>
            <p class="MsoBodyText"><span style='background:yellow;mso-highlight:yellow;'>EDITOR’S
                            NOTE 2: <span style='mso-tab-count:1'> </span>To facilitate the review of this Technical
                            Report by others, the attached Microsoft Excel file maps each of the terms
                            defined in this document to similar terms defined in existing ISO/TC 204
                            documents, along with the definitions for those terms and the WGs responsible
                            for developing and maintaining those documents.</span></p>
            
            <h1>2 Normative references</h1>
            <p class="MsoBodyText">There are no normative references in this document.</p>
            
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
<!--                    <h3><xsl:value-of select="vocab:name" /></h3> -->
                    <xsl:apply-templates select="vocab:figure" />
                    <xsl:for-each select="vocab:term">
                        <xsl:sort select="vocab:id" />
                        <xsl:apply-templates select="." />
                    </xsl:for-each>
                    <xsl:for-each select="vocab:package">
<!--                        <h4><xsl:value-of select="vocab:name" /></h4>   -->
                        <xsl:apply-templates select="vocab:figure" />
                        <xsl:for-each select="vocab:term">
                            <xsl:sort select="vocab:id" />
                            <xsl:apply-templates select="." />
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each>
            
            
            
            
            
        
        
<!-- Annex A -->        
<p class="ANNEX">Annex A
    <br>(informative)</br>
    <br> </br>
    <br>Purpose and methodology for ITS vocabulary</br></p>

<p class="a2">A.1 Purpose</p>

<p class="MsoBodyText">ISO/TC 204 and other ITS standards development organisations have produced a large
number of published documents, each defining its own terms. In most cases, identical
terms in different documents describe the same concept, but often with slight
variations in the text of the definition.</p>

<p class="MsoBodyText">The ISO 14812 project was initiated to: </p>
<ol>
    <li>Promote a more consistent set of terminology
        and definitions that can be used throughout ITS discussions and thereby enable
        better understanding,</li>
    <li>Improve the quality of the
        definitions by conforming to the terminological principles defined in ISO
        704:2009, and</li>
    <li>Graphically represent relationships
        between concepts to better promote understanding of concepts as defined in ISO
        24156-1:2014.</li>
</ol>

<p class="MsoBodyText">ISO/TC 204 does not enforce consistency or require
revisions to definitions in existing standards. The authority for the
appropriate terminology and definitions in each standard is the Working Group (WG)
producing the source standard. Revision of definitions in source standards is
accomplished only through approval of subsequent revisions of the standards,
addenda, or corrigenda as produced by the appropriate WG.</p>

<p class="MsoBodyText">In keeping with established resolutions and policy,
editors of new and updated ISO/TC 204 standards are to consult ISO 14812 in
drafting new and revised terms and definitions. Editors either refer to the
terms as defined in the vocabulary or recommend new definitions and terms as
required. </p>

<p class="a2">A.2 Methodology</p>

<p class="MsoBodyText">Developing
a set of harmonized definitions for terms already defined in existing standards
can be a challenge. Even if there is general agreement on the underlying
concept being described, it may be difficult for multiple groups to agree on a
single definition unless everyone agrees to a clear set of principles at the
start of the effort.</p>

<p class="MsoBodyText">Luckily,
terminology experts within ISO have standardized the principles that should be
followed when developing a vocabulary for ISO standards. These are defined in ISO
704:2009 <i>Terminology work – Principles
and methods</i>. Interested parties should become familiar with this document,
but a summary of the suggested process is provided below.</p>
<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    1.<span style='mso-tab-count:1'> </span>Select the field for which a vocabulary is to be defined.</p>
<p class="MsoBodyText" style='margin-left:.5in'>In the case of this document, the field is
    Intelligent transport systems.</p>

<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    2.<span style='mso-tab-count:1'> </span>Analyse the intension and extension of each concept.</p>
<p class="MsoBodyText" style='margin-left:.5in'>In other words, analyse the characteristics
that jointly distinguish each concept from other concepts (i.e., the intension)
and the set of objects that are represented by the concept (i.e., the
extension). By considering these both simultaneously, one can refine the
characteristics that the extension objects share in common.</p>
<p class="Example"  style='margin-bottom:0in;'>EXAMPLE<span style='mso-tab-count:1'>                 </span>A
“moped” has the following characteristics (intension):</p>
    <p class="Example" style='margin-bottom:0in;margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>type of entity</p>
    <p class="Example" style='margin-bottom:0in;margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>used to transport a person and optionally goods</p>
    <p class="Example" style='margin-bottom:0in;margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>designed to be used on a road network</p>
    <p class="Example" style='margin-bottom:0in;margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>propelled by an on-board motor</p>
    <p class="Example" style='margin-bottom:0in;margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>has a maximum design speed not exceeding 50 km/h</p>
    <p class="Example" style='margin-left:1.5in;text-indent:-.25in;mso-list:l20 level1 lfo27'>
        ·<span style='mso-tab-count:1'> </span>has 2 or 3 wheels</p>
        
<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The
following images provide sample extensions of “moped”.</p>

<p class="Example" style='margin-bottom:0in;margin-bottom:.0001pt;page-break-after:avoid'>
    <img width="482" height="148" src="images/FigureA-1.png" 
    alt="The image shows a Swedish moped class I[15], a Norsjö Shopper 3-wheel moped red[16], and a Moped in 
    Myrtos[17] " />
</p>

<p class="MsoCaption" align="center" style='text-align:center'>Figure A-1:
Three example mopeds</p>

<p class="Example" style='margin-bottom:0in;margin-bottom:.0001pt'> </p>

<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    3.<span style='mso-tab-count:1'> </span>Determine the relationships to other concepts.</p>
        
        <p class="MsoBodyText" style='margin-left:.5in'>Identify how each concept relates to other concepts
            within the domain. Typical relationships include:</p>

        <p class="MsoBodyText" style='margin-left:1.0in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
            a.<span style='mso-tab-count:1'> </span>Generic relations (i.e., when the characteristics
            of one concept includes all of the characteristics of another concept plus at
            least one additional characteristic)</p>

        <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The
            “moped” concept has a generic relationship with the “vehicle” concept, where
            “vehicle” is the superordinate concept and “moped” is the subordinate concept.</p>

        <p class="MsoBodyText" style='margin-left:1.0in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
            a.<span style='mso-tab-count:1'> </span>Partitive relations (i.e., when once
            concept forms a part of another concept)</p>
        
        <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The
            “wheel” concept has a partitive relationship with the “moped” concept, where “moped”
            is the superordinate concept and “wheel” is the subordinate concept.</p>
        <p class="MsoBodyText" style='margin-left:1.0in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
            a.<span style='mso-tab-count:1'> </span>Associative relations (i.e., when
            one concept has some other relationship to another concept)</p>
        
        <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The
            “road network” concept has an associative relationship with the “moped”
            concept, where the “moped” is “designed to be used on” the “road network”.</p>

<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    4.<span style='mso-tab-count:1'> </span>Illustrate these relationships with a diagram</p>

        <p class="MsoBodyText" style='margin-left:.5in'>Once the relationships have been determined,
they should be documented with the use of diagrams. While various diagrammatic
techniques are allowed, this document uses UML to depict the relationships
according to the conventions defined in ISO 24156-1:2014 <i>Graphic notations for concept modelling in 
terminology work and its relationship with UML – Part 1: Guidelines for using UML notation in
terminology work</i>. The rules in this document are summarised in A.3.</p>

<p class="MsoBodyText" style='margin-left:.5in'><img width="452" height="396" src="images/FigureA-2.png"
    alt="Text Box: EXAMPLE	The figure depicts the relationships among concepts according to the rules of ISO 
    24156-1. The example demonstrates how many of the characteristics of “moped” are inherited from more generalised 
    concepts. The figure indicates that a moped 
    is a type of motor vehicle with the characteristics that it has a maximum speed not greater than 50 km/hr and no 
    more than 3 wheels. A motor vehicle is a type of self-propelled vehicle that is propelled by an onboard motor, has 
    at least two wheels, and is designed to be used on the road network. A self-propelled vehicle is a type of vehicle 
    that has an onboard propulsion source. A vehicle is a type of entity for the purpose of transporting people and/or 
    goods." />
</p>

<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    5.<span style='mso-tab-count:1'> </span>Formulate definitions based on relationships</p>
        
<p class="MsoBodyText" style='margin-left:.5in'>The definition of each concept should be
directly derived from the defined relationships. The definition should not
restate characteristics inherited by other concepts; it should merely reference
the more general term. The definition should not provide supplemental
information as might appear in an encyclopaedic entry. If there is a need to
provide such information, it should be provided in a note or an example
immediately after the definition or provided as a part of the main body of the
document. The intent of the definitions is that they should be worded such that
they can be inserted in place of the term wherever the term occurs in the
document (i.e., they are not complete sentences and they do not start with an article
(e.g., they do not start with “a” or “an”)).</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>
    motor vehicle with 2 or 3 wheels and a maximum design speed not exceeding 50 km/h</p>

<p class="MsoBodyText" style='margin-left:.5in;text-indent:-.25in;mso-list:l19 level1 lfo25'>
    6.<span style='mso-tab-count:1'> </span>Assign a designation to each concept</p>

<p class="MsoBodyText" style='margin-left:.5in'>In other words, the term is only given its
final name (i.e., designation) once the relationships and definitions have been
determined. In practice, every concept is given a name as soon as we begin to
formulate it, but this name should be considered temporary until we have
completed the analysis. In this case of this document, the vast majority of
concepts defined have previously been included and named in other documents. As
a general rule, terms already in use should retain their name, unless there are
significant reasons to change. For example, if an existing term is confusing
with another concept or if different groups use different terms for the same
concept, the community will have to weigh the benefits of retaining usage of
the term versus changing to a more descriptive term.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>moped</p>

        <p class="a2">A.3<span style='mso-tab-count:1'> </span>Overview of the concept model
diagrams</p>

<p class="MsoBodyText">Concept
models can be depicted using a variety of different notations. One of the most
common notations to use is the Unified Modelling Language (UML). UML is a
graphical notation originally standardised by the Object Management Group in
1997 and later adopted by ISO in 2005 as ISO 19501. It was designed primarily
for describing software systems, but it was also found to be useful in
documenting concept models. In 2008, ISO published ISO 24156 that defined how
to use a subset of UML to represent the results of a terminological concept
analysis. This standard was last updated by ISO 24156-1 in 2014.</p>

<p class="MsoBodyText">The primary aspect of UML used in modeling concepts is the
UML class diagram. Each rectangle on a diagram represents a distinct concept
and is given a name. Typically, UML requires the name to be a single word (i.e.,
no spaces) with an initial uppercase character; but in concept modelling, the
names should be the term names (i.e., typically lowercase with spaces between
words).</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>Figure A-2 depicts
8 concepts: entity, vehicle, self-propelled vehicle, motor vehicle, road
network, wheel, motor, and moped.</p>

<p class="MsoBodyText">The rectangles may be shown with a single compartment or divided
into two compartments by a horizontal line. If only one compartment is present,
it will depict the name of the concept. If two compartments are present, the
upper compartment depicts the name of the concept and the lower compartment describes
the characteristics of the concept by setting named attributes to specific
values. </p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In Figure A-2, the
concept named “entity” has a single compartment.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
Figure A-2, the concept
named “moped” has two compartments with the lower compartment showing two
attributes: <span class="SpellE">max_speed</span> and <span class="SpellE">max_wheels</span>.</p>

<p class="MsoBodyText">Concept relationships are shown by lines connecting the
concepts. Lines with a filled-in arrowhead indicate that the concept without
the arrowhead is a specialized subordinate concept to the superordinate concept
near the arrowhead. In this case, all examples (extensions) of the subordinate
concept are also included in the extension of the superordinate concept. </p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
    Figure A-2, a “moped”
is defined to be a subordinate concept to the more general “motor vehicle”
concept. This means that all mopeds are also motor vehicles and the
characteristics of a motor vehicle also applies to a moped.</p>

<p class="MsoBodyText">Lines with a diamond on the end indicate a partitive
relationship where the concept near the diamond is a composite or aggregation
and the concept on the other end is a part of the larger concept. </p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
    Figure A-2, motor
vehicle has a partitive relationship to both wheel and motor. In each case, the
motor vehicle is the composite/aggregate and the wheel and motor are the
components of the larger whole.</p>

<p class="MsoBodyText">Lines without a diamond or arrowhead indicate associative
relationships. </p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
Figure A-2, motor vehicle has an associative relationship to road network.</p>

<p class="MsoBodyText">Associative relationships in concept models should (and
partitive relationships may) have a name that describe the relationship
further. The name is often adorned with a filled-in triangle to indicate the
directionality of the named relation.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
Figure A-2, the
associative relationship between “motor vehicle” and “road network” has the name
“designed to be used on”. The name is adorned with a filled-in triangle to
indicate that the motor vehicle is designed to be used on the road network (i.e.,
the road network is not “designed to be used on” the motor vehicle).</p>

<p class="MsoBodyText">Finally, the ends of partitive and associative relationships
can be adorned with numbers to indicate any required numerical constraints.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In Figure A-2, a
motor vehicle is required to have 2 or more (i.e., “<span class="GramE">2..</span>*”)
wheels.</p>

<p class="a2">A.4 <span style='mso-tab-count:1'> </span>Concept models and data models</p>

<p class="a3">A.4.1 <span style='mso-tab-count:1'> </span>General principles</p>

<p class="MsoBodyText">The use of UML to model concepts in terminological
work is very similar to the task of using UML to define data concepts in
systems engineering. In fact, it only makes sense that the resulting models should
be entirely consistent with one another, even though the specifics will vary.</p>

<p class="MsoBodyText">Terminological work is intended to define the meaning
of terms in natural (human) language. Data concepts are intended to define the
meaning of data when exchanged between computer systems – or really, between
the programmers of the computer systems. In general, it is desirable for each
concept to have a single designation (i.e., name) and definition used within
both terminology (human terms) and systems engineering (computer terms).</p>

<p class="a3">A.4.2 <span style='mso-tab-count:1'> </span>Practical considerations</p>

<p class="MsoBodyText">In practice, differences between the models are often
required, but care should be taken to ensure that the models are entirely
consistent with each other. Differences might include:</p>

<p class="MsoBodyText" style='margin-left:.25in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
    · <span style='mso-tab-count:1'> </span>Variations to conform to specific language rules, </p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>A
data model might require class names to use <span class="SpellE">UpperCamelCase</span>.
As such, the term “vehicle” becomes the data concept “Vehicle”, the term “motor
vehicle” becomes the data concept “<span class="SpellE">MotorVehicle</span>”, etc.</p>

        <p class="MsoBodyText" style='margin-left:.25in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
            · <span style='mso-tab-count:1'> </span>Variations to improve systems engineering design
            efficiencies, and</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
order to promote efficiency, it might be advantageous to develop a data model without
classes for “Entity”, “Vehicle”, and “<span class="SpellE">SelfPropelledVehicle</span>”
as long as all of the associated functionality is implemented in the “<span
class="SpellE">MotorVehicle</span>” class.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>In
the above example, it is strongly recommended that the implemented class be
called “<span class="SpellE">MotorVehicle</span>” rather than “Vehicle” to
promote consistent terminology and understanding as well as providing a data
model that can be maintained in a consistent fashion over time. If the class were
to be named “Vehicle”, it may confuse some users and result in inappropriate
usage of the class.</p>

<p class="MsoBodyText" style='margin-left:.25in;text-indent:-.25in;mso-list:l13 level1 lfo26'>
    · <span style='mso-tab-count:1'> </span>Variations to represent data elements versus classes. Within
terminology, all concepts are shown as rectangular boxes; a literal translation
to a data model would mean each term would be defined as its own class with a
value field – this would be a highly inefficient way to implement code. Within
data models, the rectangular boxes depict classes and the second compartment is
used to define attributes, each of which can be assigned a value at runtime. The
class and all of its attributes should have definitions that are consistent
with the defined concept model.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>A
data model might include a “<span class="SpellE">numberOfWheels</span>” attribute
for the “<span class="SpellE">MotorVehicle</span>” class rather than associating
the “<span class="SpellE">MotorVehicle</span>” with multiple “Wheel” objects.</p>

<p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>A
data model might include a “<span class="SpellE">motorFuelType</span>” attribute
for the “<span class="SpellE">MotorVehicle</span>” class rather than associating the
“<span class="SpellE">MotorVehicle</span>” class with a “Motor” class and then
associating the “Motor” class with a “<span class="SpellE">MotorFuelType</span>”
class which would then have a value.</p>

        <p class="a3">A.4.3<span style='mso-tab-count:1'> </span>Additional specifications</p>

<p class="MsoBodyText">Within systems engineering, a data concept must have
additional specifications, which should be defined in separate meta-data fields.
For example, ISO 14817-1 defines a number of meta-attributes that should be
defined for each type of data concept. The meta-attributes include a “descriptive
name” as well as a “definition”. Within the limitations as described above,
these should be consistent with the “designation” and “definitions” defined in
the concept model. However, ISO 14817-1 defines an array of other meta-attributes,
such as “data concept version”, “data type”, “format”, etc. These provide
additional details that are often required or useful for implementing systems
but are less important for terminology work. In fact, within data models, the
same base concept might be implemented with multiple variants. In such cases, the
name of the data concept needs to indicate the variance.</p>

<p class="Example" style='margin-bottom:0in;margin-bottom:.0001pt'>EXAMPLE<span style='mso-tab-count:1'>                 </span>The
term “vehicle speed” might be defined to be “the instantaneous <b>speed</b> of a <b>vehicle</b>”, where “speed” and “vehicle” are defined separately. Within
a data model, the concept “vehicle” would likely be portrayed as a “Vehicle”
class and “vehicle speed” would be portrayed as the attribute “speed” of the
“Vehicle” and would receive the name “<span class="SpellE">Vehicle.speed</span>”
using ISO 14817-1 conventions. A data element goes one step further and defines
how the data is presented. The preferred solution for such a data element is to
use the same definition as used by the term (i.e., “the instantaneous <b>speed</b> of a <b>vehicle</b>”) and to use the other meta-attributes to further specify
how the information is presented, such as:</p>

<p class="Example" style='margin-top:0in;margin-right:0in;margin-bottom:0in;
    margin-left:1.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l13 level2 lfo26'>o <span style='mso-tab-count:1'> </span>Descriptive name: <span
class="SpellE"><span class="GramE">Vehicle.speed:measure</span>-kph</span></p>

<p class="Example" style='margin-top:0in;margin-right:0in;margin-bottom:0in;
    margin-left:1.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l13 level2 lfo26'>o <span style='mso-tab-count:1'> </span>Data type: INTEGER</p>

        <p class="Example" style='margin-left:1.5in;text-indent:-.25in;mso-list:l13 level2 lfo26'>o <span style='mso-tab-count:1'> </span>Unit of measure: km/hr</p>

        <p class="a2">A.5 <span style='mso-tab-count:1'> </span>Maintaining consistency between terminological model
            and data model</p>

<p class="MsoBodyText">Over time, the terminological concept models and data
models will need to be maintained. As one is changed, the other will need to be
updated as well. While the need is known, the exact process has not yet been
defined, but will likely become the subject of another ISO/TC 204 standard or
technical report.</p>

<p class="MsoBodyText"> </p>   
            
            
            
            
            
            
            
<!-- Annex B -->
            <p class="ANNEX">Annex B
                <br>(informative)</br>
                <br> </br>
                <br>Usage examples</br></p>
            
            <p class="a2">B.1<span style='mso-tab-count:1'> </span>Incorporating terms into other documents</p>
            <p class="a3">B.1.1<span style='mso-tab-count:1'> </span>Including terms contained in ISO 14812 (this document)</p>
            <p class="MsoBodyText">Other ISO/TC 204 documents are strongly encouraged to
                adopt the terms and definitions defined within this document. Ensuring that all
                ISO/TC 204 standards use a consistent terminology will promote understanding of
                the information contained within standards and improve interoperability of systems
                as the domains of different working groups merge into a common Internet of
                Things (IoT) environment. </p>
            <p class="MsoBodyText">The terms and definitions should be referenced in a manner
                that is consistent with the rules defined in the ISO Directives. In short, this
                means that ISO/TC 204 standards should identify ISO 14812 as a normative reference and not include definitions 
                of terms that are already defined within ISO 14812. Furthermore, efforts should be undertaken to ensure that 
                terminology used withiin each standard is consistent with the defininitions provided in ISO 14812.</p>
            <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The
                following shows an example of how another document should reference the terms
                and definitions contained within this document. The phrase "and the following" should only be included if the 
                document defines terms locally.</p>
            <p class="MsoBodyText"><img width="491" height="361" src="images/FigureB-1.png"
                alt="" /></p>
            
            <p class="a3">B.1.2<span style='mso-tab-count:1'> </span>Defining terms not contained in ISO 14812</p>
            <p class="MsoBodyText">This document is intended to provide the definitions of
                terms as used within intelligent transport system discussions, however, this
                scope is limited by:</p>
            <ol>
                <li>The fact that this document is the initial
                    version of a document that reflects an on-going work-in-progress. At the
                    initiation of this project, ISO/TC 204 had already defined roughly 2,000 terms,
                    many with inconsistencies. Rather than trying to reach TC-wide consensus on all
                    of these terms for the first version, it was determined that it would be better
                    to focus on the most widely used terms.</li>
                <li>Some of the terms defined might be specific to
                    the scope of a single standard and defining them within a TC-wide vocabulary
                    may not be useful.</li>
                <li>As the industry evolves, new terms are likely to emerge.</li>
            </ol>
            <p class="MsoBodyText">The existence of this document should not be construed to
                prohibit the definition of additional terms; every document should define the
                terms that it needs to unambiguously express its intent. However, when
                developing such terms, the respective working group is encouraged to work with
                ISO/TC 204/ WG 1 so that the definition can be developed in a consistent manner
                with all of the other terms.</p>
            
            <p class="a3">B.1.3<span style='mso-tab-count:1'> </span>Including terms contained in ISO 14812 (this document)</p>
            <p class="a4">B.1.3.1<span style='mso-tab-count:1'> </span>General</p>
            <p class="MsoBodyText">Most existing standards already define their own terms. It
                is in the interest of the industry that all ITS standards use consistent
                definitions; as such those updating existing standards are encouraged to revise
                their documents to use terminology that is consistent with this document, ISO
                14812. Each existing term will fall into at least one of the following categories
                as discussed below:</p>
            <ol>
                <li>The existing term and definition are consistent with
                    the ISO 14812 content</li>
                <li>The existing term and definition are largely consistent
                    with the ISO 14812 content, but some nuance is missing</li>
                <li>The existing term is defined in ISO 14812, but
                    describes a different concept</li>
                <li>The existing concept is included within ISO 14812, but
                    is assigned to a different term</li>
                <li>Neither the existing term or concept are included
                    within the current version of ISO 14812</li>
            </ol>
            
            <p class="a4">B.1.3.2<span style='mso-tab-count:1'> </span>Existing term and definition are consistent with ISO 14812</p>
            <p class="MsoBodyText">In a few cases, you may find that an existing term and
                definition are <i>identical</i> to what is
                contained in ISO 14812; however, this will likely be exceptional as the ISO
                14812 definitions have been developed according to the rules defined in ISO 704
                and therefore are based on the conceptual terminology model that was defined as
                a part of the development of ISO 14812.</p>
            <p class="MsoBodyText">However, just because the exact text of the definition is
                different does not mean that the term is describing a different concept. In
                general, the terms defined in ISO 14812 are intended to be completely
                consistent with their meanings prior to the development of ISO 14812; the new
                definitions were developed to improve comprehension by creating an ITS-wide
                concept model that relates terms to one another, as recommended by
                terminological experts. Thus, in most cases, it is expected that existing terms
                will be consistent with the definitions in ISO 14812.</p>
            <p class="MsoBodyText">In this case, the existing standard should simply be
                updated by referencing ISO 14812 in the introduction to its "terms and definitions" section and removing
                the locally defined term. </p>
            
            <p class="a4">B.1.3.3<span style='mso-tab-count:1'> </span>Existing term has a nuanced difference in definition from ISO 14812</p>
            <p class="MsoBodyText">Any time a definition changes, one has to be concerned about
                introducing subtle differences in meaning. If a working group believes that ISO
                14812 has introduced such a change, the working group should work with ISO/TC
                204/WG 1 according to the procedures in Annex C to resolve the issue. The
                intent of the resolution process is to develop a consistent vocabulary for the
                whole of the intelligent transport system domain while also ensuring the
                necessary precision needed by the various standards. </p>
            
            <p class="a4">B.1.3.4<span style='mso-tab-count:1'> </span>Existing term with a different definition in ISO 14812</p>
            <p class="MsoBodyText">In some cases, the same term may be used to describe
                different concepts between ISO 14812 and an existing document. In most such
                cases, the development of the ISO 14812 definition was likely done in
                coordination with the working group responsible for maintaining the existing
                standard, in which case the resolution for the inconsistency should already be
                known (and might be achieved by ISO 14812 assigning a different term to the
                existing concept as described by B.1.3.5). Otherwise, the editor will need to
                determine if it is appropriate to continue using the existing term or if a
                change might be more appropriate. </p>
            <p class="MsoBodyText">In general, it is desirable for each term to only have a
                single meaning; but in practice, multiple meanings for the same term is not
                uncommon. Multiple meanings are acceptable as long as the context provides adequate
                disambiguation among the multiple meanings and each meaning is clearly labeled
                to be applicable to a specific domain. Where the context might be unclear, the
                domain name can be used as a modifier to clarify the intent.</p>
            <p class="MsoBodyText"><img width="490" height="115" src="images/FigureB-2.png"
                    alt="Text Box: EXAMPLE	The physical object representing a user of an ITS service is called a terminator.
                    &#13;&#10;	The above sentence is accurate and sufficiently unambiguous based on the definitions included in
                    this document. If the word “ITS” was removed in front of “service”, the sentence (at least when read by 
                    itself) would imply a generic service and the sentence would no longer necessarily be true as the word 
                    “terminator” is only applicable to the physical view of the system architecture. In theory, one could add 
                    the term “ITS” in front of the term “user” as well (e.g., “The physical object representing an ITS user of 
                    an ITS service is called a terminator.”), but this would make the sentence rather redundant and would 
                    detract from the information that the sentence is trying to convey. &#13;&#10;&#13;&#10;" /></p>
            <p class="MsoBodyText">However, multiple meanings should always be avoided for
                terms where similar concepts are likely to be confused with one another. In
                these cases, the working group responsible for maintaining the existing
                standard will need to work with ISO/TC 204/ WG1 to determine the appropriate
                resolution. </p>
            <p class="MsoBodyText">The resolution will often require the editor of the
                document to perform a search for every occurrence of the existing term and to
                make edits as needed so that the updated standard is consistent with the TC 204
                vocabulary.</p>
            
            <p class="a4">B.1.3.5<span style='mso-tab-count:1'> </span>Same concept assigned to a different term in ISO 14812</p>
            <p class="MsoBodyText">In some cases, ISO 14812 has chosen to use a different
                term to describe concepts already defined. This might be done to resolve
                existing differences between existing standards or because the terms themselves
                are not fully descriptive of the concept being defined. </p>
            <p class="MsoBodyText">The resolution will often require the editor of the
                document to perform a search for every occurrence of the existing term and to
                make edits as needed so that the updated standard is consistent with the TC 204
                vocabulary.</p>
            
            <p class="a4">B.1.3.6<span style='mso-tab-count:1'> </span>Neither concept nor term defined in ISO 14812</p>
            <p class="MsoBodyText">As mentioned above, the current version of ISO 14812 does
                not claim to define all terms applicable to ITS. Any document is allowed to
                extend its vocabulary as needed by defining its own terms; however, ISO/TC 204/
                WG 1 encourages working groups defining new terms to work with them to ensure
                the terms fit into the broader ITS terminology concept model. </p>
            
            
            <p class="a2">B.2<span style='mso-tab-count:1'> </span>Using terms within the text of the document</p>
            <p class="a3">B.2.1<span style='mso-tab-count:1'> </span>General</p>
            <p class="MsoBodyText">Upon the first use of a defined term within a document, editors are encouraged to highlight
                the fact that the term has a formal definition by presenting the term in
                <i>italics</i> and optionally following the term with a parenthetical reference to the standard and clause where
                the term is defined. This convention allows users to recognize that the term has a formal
                definition. Subsequent uses may use the same convention, just use italics, or use plain text; but all terms
                within the document should follow consistent rules.</p>
            <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>The <i>physical object</i> (ISO TR 14812, 3.4.5.5)  
                representing a <i>user</i> (ISO TR 14812, 3.2.2.3) of an <i>ITS service</i> (ISO TR 14812, 3.2.2.1) is called a <i>terminator</i> 
                (ISO TR 14812, 3.4.5.6).</p>
            
            <p class="MsoBodyText">To assist in maintenance, ISO/TC 204/WG 1 intends to minimize changes to clause numbers of 
                terms as much as possible. When new terms are defined; they will generally be added as new clause numbers. If 
                terms are deleted, their numbers will remain unused in the document.</p>
            
            <p class="a3">B.2.2<span style='mso-tab-count:1'> </span>Disambiguation</p>
            <p class="MsoBodyText">Within ITS, some terms are used as the designation of more
                than one concept (e.g., “service”). When this occurs, each concept is provided
                with its own terminological entry and the definition is preceded by the domain
                to which the definition applies within brackets. </p>
            <p class="MsoBodyText">A document that needs to precisely reference such a
                concept when the domain is not obvious can disambiguate among multiple concepts
                by adding the domain as a modifying term.</p>
            <p class="Example">EXAMPLE<span style='mso-tab-count:1'>                 </span>If
                the term “service” is too ambiguous, it can be clarified by adding a domain,
                which produces a term such as “ITS service”.</p>
            
            <p class="a3">B.2.3<span style='mso-tab-count:1'> </span>Data dictionaries</p>
            <p class="MsoBodyText">Documents may reference both terms and data concepts
                within the text of the document. The definition of both should be consistent
                with one another as described within A.4; however, the data concept will be more
                specific and often include representational form information. When wishing to
                reference a data concept, editors are encouraged to use <span style='font-family:
                    "Courier New"'>a fixed width font </span>whereas
                        terminology should be shown in the normal font with a <i>italics</i>.</p>
            
            
            
            
            
            
            
<!-- Annex C -->
            <p class="ANNEX">Annex C
                <br>(informative)</br>
                <br> </br>
                <br>Procedures for maintaining the vocabulary</br></p>
            
            <p class="a2">C.1<span style='mso-tab-count:1'> </span>Scope of maintenance procedures</p>
            <p class="MsoBodyText">This Annex
                describes how additions, revisions, and withdrawals of terms and definitions in
                ISO TR 14812, <i>Intelligent transport systems – Vocabulary</i> will be managed. Extensive or 
                complex revisions of the entire document are not necessarily within scope of this Annex. </p>
            
            <p class="a2">C.2<span style='mso-tab-count:1'> </span>Maintenance environment</p>
            <p class="MsoBodyText">All definitions are to be developed according to the principles of ISO 704.
                Definitions of general concepts that apply beyond the scope of ISO/TC 204 might
                import definitions from other well-established sources, typically ISO standards
                from other technical committees. Any such definitions explicitly cite the
                source of the definition.</p>
            <p class="MsoBodyText">All other terms are defined according to their relationships to other 
                defined terms as documented within a concept model. The concept model is documented in UML
                according to the conventions contained in ISO 24156.</p>
            <p class="MsoBodyText">The model is maintained using three key software products:</p>
            <ul>
                <li>Enterprise Architect<a style='mso-footnote-id:ftn1' href="#_ftn1" name="_ftnref1" title="">
                    <span class="MsoFootnoteReference">1</span></a> (EA) by Sparx,</li>
                <li>Github (https://github.com/isotc204/14812/projects), and</li>
                <li>LemonTree by LieberLieber.</li>
            </ul>
            <p class="MsoBodyText">The UML file is created and stored within an EA file. Each subsection 
                within this document is generally represented by a separate package within the EA file. 
                Definitions, notes, examples, and all other information for each term is stored within the
                “notes” field of the concept within the EA file.</p>
            <p class="MsoBodyText">The EA file is version controlled using a Github. Branches and
                forks are created to manage enhancements to the current file while allowing
                easy access to the approved version. When an expert or group proposes changes, reviewers
                can use LemonTree<a style='mso-footnote-id:ftn2'
                href="#_ftn2" name="_ftnref2" title=""><span class="MsoFootnoteReference">2</span></a> to
                identify differences between the proposal and the base version of the model (or
                any other version). Users with appropriate rights are able to merge selected
                changes into a new master file. The exact maintenance process is described
                below.</p>
            
            <p class="a2">C.3<span style='mso-tab-count:1'> </span>Maintenance process</p>
            <p class="MsoBodyText">The general maintenance process is depicted in Figure C-3. 
                The process starts (Step 1) with the current version of the EA file as stored
                in the development branch of the ISO/TC 204 Github site. </p>
            <p class="MsoBodyText">Individuals or groups (‘submitters’) wishing to suggest
                changes to the vocabulary should fork the current version of the development
                branch onto their own Github account. A fork copies the EA file onto the submitter’s own 
                site where the submitter can edit the file without affecting the actual development copy. 
                Figure C-1 shows the creation of two such forks (Steps 2 and 3) where two different
                submitters make changes in parallel (Steps 4 and 5).</p>
                <p class="MsoBodyText"> </p>
            <p class="MsoBodyText" align="center" style='text-align:center;page-break-after:
                avoid'><span style='mso-no-proof:yes'><img width="324" height="275"
                src="images/FigureC-1.png" /></span></p>
            <p class="MsoCaption" align="center" style='text-align:center'>Figure C-1: Maintenance process</p>
            <p class="MsoBodyText">Each fork may include an unlimited number of proposals to:</p>
            <ul>
                <li>Add one or more new terms (with definitions), </li>
                <li>Revise one or more terms and/or definitions, and/or</li>
                <li>Withdraw one or more obsolete terms and definitions (e.g., due to withdrawal of a standard).</li>
            </ul>
            <p class="MsoBodyText">When a submitter is done (or nearly done) with proposed
                edits, the submitter will use Github to issue a ‘pull request’ to the 14812 Vetting Team. 
                The Vetting Team then uses LemonTree to identify differences between the current
                development branch and the proposal. LemonTree allows the Vetting Team to approve or reject 
                each incremental change and thereby create a new development version (Steps 6 and 9). If the 
                Vetting Team is unable to complete the review of a submission at a single meeting, the 
                submitter is still able to update their proposal (Step 7) based on on-going discussions and 
                the new file can be used in the next review by the Vetting Team to develop a new version of
                the development branch (Step 8).</p>
            <p class="MsoBodyText">Once the Vetting Team believes the development version is
                ready to be distributed as a Draft Technical Report (DTR), the Github version is tagged as 
                such (Step 9) and the documentation is generated from the EA file using the scripts developed 
                and maintained on the Github site. Once generated, the documentation is formatted and submitted 
                to ISO for a DTR ballot. </p>
            <p class="MsoBodyText">When sent to DTR ballot, outside entities are encouraged
                to review the file and they may make comments either by the process described
                above (Steps 10 and 11) or may make comments through the standard ISO
                procedure. The Vetting Team will consider this input and produce a new
                development version (Step 12). Once the file is considered final by the Vetting
                Team, the file will be stored in a “ready” branch (Step 13) and the generated
                documentation will be submitted to ISO for publication. This allows continued
                development of the document within the development branch (Step 14) while the
                ISO TR is finalized for publication. If the editorial process requires any changes
                to the EA file, those changes are made in the ready branch (Step 15). Once the
                TR is published, the ready branch version is merged back into the master branch
                (Step 16) and the development branch (Step 17). </p>
            <p class="MsoBodyText">The process then starts over (i.e., Step 17 becomes the
                next Step 1).</p>
            
            <p class="a2">C.4<span style='mso-tab-count:1'> </span>Formation of Validation Team</p>
            <p class="MsoBodyText">The ISO 14812 Validation Team is composed of interested experts of ISO/TC 204/ 
                WG 1. </p>
            <p class="MsoBodyText"> </p>
            
            
            
            
            
            
            
            
            <!-- Bibliography -->
            <br clear="all" style='page-break-before:always'></br>
            <p class="BiblioTitle">Bibliography</p>

<p class="BiblioEntry">[1]<span style='mso-tab-count:1'>      </span>ISO 704:2009, <i>Terminology work — 
    Principles and methods</i></p>
<p class="BiblioEntry">[2]<span style='mso-tab-count:1'>      </span>ISO 10241‑1:2011, <i>Terminological 
    entries in standards — Part 1: General requirements and examples of presentation</i></p>
<p class="BiblioEntry">[3]<span style='mso-tab-count:1'>      </span>ISO 14817-1</p>
<p class="BiblioEntry">[4]<span style='mso-tab-count:1'>      </span>ISO/TR 17185-1, <i>Intelligent 
    transport systems — Public transport user information — Part 1: Standards framework for public information
    systems</i></p>
<p class="BiblioEntry">[5]<span style='mso-tab-count:1'>      </span>ISO 17572-1:2015, <i>Intelligent transport 
    systems (ITS) — Location referencing for geographic databases — Part 1: General requirements
    and conceptual model</i></p>
<p class="BiblioEntry">[6]<span style='mso-tab-count:1'>      </span>ISO 21217:2014, <i>Intelligent transport 
    systems — Communications access for land mobiles (CALM) — Architecture</i></p>
<p class="BiblioEntry">[7]<span style='mso-tab-count:1'>      </span>ISO 24156‑1:2014,<i> Graphic notations 
    for concept modelling in terminology work and its relationship with UML — Part 1: Guidelines for using UML 
    notation in terminology work</i></p>
<p class="BiblioEntry">[8]<span style='mso-tab-count:1'>      </span>ISO 24774:2010, <i>Systems and software 
    engineering -- Life cycle management -- Guidelines for process description</i></p>
<p class="BiblioEntry">[9]<span style='mso-tab-count:1'>      </span>ISO 25060:2010, <i>Systems and software 
    engineering -- Systems and software product Quality Requirements and Evaluation (SQuaRE) --
    Common Industry Format (CIF) for usability: General framework for usability-related information</i></p>
<p class="BiblioEntry">[10]<span style='mso-tab-count:1'>    </span>ISO 25062:2006, <i>Software engineering -- 
    Software product Quality Requirements and Evaluation (SQuaRE) -- Common Industry Format (CIF)
    for usability test reports</i></p>
<p class="BiblioEntry">[11]<span style='mso-tab-count:1'>    </span>ISO/IEC/IEEE 26515:2011, <i>Systems and 
    software engineering -- Developing user documentation in an agile environment</i></p>
<p class="BiblioEntry">[12]<span style='mso-tab-count:1'>    </span>ISO 42010:2011, <i>Systems and software 
    engineering — Architecture description </i></p>
<p class="BiblioEntry">[13]<span style='mso-tab-count:1'>    </span>UNECE TRANS/WP.29/1045, <i>Concerning 
    the common definitions of vehicle categories, masses and dimensions (S.R. 1)</i>. 15 Sept 2005. Available 
    from: https://www.unece.org/fileadmin/DAM/trans/doc/2005/wp29/TRANS-WP29-1045e.pdf</p>
<p class="BiblioEntry">[14]<span style='mso-tab-count:1'>    </span>Wikipedia the free encyclopedia
    – definition of reference architecture [Internet]. [cited 2018 Jul 17]; Available from: 
    http://en.wikipedia.org/wiki/reference_architecture</p>
<p class="BiblioEntry">[15]<span style='mso-tab-count:1'>    </span>Wikimedia commons – File:Swedish moped 
    class I.jpg [Internet]; photo taken by Bluescan sv.wiki on 2010 Oct 23 and made available under Creative 
    Commons Attribution-Share Alike 3.0 Unported license. [cited 2018 Aug 3]; Available from:
    https://commons.wikimedia.org/wiki/File:Swedish_moped_class_I.jpg</p>
<p class="BiblioEntry">[16]<span style='mso-tab-count:1'>    </span>Wikimedia commons – File:NorsjoShopperRed01.JPG
    [Internet]; photo taken by Fb35523 on 2011 May 11 and made available under GNU Free Documentation License. 
    [cited 2018 Aug 3]; Available from: https://commons.wikimedia.org/wiki/File:NorsjoShopperRed01.JPG</p>
<p class="BiblioEntry">[17]<span style='mso-tab-count:1'>    </span>Wikimedia commons – File:Moped in 
    Myrtos.JPG [Internet]; photo taken by Mikel Holland-Moritz on 2015 Jul 16 and made available under Creative
    Commons Attribution-Share Alike 4.0 International license. [cited 2018 Aug 3]; Available from: 
    https://commons.wikimedia.org/wiki/File:Moped_in_Myrtos.JPG</p>

<p class="MsoBodyText"> </p>

            <br clear="all" style='page-break-before:always'></br>
<p class="BiblioTitle">Index</p>

            <p class="MsoIndex1"><span style='mso-element:field-begin'></span> INDEX \e &quot;	&quot; \h &quot;A&quot; \c
                &quot;2&quot; \z &quot;1033&quot; <span style='mso-element:field-end'></span></p>

</div>

<div style='mso-element:footnote-list'><br clear="all"></br>
<hr align="left" size="1" width="33%"></hr>
<div style='mso-element:footnote' id="ftn1">
<p class="MsoFootnoteText"><a style='mso-footnote-id:ftn1' href="#_ftnref1"
name="_ftn1" title=""><span class="MsoFootnoteReference"><span style='mso-special-character:
footnote'><span class="MsoFootnoteReference"><span
style='font-size:10.0pt;font-family:"Times New Roman",serif;mso-fareast-font-family:
"Times New Roman";mso-ansi-language:EN-US;mso-fareast-language:EN-US;
mso-bidi-language:AR-SA'>[1]</span></span></span></span></a>
Enterprise Architect is a software tool developed by Sparx, who has provided
free licenses to experts of ISO/TC 204 for the development of ISO standards.</p>

</div>

<div style='mso-element:footnote' id="ftn2">

<p class="MsoFootnoteText"><a style='mso-footnote-id:ftn2' href="#_ftnref2"
name="_ftn2" title=""><span class="MsoFootnoteReference"><span style='mso-special-character:
footnote'><span class="MsoFootnoteReference"><span
style='font-size:10.0pt;font-family:"Times New Roman",serif;mso-fareast-font-family:
"Times New Roman";mso-ansi-language:EN-US;mso-fareast-language:EN-US;
mso-bidi-language:AR-SA'>[2]</span></span></span></span></a>
LemonTree is a software tool developed by LieberLieber, who has provided free
licenses to experts of ISO/TC 204 for the development of ISO standards. </p>
</div>
            
        </div>     
    </body>
</html>
    </xsl:template>
    
    <xsl:template match="vocab:figure">
        <p class="BodyText" style='text-align:center;page-break-after:avoid'>
            <xsl:value-of select="vocab:img" disable-output-escaping="yes"/></p>
        <p class="Caption" style='text-align:center'>Figure <span style='mso-element:field-begin'></span> SEQ Figure \* ARABIC 
         <span style='mso-element:field-end'></span>: Concept model for <xsl:value-of select="vocab:name" /></p>
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

