<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_LeaderBoard.aspx.cs" Inherits="LeaderBoard" %>

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
            <h2>&nbsp;經驗值排行</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <form runat="server">
        <asp:SqlDataSource ID="sdsLeaderBoard" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT Users.UID, Users.AccountName, COUNT(QzR_No.QzR_Result) AS Scores FROM QzR_No INNER JOIN Users ON QzR_No.UID = Users.UID WHERE (QzR_No.QzR_Result = 'R') GROUP BY Users.UID, Users.AccountName ORDER BY Scores DESC, Users.AccountName"></asp:SqlDataSource>
        <asp:GridView ID="gvLeaderBoard" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UID" DataSourceID="sdsLeaderBoard" HorizontalAlign="Justify">
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID" />
                <asp:BoundField DataField="AccountName" HeaderText="帳號名稱" SortExpression="AccountName" />
                <asp:BoundField DataField="Scores" HeaderText="總分" ReadOnly="True" SortExpression="Scores" />
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
        </asp:GridView>

    </form>


</asp:Content>

