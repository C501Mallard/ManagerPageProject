<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="RM_QueryREC.aspx.cs" Inherits="SearchREC" %>

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
            <h2>&nbsp;查詢紀錄</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:sqldatasource id="sdsQueryREC" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT LookupFA.LFA_ID, LookupFA.LFA_Lat, LookupFA.LFA_Long, LookupFA.LFA_DateTime, LookupFA.UID, LookupFA.ClassingFA_ID, ClassingFA.Class_ID, FA_Class.ClassName, ClassingFA.ChtName, ClassingFA.EngName FROM LookupFA INNER JOIN Users ON LookupFA.UID = Users.UID INNER JOIN ClassingFA ON LookupFA.ClassingFA_ID = ClassingFA.ClassingFA_ID INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID ORDER BY LookupFA.LFA_ID"></asp:sqldatasource>
        <asp:gridview id="gvQueryREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LFA_ID" DataSourceID="sdsQueryREC" PageSize="14">
            <Columns>
                <asp:BoundField DataField="LFA_ID" HeaderText="LFA_ID" ReadOnly="True" SortExpression="LFA_ID" />
                <asp:BoundField DataField="LFA_Lat" HeaderText="LFA_Lat" SortExpression="LFA_Lat" />
                <asp:BoundField DataField="LFA_Long" HeaderText="LFA_Long" SortExpression="LFA_Long" />
                <asp:BoundField DataField="LFA_DateTime" HeaderText="LFA_DateTime" SortExpression="LFA_DateTime" />
                <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="ClassingFA_ID" SortExpression="ClassingFA_ID" />
                <asp:BoundField DataField="Class_ID" HeaderText="Class_ID" SortExpression="Class_ID" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ChtName" HeaderText="ChtName" SortExpression="ChtName" />
                <asp:BoundField DataField="EngName" HeaderText="EngName" SortExpression="EngName" />
            </Columns>
        </asp:gridview>
    </form>


</asp:Content>

