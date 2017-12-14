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
        <asp:GridView ID="gvFavoriteREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsFavoriteREC" PageSize="20">
            <Columns>
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="ClassingFA_ID" SortExpression="ClassingFA_ID" />
                <asp:BoundField DataField="Class_ID" HeaderText="Class_ID" SortExpression="Class_ID" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ChtName" HeaderText="ChtName" SortExpression="ChtName" />
                <asp:BoundField DataField="EngName" HeaderText="EngName" SortExpression="EngName" />
                <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
            </Columns>
        </asp:GridView>
    </form>


</asp:Content>

