<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/propertyList">
  <html>
      <head>
        <title>Q Coast Homes Brochure List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
      </link>
      </head>
  <body>
    <div class = "container">
      <h2>Q Coast Homes Brochures List</h2>
        <tbody id = "test">
         <table class = "table table-bordered table-striped">
            <tr bgcolor="#9acd32">
            <th>Package</th>
          <th>Price</th>
          <th>Brochure</th>
        </tr>
    <xsl:for-each select="residential">
        <tr>
          <td><xsl:value-of select="headline"/></td>
          <td><xsl:value-of select="priceView"/></td>
          <td><a href="{objects/document/@url}"><xsl:value-of select="objects/document/@url"/></a></td>
        </tr>
    </xsl:for-each>
  </table>
</tbody>
</div>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
