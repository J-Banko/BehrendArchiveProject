<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="ln">

        <ln n="{@num}"/>
            <xsl:apply-templates/>
            <!--changed Ashlynn's line numbers "num" to "n", and also decided to change the line elements to self-closing line breaks because I ran into a person element in my XML that ran across two lines-->
    </xsl:template>
    
    
</xsl:stylesheet>