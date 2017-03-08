<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  exclude-result-prefixes="xd exsl estr edate a fo local rng tei teix"
  extension-element-prefixes="exsl estr edate" version="2.0"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
  xmlns:edate="http://exslt.org/dates-and-times"
  xmlns:estr="http://exslt.org/strings" xmlns:exsl="http://exslt.org/common"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  xmlns:html="http://www.w3.org/1999/xhtml"
  xmlns:local="http://www.pantor.com/ns/local"
  xmlns:rng="http://relaxng.org/ns/structure/1.0"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns:teix="http://www.tei-c.org/ns/Examples"
  xmlns:xd="http://www.pnp-software.com/XSLTdoc"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xd:doc type="stylesheet">
    <xd:short> TEI stylesheet for STC location codes. </xd:short>
    <xd:detail> This library is free software; you can redistribute it and/or
      modify it under the terms of the GNU Lesser General Public License as
      published by the Free Software Foundation; either version 2.1 of the
      License, or (at your option) any later version. This library is
      distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
      without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
      PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
      details. You should have received a copy of the GNU Lesser General Public
      License along with this library; if not, write to the Free Software
      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA </xd:detail>
  </xd:doc>
  <xsl:output method="html" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>
<xsl:preserve-space elements="tei:c"/>
  <xsl:template match="/">
	<html>
	<head>
	  <title><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<style type="text/css" media="screen,print">@import "stc.css";</style>
	</head>
        <body>
          <div id="pageBlock" class="pageBlock">
            <div class="textBlock">
              <ul> 
	            <xsl:apply-templates/>
              </ul>
            </div>
          </div>
        </body>
        </html>
  </xsl:template>

  <xsl:template name="front">
    <xsl:apply-templates select="//tei:front/tei:div"/>
  </xsl:template>
   

  <xsl:template match="tei:teiHeader">
    <xsl:apply-templates select="//tei:titleStmt"/>
    <xsl:apply-templates select="//tei:particDesc"/>
  </xsl:template>

  <xsl:template match="tei:titleStmt">
  </xsl:template>
  
  <xsl:template match="tei:item">
    <li> 
    <xsl:apply-templates/> 
    </li>
  </xsl:template>
  
  <xsl:template match="tei:idno[@type='stc']">
    <xsl:variable name="class" select="translate(@rend,',',' ')" />
    <span class="stc{$class}"><xsl:apply-templates/></span>
  </xsl:template>

  
  <xsl:template match="tei:name">
    <xsl:variable name="class" select="translate(@rend,',',' ')" />
    <span class="name{$class}"><xsl:apply-templates/>, </span>
  </xsl:template>

  <xsl:template match="tei:placeName">
    <xsl:variable name="class" select="translate(@rend,',',' ')" />
    <span class="placeName {$class}"> <xsl:apply-templates/>, </span>
  </xsl:template>
  
  <xsl:template match="tei:idno[@type='estc']">
    <xsl:variable name="class" select="translate(@rend,',',' ')" />
    <span class="estc {$class}"><xsl:apply-templates/></span>
  </xsl:template>
  
  <xsl:template match="tei:note"> 
    <xsl:variable name="class" select="translate(@rend,',',' ')" />
    <span class="note {$class}"><xsl:apply-templates/>. </span>
  </xsl:template>

  
</xsl:stylesheet>
