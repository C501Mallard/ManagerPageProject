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
    <asp:gridview id = "gvFavoriteFA" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsFavoriteFA" HorizontalAlign="Justify" DataKeyNames="Class_ID">
        <Columns>
            <asp:BoundField DataField="ClassingFA_ID" HeaderText="ClassingFA_ID" SortExpression="ClassingFA_ID" />
            <asp:BoundField DataField="Class_ID" HeaderText="Class_ID" SortExpression="Class_ID" ReadOnly="True" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:BoundField DataField="ChtName" HeaderText="ChtName" SortExpression="ChtName" />
            <asp:BoundField DataField="EngName" HeaderText="EngName" SortExpression="EngName" />
            <asp:BoundField DataField="Fans" HeaderText="Fans" SortExpression="Fans" ReadOnly="True" />
        </Columns>
    </asp:gridview>

</form>


</asp:Content>

