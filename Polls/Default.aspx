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
    </div>    
</asp:Content>


