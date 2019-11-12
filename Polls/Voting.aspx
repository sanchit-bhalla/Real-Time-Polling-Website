<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Voting.aspx.cs" Inherits="Voting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" Runat="Server">
            <li class="nav-item active">
                  <a style="color: white" class="nav-link cw" href="Default.aspx"><strong>Logout</strong></a>
            </li>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h3 style="margin-left:30%; margin-top:40px"><asp:Label ID="lblname"  runat="server" Text="Label"></asp:Label></h3>

    <h3 style="margin-left:35%; margin-top:30px"><asp:Label ID="lbl_error"  runat="server" Text=""></asp:Label></h3>

    <div class="container" id="candidates" style="margin-top:15px; margin-bottom: 30px">
        <div class="row justify-content-center">
            <div class="col-md-4" style="padding: 5px">
                <div class="card" style="width: 18rem;">
                  <asp:Image ID="Image2" class="card-img-top" runat="server" ImageUrl="~/male_icon.png" Height="220" />
                  <div class="card-body">
                    <h5 class="card-title">Candidate A
                        <span class="mx-4">
                            <asp:ImageButton style="height:30px; width:35px" ID="ImageButton1" OnClick="vote_for_A" runat="server" ImageUrl="~/like.png" />
                        </span>
                    </h5>                                                             
                  </div>
                </div>
            </div>
            <div class="col-md-4" style="padding: 5px">
                <div class="card" style="width: 18rem;">
                  <asp:Image ID="CandidateBImage" class="card-img-top" runat="server" ImageUrl="~/female_icon.png" Height="220" />
                  <div class="card-body">
                    <h5 class="card-title">Candidate B
                        <span class="mx-4">
                            <asp:ImageButton style="height:30px; width:35px" ID="BVote" OnClick="vote_for_B" runat="server" ImageUrl="~/like.png" />
                        </span>
                    </h5>                                        
                  </div>
                </div>
            </div>
        </div>        
    </div>    
    <div id="sorry_img" style="margin-top:50px;margin-left:30%; margin-bottom:150px">
        <div class="row justify-content-center">
            <div class="col-10">
                <div class="row">
                    <div class="col-4">
                        <asp:Image ID="Image1" runat="server" Height="250" Width="200" ImageUrl="~/sorry.jpg" />
                    </div>
                    <div class="col-4">
                        <h3 id="results"></h3>
                    </div>
                </div>
            </div>           
        </div>        
    </div>
    <h3 style="margin-left: 25%; margin-top:250px; margin-bottom:200px" id="before_vote"></h3>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contentjs" Runat="Server">
     <script>
        var t = new Date();
        if (t.getFullYear() == 2019 && t.getMonth() >= 10  && t.getDate() > 13) {
            $("#ContentPlaceHolder1_lblname").hide();
            $('#ContentPlaceHolder1_lbl_error').hide();
            $("#candidates").hide();
            $("#sorry_img").show();
            $("#before_vote").hide();
            document.getElementById("results").innerHTML = '<h3 style="margin-top:90px" id="results"><a href="Ece_Result.aspx" id="results">View Results</a></h3>';
        } else if (t.getFullYear() == 2019 && t.getMonth() == 10 && t.getDate() == 13 ) {
            $("#results").hide();
            $("#sorry_img").hide();
            $("#candidates").show();
            $("#ContentPlaceHolder1_lblname").show();
            $('#ContentPlaceHolder1_lbl_error').show();
            $("#before_vote").hide();         
        } else {            
            $("#results").hide();
            $("#ContentPlaceHolder1_lblname").hide();
            $('#ContentPlaceHolder1_lbl_error').hide();
            $("#sorry_img").hide();
            $("#candidates").hide();
            $("#before_vote").text("Voting starts on 13th November 2019 at 9am");
        }
     </script>
</asp:Content>

