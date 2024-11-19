<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Root template -->
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Template for all elements -->
    <xsl:template match="*|@*">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- Template for <imp> elements -->
    <xsl:template match="imp">
        <xsl:value-of select="@corr"/>
    </xsl:template>
    
    <!-- Template for <ln> elements -->
    <xsl:template match="ln">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text> <!-- Add a space to preserve spacing between words -->
    </xsl:template>
    
    <!-- Template for text nodes -->
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>
