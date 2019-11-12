<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="SignUp1.aspx.cs" Inherits="SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="NavbarContent" Runat="Server">
     <li class="nav-item active">
        <a style="color: white" class="nav-link cw" href="Login.aspx"><strong>Login/Signup</strong></a>
      </li>
</asp:Content>
            

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div style="margin-top :70px; margin-bottom :70px">
            
            <div class="row justify-content-center">
                <div class="col-6">
                <div class="row" style="border: 2px solid #f77d74" >
                    <div class="col-12">
                        <div class="row" >                            
                            <div class="col-6" style="background-color :#f77d74">
                                <a href="SignUp1.aspx"><h2 align="center" style ="color: white">SignUp</h2></a>
                            </div>
                            <div class="col-6">
                                <a href="Login.aspx"><h2 align="center" style ="color: grey">Login</h2></a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-12">
                       
                           <div class="form-group">                                                  
                              <asp:Label ID="lbl_username" runat="server" Text="Name"></asp:Label>                  
                              <asp:TextBox ID="username" class="form-control" runat="server" required></asp:TextBox>
                          </div>

                            
                        <div class="form-group">
                          <asp:Label ID="lbl_useremail" runat="server" Text="Email"></asp:Label>                  
                          <asp:TextBox ID="useremail" class="form-control" runat="server" required TextMode="Email"></asp:TextBox>                          
                        </div>

                        <div class="form-group">
                          <asp:Label ID="lbl_userpassword" runat="server" Text="Password"></asp:Label>                  
                          <asp:TextBox ID="userpassword" class="form-control" runat="server" required TextMode="Password"></asp:TextBox>                          
                        </div>

                        <asp:Button ID="Button1"  runat="server" CssClass="btn btn-default" OnClick="submit_btn_click" style="background-color :#f77d74; margin-bottom: 10px" Text="SignUp" />    
                       
                
                    </div>
                </div>               
            </div>
            </div>                    

      </div>
           
</asp:Content>

