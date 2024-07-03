<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Feed</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid #ddd;
            padding: 8px;
          }
          th {
            background-color: #f2f2f2;
          }
          .plas {
            display: block;
            unicode-bidi: isolate;
          }
        </style>
      </head>
      <body>
        <h1>Sitemap file: https://www.belform.com/atom.xml</h1>
        <h3>Number of URLs in this sitemap: <xsl:value-of select="count(rss/channel/item)"/></h3>
        <table>
          <tr>
            <th>Heading</th>
            <th>URL</th>
            <th>Date Modified</th>
          </tr>
          <xsl:for-each select="rss/channel/item">
            <tr>
              <td><xsl:value-of select="title"/></td>
              <td><a href="{link}"><xsl:value-of select="link"/></a></td>
              <td><xsl:value-of select="pubDate"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <h3>Curated by the <a href="https://visomglobal.com">VisomGlobal</a>.</h3>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
