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


    <div class="container">


        <div>
            <h2><i class="fa fa-home fa-fw"></i>&nbsp;首頁</h2>
            <hr />
        </div>

        <!-- The surrounding HTML is left untouched by FirebaseUI.
         Your app may use that space for branding, controls and other customizations.-->
        <h3>放入幾個統計圖表及重要排名條目</h3>

        <%--<div id="firebaseui-auth-container"></div>--%>
    </div>

    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user)
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("~/index.aspx");
            }
        });
    </script>

</asp:Content>

