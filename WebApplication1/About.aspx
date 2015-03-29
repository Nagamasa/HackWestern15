<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Omni Aid</h2>
    
    <div class="col-md-6"><p>Omni Care combines health based data sets with current climate models to create a predictive crisis 
        outbreak platform. With the addition of crowdbased funding, we seek to democratize disaster response, prempting traditional methods for a more 
        expedient and efficient model of care.</p>
        <p>Currently our datasets are pulled from <a href="http://data.worldbank.org/">The World Bank</a> sourcing from the 
            <a href="http://data.worldbank.org/developers/data-catalog-api">Data Catalog</a> and 
            <a href="http://data.worldbank.org/developers/climate-data-api">Climate Data</a> API's. Applying our proprietary metric
            system, we rank potential high risk areas, and mark them for potential funding and response initiatives. Through monetary
            support, or on the ground aid contribution, <b>YOU</b> are they key to our success.</p>
        <p>
            Rethink international aid, Change the model of disaster reponse, take a proactive step with Omni Care. Join us today. 
        </p>
    </div>
   <div class="col-md-6"><img src="img/dr.jpg"></div>
</asp:Content>