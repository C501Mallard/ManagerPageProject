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
        <asp:gridview id="gvMostGoWrong" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sdsMostGoWrong" PageSize="14">
            <Columns>
                <asp:BoundField DataField="Quiz_ID" HeaderText="Quiz_ID" SortExpression="Quiz_ID" />
                <asp:BoundField DataField="QzRcount" HeaderText="QzRcount" ReadOnly="True" SortExpression="QzRcount" />
                <asp:BoundField DataField="Qz_Solution" HeaderText="Qz_Solution" SortExpression="Qz_Solution" />
                <asp:BoundField DataField="Qz_Content" HeaderText="Qz_Content" SortExpression="Qz_Content" />
                <asp:BoundField DataField="Qz_Item1" HeaderText="Qz_Item1" SortExpression="Qz_Item1" />
                <asp:BoundField DataField="Qz_Item2" HeaderText="Qz_Item2" SortExpression="Qz_Item2" />
                <asp:BoundField DataField="Qz_Item3" HeaderText="Qz_Item3" SortExpression="Qz_Item3" />
                <asp:BoundField DataField="Qz_Item4" HeaderText="Qz_Item4" SortExpression="Qz_Item4" />
            </Columns>
        </asp:gridview>
    </form>

</asp:Content>

