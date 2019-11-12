<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .cont {
          position: relative;
          width: 100%;
        }

        .cont2 {
          position: relative;
          width: 100%;
        }

        .cont3 {
          position: relative;
          width: 100%;
        }

        .image {
          display: block;
          width: 100%;
          height: auto;
        }

        .overlay {
          position: absolute;
          bottom: 100%;
          left: 0;
          right: 0;
          background-color: #f77d74;
          overflow: hidden;
          width: 100%;
          height:0;
          transition: .5s ease;
        }

        .cont:hover .overlay {
          bottom: 0;
          height: 100%;
        }

        .cont2:hover .overlay {
          bottom: 0;
          height: 100%;
        }

        .cont3:hover .overlay {
          bottom: 0;
          height: 100%;
        }

        .text {
          color: white;
          font-size: 20px;
          position: absolute;
          top: 50%;
          left: 50%;
          -webkit-transform: translate(-50%, -50%);
          -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
          text-align: center;
        }
    </style>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" Runat="Server">
     <li class="nav-item">
        <a style="color: white" class="nav-link cw" href="Authentication.aspx"><strong>Login/Signup</strong></a>
      </li>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div  class="container" style="margin-top: 15px; margin-bottom:30px">
            <div class="row">
            <div class="col-1"></div>
            <div class="col-3">
                <asp:Image ID="voting_box" runat="server" Height="220" Width="220" ImageUrl="~/vote_box.png" />
            </div>                
            <div class="col-7">
                <h3 style="margin-top:100px">Choose Your Department's Representative</h3>
            </div>
        </div>
        </div>  
    </div>
    
    <div style="margin-bottom: 30px">
        <div class="container">
        <div class="row justify-content-center">
            <div class="col-4">
                <div class="card" style="width: 18rem;">
                  <div class="cont3">
                      <asp:Image ID="chemistry_img" class="card-img-top image" runat="server" Width="100%" Height="200" ImageUrl="~/che.jpg" />
                    <div class="overlay">
                      <div class="text">Chemistry Department</div>
                    </div>
                  </div>                  
                  <div class="card-body">                                       
                    <a href="#" style="background-color:#f77d74" class="btn btn-danger">Start Voting</a>
                  </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;">
                  <div class="cont">
                      <asp:Image ID="cet_img" class="card-img-top image" runat="server" Height="200" ImageUrl="~/cet.jpg" Width="100%" />
                    <div class="overlay">
                      <div class="text">CET Department</div>
                    </div>
                  </div>                  
                  <div class="card-body">                    
                    <a href="Authentication.aspx" style="background-color:#f77d74" class="btn btn-danger">Start Voting</a>
                  </div>
                </div>
            </div>
            <div class="col-4">
                <div class="card" style="width: 18rem;">
                  <div class="cont2">
                      <asp:Image ID="ece_img" class="card-img-top image" runat="server" Width="100%" Height="200" ImageUrl="~/electronics.png" />
                    <div class="overlay">
                      <div class="text">ECE Department</div>
                    </div>
                  </div>                  
                  <div class="card-body">                                       
                    <a href="Login.aspx" style="background-color:#f77d74" class="btn btn-danger">Start Voting</a>
                  </div>
                </div>
            </div>
        </div>        
    </div>
    </div>
</asp:Content>


