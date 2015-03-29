<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>-->
    <link href="/d3-geomap/css/d3.geomap.css" rel="stylesheet">
    <script src="/d3-geomap/vendor/d3.geomap.dependencies.min.js"></script>
    <script src="/d3-geomap/js/d3.geomap.min.js"></script>
    <script src="/d3-geomap/datamaps.world.min.js"></script>
<div id="container" style="position: relative; width: 1100px; height: 600px;"></div>
<script type="text/javascript" runat="server">
    //<![CDATA[
//var dataset; 
//   ]]>
</script>
<script type="text/javascript">
<!--
    var map = new Datamap({
        element: document.getElementById("container"),
        done: function (datamap) {
            datamap.svg.selectAll(".datamaps-subunit").on("click", function (geography) {
                window.location = "/fundCountry.aspx?country="+geography.id;
            });
        },
        dataUrl: 'Content/sp.pop.totl.csv',
        dataType: 'csv',
        data: {},
        fills: {
            '1': '#dddddd',
            '2': '#E2725B',
            '3': '#E62020',
            '4': '#65000B',
            defaultFill: '#dddddd'
        }
    });
// -->

</script>
<%--    
<div id="map" style="margin-left:auto; margin-right:auto;text-align:center;"></div>
    <script>
        var format = function (d) {
            d = d / 1000000;
            return d3.format(',.02f')(d) + 'M';
        }

        var map = d3.geomap.choropleth()
            .geofile('/d3-geomap/topojson/world/countries.json')
            .colors(colorbrewer.YlGnBu[9])
            .column('YR2010')
            .format(format)
            .legend(true)
            .unitId('Country Code');

        d3.csv('Content/sp.pop.totl.csv', function (error, data) {
            d3.select('#map')
                .datum(data)
                .call(map.draw, map);
        });
    </script>--%>

</asp:Content>
