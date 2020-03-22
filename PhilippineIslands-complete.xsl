<!DOCTYPE xsl:stylesheet [

    <!ENTITY mdash "&#x2014;">
    <!ENTITY ndash "&#x2013;">
    <!ENTITY euml "&#x00EB;">

]>
<xsl:transform
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="urn:stylesheet-functions"
    exclude-result-prefixes="f xs"
    version="2.0">

<xsl:include href="merge-documents.xsl"/>

<xsl:variable name="volume01" select="f:import-document('Volumes 01-09/Volume 01/PhilippineIslands01-normalized.xml', 'vol-01', 'vol-')"/>
<xsl:variable name="volume02" select="f:import-document('Volumes 01-09/Volume 02/PhilippineIslands02-normalized.xml', 'vol-02', 'vol-')"/>
<xsl:variable name="volume03" select="f:import-document('Volumes 01-09/Volume 03/PhilippineIslands03-normalized.xml', 'vol-03', 'vol-')"/>
<xsl:variable name="volume04" select="f:import-document('Volumes 01-09/Volume 04/PhilippineIslands04-normalized.xml', 'vol-04', 'vol-')"/>
<xsl:variable name="volume05" select="f:import-document('Volumes 01-09/Volume 05/PhilippineIslands05-normalized.xml', 'vol-05', 'vol-')"/>
<xsl:variable name="volume06" select="f:import-document('Volumes 01-09/Volume 06/PhilippineIslands06-normalized.xml', 'vol-06', 'vol-')"/>
<xsl:variable name="volume07" select="f:import-document('Volumes 01-09/Volume 07/PhilippineIslands07-normalized.xml', 'vol-07', 'vol-')"/>
<xsl:variable name="volume08" select="f:import-document('Volumes 01-09/Volume 08/PhilippineIslands08-normalized.xml', 'vol-08', 'vol-')"/>
<xsl:variable name="volume09" select="f:import-document('Volumes 01-09/Volume 09/PhilippineIslands09-normalized.xml', 'vol-09', 'vol-')"/>

<xsl:variable name="volume10" select="f:import-document('Volumes 10-19/Volume 10/PhilippineIslands10-normalized.xml', 'vol-10', 'vol-')"/>
<xsl:variable name="volume11" select="f:import-document('Volumes 10-19/Volume 11/PhilippineIslands11-normalized.xml', 'vol-11', 'vol-')"/>
<xsl:variable name="volume12" select="f:import-document('Volumes 10-19/Volume 12/PhilippineIslands12-normalized.xml', 'vol-12', 'vol-')"/>
<xsl:variable name="volume13" select="f:import-document('Volumes 10-19/Volume 13/PhilippineIslands13-normalized.xml', 'vol-13', 'vol-')"/>
<xsl:variable name="volume14" select="f:import-document('Volumes 10-19/Volume 14/PhilippineIslands14-normalized.xml', 'vol-14', 'vol-')"/>
<!--
<xsl:variable name="volume15" select="f:import-document('Volumes 10-19/Volume 15/PhilippineIslands15-normalized.xml', 'vol-15', 'vol-')"/>
-->
<xsl:variable name="volume16" select="f:import-document('Volumes 10-19/Volume 16/PhilippineIslands16-normalized.xml', 'vol-16', 'vol-')"/>
<xsl:variable name="volume17" select="f:import-document('Volumes 10-19/Volume 17/PhilippineIslands17-normalized.xml', 'vol-17', 'vol-')"/>
<xsl:variable name="volume18" select="f:import-document('Volumes 10-19/Volume 18/PhilippineIslands18-normalized.xml', 'vol-18', 'vol-')"/>
<xsl:variable name="volume19" select="f:import-document('Volumes 10-19/Volume 19/PhilippineIslands19-normalized.xml', 'vol-19', 'vol-')"/>

<xsl:variable name="volume20" select="f:import-document('Volumes 20-29/Volume 20/PhilippineIslands20-normalized.xml', 'vol-20', 'vol-')"/>
<xsl:variable name="volume21" select="f:import-document('Volumes 20-29/Volume 21/PhilippineIslands21-normalized.xml', 'vol-21', 'vol-')"/>
<xsl:variable name="volume22" select="f:import-document('Volumes 20-29/Volume 22/PhilippineIslands22-normalized.xml', 'vol-22', 'vol-')"/>
<xsl:variable name="volume23" select="f:import-document('Volumes 20-29/Volume 23/PhilippineIslands23-normalized.xml', 'vol-23', 'vol-')"/>
<xsl:variable name="volume24" select="f:import-document('Volumes 20-29/Volume 24/PhilippineIslands24-normalized.xml', 'vol-24', 'vol-')"/>
<xsl:variable name="volume25" select="f:import-document('Volumes 20-29/Volume 25/PhilippineIslands25-normalized.xml', 'vol-25', 'vol-')"/>
<xsl:variable name="volume26" select="f:import-document('Volumes 20-29/Volume 26/PhilippineIslands26-normalized.xml', 'vol-26', 'vol-')"/>
<xsl:variable name="volume27" select="f:import-document('Volumes 20-29/Volume 27/PhilippineIslands27-normalized.xml', 'vol-27', 'vol-')"/>
<xsl:variable name="volume28" select="f:import-document('Volumes 20-29/Volume 28/PhilippineIslands28-normalized.xml', 'vol-28', 'vol-')"/>
<xsl:variable name="volume29" select="f:import-document('Volumes 20-29/Volume 29/PhilippineIslands29-normalized.xml', 'vol-29', 'vol-')"/>

<xsl:variable name="volume30" select="f:import-document('Volumes 30-39/Volume 30/PhilippineIslands30-normalized.xml', 'vol-30', 'vol-')"/>
<xsl:variable name="volume31" select="f:import-document('Volumes 30-39/Volume 31/PhilippineIslands31-normalized.xml', 'vol-31', 'vol-')"/>
<xsl:variable name="volume32" select="f:import-document('Volumes 30-39/Volume 32/PhilippineIslands32-normalized.xml', 'vol-32', 'vol-')"/>
<xsl:variable name="volume33" select="f:import-document('Volumes 30-39/Volume 33/PhilippineIslands33-normalized.xml', 'vol-33', 'vol-')"/>
<xsl:variable name="volume34" select="f:import-document('Volumes 30-39/Volume 34/PhilippineIslands34-normalized.xml', 'vol-34', 'vol-')"/>
<xsl:variable name="volume35" select="f:import-document('Volumes 30-39/Volume 35/PhilippineIslands35-normalized.xml', 'vol-35', 'vol-')"/>
<xsl:variable name="volume36" select="f:import-document('Volumes 30-39/Volume 36/PhilippineIslands36-normalized.xml', 'vol-36', 'vol-')"/>
<xsl:variable name="volume37" select="f:import-document('Volumes 30-39/Volume 37/PhilippineIslands37-normalized.xml', 'vol-37', 'vol-')"/>
<xsl:variable name="volume38" select="f:import-document('Volumes 30-39/Volume 38/PhilippineIslands38-normalized.xml', 'vol-38', 'vol-')"/>
<xsl:variable name="volume39" select="f:import-document('Volumes 30-39/Volume 39/PhilippineIslands39-normalized.xml', 'vol-39', 'vol-')"/>

<xsl:variable name="volume40" select="f:import-document('Volumes 40-49/Volume 40/PhilippineIslands40-normalized.xml', 'vol-40', 'vol-')"/>
<xsl:variable name="volume41" select="f:import-document('Volumes 40-49/Volume 41/PhilippineIslands41-normalized.xml', 'vol-41', 'vol-')"/>
<xsl:variable name="volume42" select="f:import-document('Volumes 40-49/Volume 42/PhilippineIslands42-normalized.xml', 'vol-42', 'vol-')"/>
<xsl:variable name="volume43" select="f:import-document('Volumes 40-49/Volume 43/PhilippineIslands43-normalized.xml', 'vol-43', 'vol-')"/>
<xsl:variable name="volume44" select="f:import-document('Volumes 40-49/Volume 44/PhilippineIslands44-normalized.xml', 'vol-44', 'vol-')"/>
<xsl:variable name="volume45" select="f:import-document('Volumes 40-49/Volume 45/PhilippineIslands45-normalized.xml', 'vol-45', 'vol-')"/>
<xsl:variable name="volume46" select="f:import-document('Volumes 40-49/Volume 46/PhilippineIslands46-normalized.xml', 'vol-46', 'vol-')"/>
<xsl:variable name="volume47" select="f:import-document('Volumes 40-49/Volume 47/PhilippineIslands47-normalized.xml', 'vol-47', 'vol-')"/>
<xsl:variable name="volume48" select="f:import-document('Volumes 40-49/Volume 48/PhilippineIslands48-normalized.xml', 'vol-48', 'vol-')"/>
<xsl:variable name="volume49" select="f:import-document('Volumes 40-49/Volume 49/PhilippineIslands49-normalized.xml', 'vol-49', 'vol-')"/>

<xsl:variable name="volume50" select="f:import-document('Volumes 50-55/Volume 50/PhilippineIslands50-normalized.xml', 'vol-50', 'vol-')"/>
<xsl:variable name="volume51" select="f:import-document('Volumes 50-55/Volume 51/PhilippineIslands51-normalized.xml', 'vol-51', 'vol-')"/>
<xsl:variable name="volume52" select="f:import-document('Volumes 50-55/Volume 52/PhilippineIslands52-normalized.xml', 'vol-52', 'vol-')"/>

<!--
<xsl:variable name="volume53" select="f:import-document('Volumes 50-55/Volume 53/PhilippineIslands53-normalized.xml', 'vol-53', 'vol-')"/>
-->

<xsl:template match="/">
    <teiCorpus lang="en-US">
    <teiHeader>
        <fileDesc>
            <titleStmt>
                <title>The Philippine Islands, 1493&ndash;1898: explorations by early navigators, descriptions of the islands and their peoples, their history and records of the catholic missions, as related in contemporaneous books and manuscripts, showing the political, economic, commercial and religious conditions of those islands from their earliest relations with European nations to the close of the nineteenth century</title>
                <author sortkey="Blair, Emma Helen">Emma Helen Blair (d. 1911)</author>
                <author sortkey="Robertson, James Alexander">James Alexander Robertson (1873&ndash;1939)</author>
                <respStmt><resp>Contributor</resp> <name>Edward Gaylord Bourne (1860&ndash;1908)</name></respStmt>
                <respStmt><resp>Transcription</resp> <name>Jeroen Hellingman</name></respStmt>
            </titleStmt>
            <publicationStmt>
                <publisher>Project Gutenberg</publisher>
                <pubPlace>Urbana, Illinois, USA.</pubPlace>
                <idno type="LCCN">10014128</idno>
                <idno type="OLN">OL7024564M</idno>
                <idno type="OLW">OL1106958W</idno>
                <idno type="OCLC">1967849</idno>
                <idno type="epub-id">urn:uuid:0179c657-af9b-4bd4-a84e-5b264634db6d</idno>
                <idno type="PGnum">#####</idno>
                <date>#####</date>

                <xsl:apply-templates select="$volume01//teiHeader/publicationStmt/availability"/>

            </publicationStmt>
            <sourceDesc>
                <bibl>
                <author>Emma Helen Blair</author>
                <author>James Alexander Robertson</author>
                <author>Edward Gaylord Bourne</author>
                <title>The Philippine Islands, 1493&ndash;1898: explorations by early navigators, descriptions of the islands and their peoples, their history and records of the catholic missions, as related in contemporaneous books and manuscripts, showing the political, economic, commercial and religious conditions of those islands from their earliest relations with European nations to the close of the nineteenth century</title>
                <date>1903&ndash;1909</date>
                </bibl>
            </sourceDesc>
        </fileDesc>

        <xsl:apply-templates select="$volume01//teiHeader/encodingDesc"/>
        <xsl:apply-templates select="$volume01//teiHeader/profileDesc"/>

        <revisionDesc>
            <list type="simple">
                <item>2015-10-07 Initial combined version.</item>
            </list>
        </revisionDesc>
    </teiHeader>

    <xsl:apply-templates select="$volume01"/>
    <xsl:apply-templates select="$volume02"/>
    <xsl:apply-templates select="$volume03"/>
    <xsl:apply-templates select="$volume04"/>
    <xsl:apply-templates select="$volume05"/>
    <xsl:apply-templates select="$volume06"/>
    <xsl:apply-templates select="$volume07"/>
    <xsl:apply-templates select="$volume08"/>
    <xsl:apply-templates select="$volume09"/>

    <xsl:apply-templates select="$volume10"/>
    <xsl:apply-templates select="$volume11"/>
    <xsl:apply-templates select="$volume12"/>
    <xsl:apply-templates select="$volume13"/>
    <xsl:apply-templates select="$volume14"/>
    <!--
    <xsl:apply-templates select="$volume15"/>
    -->
    <xsl:apply-templates select="$volume16"/>
    <xsl:apply-templates select="$volume17"/>
    <xsl:apply-templates select="$volume18"/>
    <xsl:apply-templates select="$volume19"/>

    <xsl:apply-templates select="$volume20"/>
    <xsl:apply-templates select="$volume21"/>
    <xsl:apply-templates select="$volume22"/>
    <xsl:apply-templates select="$volume23"/>
    <xsl:apply-templates select="$volume24"/>
    <xsl:apply-templates select="$volume25"/>
    <xsl:apply-templates select="$volume26"/>
    <xsl:apply-templates select="$volume27"/>
    <xsl:apply-templates select="$volume28"/>
    <xsl:apply-templates select="$volume29"/>

    <xsl:apply-templates select="$volume30"/>
    <xsl:apply-templates select="$volume31"/>
    <xsl:apply-templates select="$volume32"/>
    <xsl:apply-templates select="$volume33"/>
    <xsl:apply-templates select="$volume34"/>
    <xsl:apply-templates select="$volume35"/>
    <xsl:apply-templates select="$volume36"/>
    <xsl:apply-templates select="$volume37"/>
    <xsl:apply-templates select="$volume38"/>
    <xsl:apply-templates select="$volume39"/>

    <xsl:apply-templates select="$volume40"/>
    <xsl:apply-templates select="$volume41"/>
    <xsl:apply-templates select="$volume42"/>
    <xsl:apply-templates select="$volume43"/>
    <xsl:apply-templates select="$volume44"/>
    <xsl:apply-templates select="$volume45"/>
    <xsl:apply-templates select="$volume46"/>
    <xsl:apply-templates select="$volume47"/>
    <xsl:apply-templates select="$volume48"/>
    <xsl:apply-templates select="$volume49"/>

    <xsl:apply-templates select="$volume50"/>
    <xsl:apply-templates select="$volume51"/>
    <xsl:apply-templates select="$volume52"/>

    <!--
    <xsl:apply-templates select="$volume53"/>
    -->

    </teiCorpus>
</xsl:template>


<xsl:template match="TEI.2">
    <TEI>
        <xsl:apply-templates select="node()|@*"/>
    </TEI>
</xsl:template>

<xsl:template match="node()|@*">
    <xsl:copy>
        <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
</xsl:template>


</xsl:transform>
