<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="RM_GameREC.aspx.cs" Inherits="GameREC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
<%--    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("index.aspx");
            }
        });
    </script>--%>

    <div class="row">
        <div class="col-lg-12">
            <h2>&nbsp;遊戲紀錄</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>

<form runat ="server">
    <asp:sqldatasource id= "sdsGameREC" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT * FROM [QzR_No] ORDER BY [QzR_DateTime]"></asp:sqldatasource>
    <asp:gridview id="gvGameREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="QzR_No" DataSourceID="sdsGameREC" PageSize="20">
        <Columns>
            <asp:BoundField DataField="QzR_No" HeaderText="QzR_No" ReadOnly="True" SortExpression="QzR_No" />
            <asp:BoundField DataField="QzR_DateTime" HeaderText="QzR_DateTime" SortExpression="QzR_DateTime" />
            <asp:BoundField DataField="QzR_Result" HeaderText="QzR_Result" SortExpression="QzR_Result" />
            <asp:BoundField DataField="Quiz_ID" HeaderText="Quiz_ID" SortExpression="Quiz_ID" />
            <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
        </Columns>
    </asp:gridview>

</form>

</asp:Content>

