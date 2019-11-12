<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Ece_Result.aspx.cs" Inherits="Ece_Result" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .myBar {
          
          height: 25px;
          background-color: #f77d74;
          text-align: center; /* To center it horizontally (if you want) */
          line-height: 30px; /* To center it vertically */
          color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="NavbarContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h3 style="margin-left:40%; margin-top:30px" id="lblwinner"></h3>
    <h3 style="margin-left:40%; margin-top:30px" id="lbl_error"></h3>    

    <div class="container" style="margin-top:15px; margin-bottom: 30px">
        <div class="row my-5">
            <div class="col-2"></div>
            <div class="col-3">
                <asp:Image ID="Image1" class="card-img-top" runat="server" ImageUrl="~/male_icon.png" Height="200" Width="180" />
            </div>
            <div class="col-5 mx-3" style="margin-top: 97px">                                
                    <div style="width: 100%; background-color:#e0c4ba">
                      <div class="myBar"><asp:Label ID="AVotes" class="CA" runat="server" Text=""></asp:Label></div>
                    </div>                                
            </div>      
        </div>


         <div class="row my-5">
             <div class="col-2"></div>
            <div class="col-3">
                <asp:Image ID="Image2" class="card-img-top" runat="server" ImageUrl="~/female_icon.png" Height="180" Width="160" />
            </div>
            <div class="col-5 mx-3" style="margin-top: 97px">                                
                <div style="width: 100%; background-color:#e0c4ba">
                      <div class="myBar"><asp:Label ID="BVotes" runat="server" class="CB" Text=""></asp:Label></div>
                 </div>                                                
            </div>      
        </div>
       
    </div>    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentjs" Runat="Server">
    <script>
        document.getElementsByClassName("nav-link")[1].setAttribute("href", "#");
        document.getElementsByClassName("nav-link")[1].textContent = "";

        var str_A_votes = document.getElementsByClassName("CA")[0].innerText;
        var A_votes = parseInt(str_A_votes);
        var str_B_votes = document.getElementsByClassName("CB")[0].innerText;
        var B_votes = parseInt(str_B_votes);

        var A_per = A_votes * 100 / (A_votes + B_votes);
        var B_per = B_votes * 100 / (A_votes + B_votes);

        document.getElementsByClassName("myBar")[0].style.width = (Math.round(A_per * 100) / 100).toString() + "%";
        document.getElementsByClassName("myBar")[1].style.width = (Math.round(B_per * 100) / 100).toString() + "%";

        document.getElementsByClassName("CA")[0].innerText = (Math.round(A_per * 100) / 100).toString() + "%";
        document.getElementsByClassName("CB")[0].innerText = (Math.round(B_per * 100) / 100).toString() + "%";

        if (A_votes > B_votes) {
            document.getElementById("lblwinner").textContent = "Winner is Candidate A";
        } else if (A_votes == B_votes) {
            document.getElementById("lblwinner").textContent = "Tie !";
        } else {
            document.getElementById("lblwinner").textContent = "Winner is Candidate B";
        }
    </script>
</asp:Content>

