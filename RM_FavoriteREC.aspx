<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="RM_FavoriteREC.aspx.cs" Inherits="FavoriteREC" %>

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
            <h2>&nbsp;我的最愛</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:SqlDataSource ID="sdsFavoriteREC" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT FavoriteCFA.ClassingFA_ID, FA_Class.Class_ID, FA_Class.ClassName, ClassingFA.ChtName, ClassingFA.EngName, FavoriteCFA.UID FROM FavoriteCFA INNER JOIN ClassingFA ON FavoriteCFA.ClassingFA_ID = ClassingFA.ClassingFA_ID INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID ORDER BY FavoriteCFA.ClassingFA_ID, FA_Class.Class_ID"></asp:SqlDataSource>
        <asp:GridView ID="gvFavoriteREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsFavoriteREC" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="分類食品添加物編號" SortExpression="ClassingFA_ID" />
                <asp:BoundField DataField="Class_ID" HeaderText="類別編號" SortExpression="Class_ID" />
                <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName" />
                <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName" />
                <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" />
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
        </asp:GridView>
    </form>


</asp:Content>

