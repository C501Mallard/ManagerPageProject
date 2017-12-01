<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ManagerHomePage.aspx.cs" Inherits="ManagerHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #glyimage {
            font-size: 50px;
        }

        .hang {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <h2><i class="fa fa-home fa-fw"></i>&nbsp;首頁</h2>
        <hr />
    </div>


    <!-- The surrounding HTML is left untouched by FirebaseUI.
         Your app may use that space for branding, controls and other customizations.-->
    <h3>登入</h3>
    
    <div id="firebaseui-auth-container"></div>
</asp:Content>

