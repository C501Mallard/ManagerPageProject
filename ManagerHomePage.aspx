<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="ManagerHomePage.aspx.cs" Inherits="ManagerHomePage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #glyimage {
            font-size: 50px;
        }

        .hang {
            font-size: xx-large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">



    <div>
        <h2><i class="fa fa-home fa-fw"></i>&nbsp;首頁</h2>
    </div>

    <%--    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);
                //document.getElementById("HeadPhoto").src = user.photoURL;
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("index.aspx");
            }
        });

        //alert(document.getElementById("HeadPhoto").src);

    </script>--%>
    <form runat="server">
        <div class="container">
            <header>

            </header>

            <div class="row">
                <asp:SqlDataSource ID="sdsHitsDistribution" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT COUNT(LFA_ID) AS Hits, YEAR(LFA_DateTime) AS Year, MONTH(LFA_DateTime) AS Month, CONVERT (varchar, YEAR(LFA_DateTime)) + '/' + CONVERT (varchar, MONTH(LFA_DateTime)) AS YearMonth FROM LookupFA GROUP BY YEAR(LFA_DateTime), MONTH(LFA_DateTime) ORDER BY Year, Month"></asp:SqlDataSource>
                <asp:Chart ID="chHitsDistribution" runat="server" class="col-lg-4" DataSourceID="sdsHitsDistribution">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="YearMonth" YValueMembers="Hits" XValueType="String" YValueType="Int32"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" BorderWidth="4"></asp:ChartArea>
                    </ChartAreas>
                    <Titles>
                        <asp:Title Font="微軟正黑體, 16.2pt" ForeColor="Teal" Name="Title1" Text="每月搜尋次數">
                        </asp:Title>
                    </Titles>
                    <BorderSkin BorderWidth="4" SkinStyle="Emboss" />
                </asp:Chart>

                <asp:SqlDataSource ID="sdsNewUsersPerMonth" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT COUNT(AccountName) AS NewUsers, YEAR(JoinDate) AS Year, MONTH(JoinDate) AS Month, CONVERT (varchar, YEAR(JoinDate)) + '/' + CONVERT (varchar, MONTH(JoinDate)) AS YearMonth
 FROM Users GROUP BY YEAR(JoinDate), MONTH(JoinDate) ORDER BY Year, Month

"></asp:SqlDataSource>
                <asp:Chart ID="chNewUsersPerMonth" runat="server" class="col-lg-4" DataSourceID="sdsNewUsersPerMonth">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="YearMonth" YValueMembers="NewUsers" XValueType="String" YValueType="Int32"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                    <Titles>
                        <asp:Title Font="微軟正黑體, 16.2pt" ForeColor="DodgerBlue" Name="Title1" Text="每月新用戶數">
                        </asp:Title>
                    </Titles>
                    <BorderSkin BorderWidth="4" SkinStyle="Emboss" />
                </asp:Chart>
            </div>
        </div>
    </form>


</asp:Content>

