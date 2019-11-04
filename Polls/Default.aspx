<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" Runat="Server">
     <li class="nav-item">
        <a style="color: white" class="nav-link cw" href="Authentication.aspx"><strong>Login/Signup</strong></a>
      </li>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container" style="margin-top: 200px; margin-bottom:150px">
        <h1 style="margin-left:40%"> Welcome To Cr polls website</h1>
        <h3 style="margin-left:40%" id="resulttime">
            <a href="Results.aspx" id="results">View Results</a>            
        </h3>
    </div>    
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="Contentjs" Runat="Server">
     <script>
        var t = new Date();
        if (t.getFullYear() == 2019 && t.getMonth() == 10 && t.getHours() >= 17 && t.getHours() < 24) {            
            $("#results").show();
        } else {            
            $("#results").hide();
        }
     </script>
</asp:Content>

