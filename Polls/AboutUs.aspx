<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat ="Server">
    <style>
        p{
            margin: 20px 20px 20px 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="NavbarContent" runat="server">
    <li class="nav-item active">
        <a style="color: white" class="nav-link cw" href="Authentication.aspx"><strong>Login/Signup</strong></a>
     </li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <h5><p>This is the polling website for electing the Department Representative(DR) for the BTech CSE Department and for ECE Department.</p></h5>
    <h3 style="margin-left:20px;">Department Representatives</h3>
    <h5><p>Department Representatives are elected annually from each department (or, in the case of non-departmentalized Faculties, each Faculty). The role of the Department Representative is to maintain two-way communication between the departmental staff and/or the department head and his or her department.</p></h5>
    <h3 style="margin-left:20px;">About Candidates</h3>
    <h5><p>We have two candidates for CSE Dept: <br />1.Rashtardeep Singh Sandhu, CR 3rd Year<br />2.Suryansh Saini, Sports Coordinator 3rd Year</p></h5>
    <h5><p>We have two candidates for ECE Dept: <br />1.Candidate A<br />2.Candidate B</p></h5>
    <h3 style="margin-left:20px;">Instructions to Students</h3>
    <h5><p> All the students of the department are requested to sign up to this website in their respective departments and then login using their name and University Roll Number(as password).</p></h5>
    </div>
</asp:Content>
