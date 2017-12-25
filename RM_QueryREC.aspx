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
        <asp:gridview id="gvQueryREC" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="LFA_ID" DataSourceID="sdsQueryREC" PageSize="14" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="LFA_ID" HeaderText="查詢紀錄編號" ReadOnly="True" SortExpression="LFA_ID" />
                <asp:BoundField DataField="LFA_Lat" HeaderText="緯度" SortExpression="LFA_Lat" />
                <asp:BoundField DataField="LFA_Long" HeaderText="經度" SortExpression="LFA_Long" />
                <asp:BoundField DataField="LFA_DateTime" HeaderText="查詢日時" SortExpression="LFA_DateTime" />
                <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="分類添加物編號" SortExpression="ClassingFA_ID" />
                <asp:BoundField DataField="Class_ID" HeaderText="類別編號" SortExpression="Class_ID" />
                <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName" />
                <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName" />
                <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" />
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

