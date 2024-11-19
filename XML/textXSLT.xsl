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
    
    
    <!-- Template for <ln> elements -->
    <xsl:template match="ln">
        <xsl:apply-templates/>
        <xsl:text> </xsl:text> <!-- Add space between lines -->
    </xsl:template>
    
    
</xsl:stylesheet>
