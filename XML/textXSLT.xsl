<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Root template -->
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Generic template for all elements -->
    <xsl:template match="*|@*">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Template for <imp> elements -->
    <xsl:template match="imp">
        <xsl:choose>
            <!-- Handle 'writing' type -->
            <xsl:when test="@type='writing'">
                <xsl:apply-templates/>
            </xsl:when>
            <!-- Default behavior: use corrected text -->
            <xsl:otherwise>
                <xsl:value-of select="@corr"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- Template for <ln> elements -->
    <xsl:template match="ln">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text> <!-- Add space between lines -->
    </xsl:template>
    
    <!-- Template for text nodes -->
    <xsl:template match="text()">
        <xsl:apply-templates/>
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>
