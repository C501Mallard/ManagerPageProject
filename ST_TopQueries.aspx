<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_TopQueries.aspx.cs" Inherits="TimePage" %>

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
            <h2>&nbsp;熱門搜尋</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:sqldatasource id= "sdsTopQueries" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT ClassingFA.ClassingFA_ID, ClassingFA.Class_ID, FA_Class.ClassName, ClassingFA.ChtName, ClassingFA.EngName, COUNT(LookupFA.LFA_ID) AS QueryTimes FROM ClassingFA INNER JOIN FA_Class ON ClassingFA.Class_ID = FA_Class.Class_ID INNER JOIN LookupFA ON ClassingFA.ClassingFA_ID = LookupFA.ClassingFA_ID GROUP BY ClassingFA.EngName, ClassingFA.ChtName, FA_Class.ClassName, ClassingFA.Class_ID, ClassingFA.ClassingFA_ID HAVING (COUNT(LookupFA.LFA_ID) &lt;&gt; 0) ORDER BY QueryTimes DESC, FA_Class.ClassName, ClassingFA.Class_ID"></asp:sqldatasource>
        <asp:gridview id="gvTopQueries" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClassingFA_ID" DataSourceID="sdsTopQueries" PageSize="14" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="分類添加物編號" ReadOnly="True" SortExpression="ClassingFA_ID" />
                <asp:BoundField DataField="Class_ID" HeaderText="類別編號" SortExpression="Class_ID" />
                <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName" />
                <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName" />
                <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" />
                <asp:BoundField DataField="QueryTimes" HeaderText="查詢日時" ReadOnly="True" SortExpression="QueryTimes" />
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

