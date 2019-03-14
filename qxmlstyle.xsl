<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/propertyList">
  <html>
      <head>
        <title>Q Coast Homes Brochure List</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      </link>
      </head>
  <body>
    <div class = "container">
      <h2>Q Coast Homes Brochures List</h2>
        <input class = "form-control" id = "demo" type = "text" placeholder = "Search price, brochure # or suburb/package here">
        </input>
         <table id="test" class = "table table-bordered table-striped">
            <tr bgcolor="#9acd32">
            <th>Package</th>
            <th>Suburb</th>
          <th>Price</th>
          <th>Brochure</th>
        </tr>
    <xsl:for-each select="residential">
        <tr>
          <td><xsl:value-of select="headline"/></td>
          <td><xsl:value-of select="address/suburb"/></td>
          <td><xsl:value-of select="priceView"/></td>
          <td><a href="{objects/document/@url}"><xsl:value-of select="objects/document/@url"/></a></td>
        </tr>
    </xsl:for-each>
  </table>
</div>
<script src="search.js" type="text/javascript"></script>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
