<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="StartVoting.aspx.cs" Inherits="StartVoting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" Runat="Server">
            <li class="nav-item">
                  <a style="color: white" class="nav-link cw" href="Default.aspx"><strong>Logout</strong></a>
            </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h3 style="margin-left:30%; margin-top:40px"><asp:Label ID="lblname"  runat="server" Text="Label"></asp:Label></h3>

    <h3 style="margin-left:35%; margin-top:30px"><asp:Label ID="lbl_error"  runat="server" Text=""></asp:Label></h3>

    <div class="container" style="margin-top:15px; margin-bottom: 30px">
        <div class="row justify-content-center">
            <div class="col-md-4" style="padding: 5px">
                <div class="card" style="width: 18rem;">
                  <asp:Image ID="RashtarImage" class="card-img-top" runat="server" ImageUrl="~/Rashtar.png" Height="220" />
                  <div class="card-body">
                    <h5 class="card-title">Rashtardeep Singh Sandhu</h5>
                    <p class="card-text">CR of CSE B.tech CSE section b...</p>                     
                      <div class="row">
                          <div class="col-3 mx-2">
                              <a href="#" class="btn btn-primary">Agenda</a>
                          </div>
                          <div class="col-3 mx-5">
                              <asp:ImageButton style="height:30px; width:35px" ID="RashtarVote" OnClick="vote_for_rashtar" runat="server" ImageUrl="~/like.png" />
                          </div>
                      </div>                    
                  </div>
                </div>
            </div>
            <div class="col-md-4" style="padding: 5px">
                <div class="card" style="width: 18rem;">
                  <asp:Image ID="ParulImage" class="card-img-top" runat="server" ImageUrl="~/suryansh.png" Height="220" />
                  <div class="card-body">
                    <h5 class="card-title">Suryansh Saini</h5>
                    <p class="card-text">Sports coordinator of B.Tech CSE</p>
                    <div class="row">
                          <div class="col-3 mx-2">
                              <a href="#" class="btn btn-primary">Agenda</a>
                          </div>
                          <div class="col-3 mx-5">
                              <asp:ImageButton style="height:30px; width:35px" ID="ParulVote" OnClick="vote_for_parul" runat="server" ImageUrl="~/like.png" />
                          </div>
                      </div>
                  </div>
                </div>
            </div>
        </div>        
    </div>    
</asp:Content>

