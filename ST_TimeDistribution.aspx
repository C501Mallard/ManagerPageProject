<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ST_TimeDistribution.aspx.cs" Inherits="TimePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h2>&nbsp;時間分布</h2>
        </div>
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
        <div class="container-fluid">
            <div class="row">
                <asp:SqlDataSource ID="sdsTimeDistribution" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT COUNT(LFA_ID) AS Hits, YEAR(LFA_DateTime) AS Year, MONTH(LFA_DateTime) AS Month, CONVERT (varchar, YEAR(LFA_DateTime)) + '/' + CONVERT (varchar, MONTH(LFA_DateTime)) AS YearMonth FROM LookupFA GROUP BY YEAR(LFA_DateTime), MONTH(LFA_DateTime) ORDER BY Year, Month"></asp:SqlDataSource>
                <asp:Chart ID="chTimeDistribution" runat="server" class="col-lg-12" DataSourceID="sdsTimeDistribution" Width="744px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="YearMonth" YValueMembers="Hits" XValueType="String" YValueType="Int32"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </div>
        </div>
    </form>

</asp:Content>

