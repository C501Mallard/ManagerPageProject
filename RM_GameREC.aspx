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
    <asp:gridview id="gvGameREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="QzR_No" DataSourceID="sdsGameREC" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="QzR_No" HeaderText="紀錄編號" ReadOnly="True" SortExpression="QzR_No" />
            <asp:BoundField DataField="QzR_DateTime" HeaderText="紀錄日時" SortExpression="QzR_DateTime" />
            <asp:BoundField DataField="QzR_Result" HeaderText="答題結果" SortExpression="QzR_Result" />
            <asp:BoundField DataField="Quiz_ID" HeaderText="題號" SortExpression="Quiz_ID" />
            <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:gridview>

</form>

</asp:Content>

