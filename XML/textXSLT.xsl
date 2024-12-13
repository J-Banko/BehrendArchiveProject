<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="meta">
        <h3><xsl:apply-templates select="title"/></h3>
        <ul>
            <xsl:if test="date">
                <li><xsl:apply-templates select="date"/></li>
            </xsl:if>
            <li><xsl:apply-templates select="source"/></li>
            <li>Editors: 
                <ul>
                    <xsl:for-each select="editors/editor">
                        <li><xsl:apply-templates select="current()"/></li>
                    </xsl:for-each>
                </ul>  
            </li>
            <li>
                <strong>Summary: </strong>
                <xsl:apply-templates select="summary" />
            </li>
        </ul>
    </xsl:template>
    
    <xsl:template match="letter">
        <div class="transcript">
            <xsl:apply-templates/> 
        </div>   
    </xsl:template>
    
    <xsl:template match="p">
        <p id="p-{count(preceding::p) + 1}">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="ln">
        <br id="ln-{count(preceding::ln) + 1}" />
        <span class="lineNum">
            <xsl:text> </xsl:text>
        </span>
    </xsl:template>
    
    
    <xsl:template match="location">
        <span class="location" title="{@category}"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="*[@corr]">
        <xsl:value-of select="@corr" />
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="." />
    </xsl:template>
    
    
    
</xsl:stylesheet>
