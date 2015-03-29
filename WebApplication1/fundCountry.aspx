<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fundCountry.aspx.cs" Inherits="WebApplication1.fundCountry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Top Contributors to <span id="s_country" runat="server">the World</span></h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="/img/1F.jpg" class="img-responsive" alt="Contributor 1">
              <h4>Jamie</h4>
              <span class="text-muted">$50,000</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="/img/1M.jpg" class="img-responsive" alt="Contributor 2">
              <h4>Peter</h4>
              <span class="text-muted">$40,000</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="/img/2F.jpg" class="img-responsive" alt="Contributor 3">
              <h4>Anne</h4>
              <span class="text-muted">$20,000</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="/img/2M.png" class="img-responsive" alt="Contributor 4">
              <h4>Mark</h4>
              <span class="text-muted">$10,000</span>
            </div>
          </div>
            
        <style>.spacingform{padding-top:20px;}</style>
        <div class="spacingform"><h2>Donate Now!</h2><form class="form-inline">
            <div class="form-group">
            <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
            <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
            <div class="input-group-addon">.00</div>
            </div>
            </div>
            <button type="submit" class="btn btn-primary">Transfer cash</button>
            </form></div>

          <h2 class="sub-header">Recent Contributions</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Date</th>
                  <th>Type of Contribution</th>
                  <th>Amount</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>Lorem</td>
                  <td>ipsum</td>
                  <td>dolor</td>
                  <td>sit</td>
                </tr>
                <tr>
                  <td>1,002</td>
                  <td>amet</td>
                  <td>consectetur</td>
                  <td>adipiscing</td>
                  <td>elit</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>Integer</td>
                  <td>nec</td>
                  <td>odio</td>
                  <td>Praesent</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>libero</td>
                  <td>Sed</td>
                  <td>cursus</td>
                  <td>ante</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>dapibus</td>
                  <td>diam</td>
                  <td>Sed</td>
                  <td>nisi</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>Nulla</td>
                  <td>quis</td>
                  <td>sem</td>
                  <td>at</td>
                </tr>
                <tr>
                  <td>1,006</td>
                  <td>nibh</td>
                  <td>elementum</td>
                  <td>imperdiet</td>
                  <td>Duis</td>
                </tr>
                <tr>
                  <td>1,007</td>
                  <td>sagittis</td>
                  <td>ipsum</td>
                  <td>Praesent</td>
                  <td>mauris</td>
                </tr>
                <tr>
                  <td>1,008</td>
                  <td>Fusce</td>
                  <td>nec</td>
                  <td>tellus</td>
                  <td>sed</td>
                </tr>
                <tr>
                  <td>1,009</td>
                  <td>augue</td>
                  <td>semper</td>
                  <td>porta</td>
                  <td>Mauris</td>
                </tr>
                <tr>
                  <td>1,010</td>
                  <td>massa</td>
                  <td>Vestibulum</td>
                  <td>lacinia</td>
                  <td>arcu</td>
                </tr>
                <tr>
                  <td>1,011</td>
                  <td>eget</td>
                  <td>nulla</td>
                  <td>Class</td>
                  <td>aptent</td>
                </tr>
                <tr>
                  <td>1,012</td>
                  <td>taciti</td>
                  <td>sociosqu</td>
                  <td>ad</td>
                  <td>litora</td>
                </tr>
                <tr>
                  <td>1,013</td>
                  <td>torquent</td>
                  <td>per</td>
                  <td>conubia</td>
                  <td>nostra</td>
                </tr>
                <tr>
                  <td>1,014</td>
                  <td>per</td>
                  <td>inceptos</td>
                  <td>himenaeos</td>
                  <td>Curabitur</td>
                </tr>
                <tr>
                  <td>1,015</td>
                  <td>sodales</td>
                  <td>ligula</td>
                  <td>in</td>
                  <td>libero</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>

</asp:Content>

   