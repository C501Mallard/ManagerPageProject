<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_FavoriteFA.aspx.cs" Inherits="Favorite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <h2><i class="col-lg-12"></i>&nbsp;最多人愛</h2>
    </div>
    <div class="row">
        <!-- /.col-lg-12 -->
    </div>

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

<form runat="server">
    <asp:sqldatasource id = "sdsFavoriteFA" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT FavoriteCFA.ClassingFA_ID, FA_Class.Class_ID, FA_Class.ClassName, ClassingFA.ChtName, ClassingFA.EngName, COUNT(FavoriteCFA.UID) AS Fans FROM FavoriteCFA INNER JOIN ClassingFA ON FavoriteCFA.ClassingFA_ID = ClassingFA.ClassingFA_ID INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID GROUP BY FavoriteCFA.ClassingFA_ID, FA_Class.Class_ID, FA_Class.ClassName, ClassingFA.ChtName, ClassingFA.EngName ORDER BY Fans DESC, FavoriteCFA.ClassingFA_ID, FA_Class.Class_ID"></asp:sqldatasource>
    <asp:gridview id = "gvFavoriteFA" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsFavoriteFA" HorizontalAlign="Justify" DataKeyNames="Class_ID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>
            <asp:BoundField DataField="ClassingFA_ID" HeaderText="分類添加物編號" SortExpression="ClassingFA_ID" />
            <asp:BoundField DataField="Class_ID" HeaderText="類別編號" SortExpression="Class_ID" ReadOnly="True" />
            <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName" />
            <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName" />
            <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" />
            <asp:BoundField DataField="Fans" HeaderText="查詢人數" SortExpression="Fans" ReadOnly="True" />
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

