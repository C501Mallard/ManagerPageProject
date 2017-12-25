<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_MostGoWrong.aspx.cs" Inherits="GameREC" %>

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

    <div>
        <h2>&nbsp;最多人答錯</h2>
        <hr />
    </div>
    <div class="row">
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:sqldatasource id="sdsMostGoWrong" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT QzR_No.Quiz_ID, COUNT(QzR_No.QzR_Result) AS QzRcount, QuizBank.Qz_Solution, QuizBank.Qz_Content, QuizBank.Qz_Item1, QuizBank.Qz_Item2, QuizBank.Qz_Item3, QuizBank.Qz_Item4 FROM QzR_No INNER JOIN QuizBank ON QzR_No.Quiz_ID = QuizBank.Quiz_ID WHERE (QzR_No.QzR_Result = 'W') GROUP BY QzR_No.Quiz_ID, QuizBank.Qz_Solution, QuizBank.Qz_Content, QuizBank.Qz_Item1, QuizBank.Qz_Item2, QuizBank.Qz_Item3, QuizBank.Qz_Item4 ORDER BY QzRcount DESC"></asp:sqldatasource>
        <asp:gridview id="gvMostGoWrong" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsMostGoWrong" PageSize="14" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="Quiz_ID" HeaderText="題號" SortExpression="Quiz_ID" />
                <asp:BoundField DataField="QzRcount" HeaderText="答題人數" ReadOnly="True" SortExpression="QzRcount" />
                <asp:BoundField DataField="Qz_Solution" HeaderText="解答" SortExpression="Qz_Solution" />
                <asp:BoundField DataField="Qz_Content" HeaderText="內容" SortExpression="Qz_Content" />
                <asp:BoundField DataField="Qz_Item1" HeaderText="答案1" SortExpression="Qz_Item1" />
                <asp:BoundField DataField="Qz_Item2" HeaderText="答案2" SortExpression="Qz_Item2" />
                <asp:BoundField DataField="Qz_Item3" HeaderText="答案3" SortExpression="Qz_Item3" />
                <asp:BoundField DataField="Qz_Item4" HeaderText="答案4" SortExpression="Qz_Item4" />
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

