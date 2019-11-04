<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

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
                <asp:Image ID="Image1" class="card-img-top" runat="server" ImageUrl="~/Rashtar.png" Height="200" Width="180" />
            </div>
            <div class="col-5 mx-3" style="margin-top: 97px">                                
                    <div style="width: 100%; background-color:#e0c4ba">
                      <div class="myBar"><asp:Label ID="RashtarVotes" class="RV" runat="server" Text=""></asp:Label></div>
                    </div>                                
            </div>      
        </div>


         <div class="row my-5">
             <div class="col-2"></div>
            <div class="col-3">
                <asp:Image ID="Image2" class="card-img-top" runat="server" ImageUrl="~/suryansh.png" Height="200" Width="180" />
            </div>
            <div class="col-5 mx-3" style="margin-top: 97px">                                
                <div style="width: 100%; background-color:#e0c4ba">
                      <div class="myBar"><asp:Label ID="ParulVotes" runat="server" class="PV" Text=""></asp:Label></div>
                 </div>                                                
            </div>      
        </div>
       
    </div>    

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Contentjs" Runat="Server">
    <script>
        document.getElementsByClassName("nav-link")[1].setAttribute("href", "#");
        document.getElementsByClassName("nav-link")[1].textContent = "";

        var str_rashtar_votes = document.getElementsByClassName("RV")[0].innerText;
        var rashtar_votes = parseInt(str_rashtar_votes);
        var str_parul_votes = document.getElementsByClassName("PV")[0].innerText;
        var parul_votes = parseInt(str_parul_votes);

        var ras_per = rashtar_votes * 100 / (rashtar_votes + parul_votes);
        var par_per = parul_votes * 100 / (rashtar_votes + parul_votes);

        document.getElementsByClassName("myBar")[0].style.width = (Math.round(ras_per * 100) / 100).toString() + "%";
        document.getElementsByClassName("myBar")[1].style.width = (Math.round(par_per * 100) / 100).toString() + "%";

        document.getElementsByClassName("RV")[0].innerText = (Math.round(ras_per * 100) / 100).toString() + "%";
        document.getElementsByClassName("PV")[0].innerText = (Math.round(par_per * 100) / 100).toString() + "%";

        if (rashtar_votes > parul_votes) {
            document.getElementById("lblwinner").textContent = "Winner is Rashtar";
        } else if (rashtar_votes == parul_votes) {
            document.getElementById("lblwinner").textContent = "Tie !";
        } else {
            document.getElementById("lblwinner").textContent = "Winner is ";
        }
    </script>
</asp:Content>

