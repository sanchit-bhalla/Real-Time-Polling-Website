<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Authentication.aspx.cs" Inherits="Authentication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" Runat="Server">
     <li class="nav-item">
        <a style="color: white" class="nav-link cw" href="Authentication.aspx"><strong>Login/Signup</strong></a>
      </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div style="margin-top :70px; margin-bottom :70px">
            
            <div class="row justify-content-center">
                <div class="col-6">
                <div class="row" style="border: 2px solid #f77d74">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-6" style="background-color :#f77d74">
                                <a href="Authentication.aspx"><h2 align="center" style ="color: white">Login</h2></a>
                            </div>
                            <div class="col-6">
                                <a href="SignUp.aspx"><h2 align="center" style="color:grey">SignUp</h2></a>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-12">                                               
                            
                        <div class="form-group">
                          <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>                  
                          <asp:TextBox ID="name" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>                          
                           <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ForeColor="Red"
                            ControlToValidate="name" ErrorMessage="Please Enter Your Name" ></asp:RequiredFieldValidator>  
                        </div>

                        <div class="form-group">
                          <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>                  
                          <asp:TextBox ID="password" class="form-control" runat="server" TextMode="Password"></asp:TextBox>                          
                          <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="password"
                            ErrorMessage="Please Enter Your Password" ForeColor="Red"></asp:RequiredFieldValidator>  
                        </div>
                        
                        <asp:Button ID="Button2"  runat="server" CssClass="btn btn-default" OnClick="login_btn_click" style="background-color :#f77d74; margin-bottom: 10px" Text="Login" />    
                       
                
                    </div>
                </div>               
            </div>
            </div>                    

      </div>       

</asp:Content>

