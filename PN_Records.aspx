<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="PN_Records.aspx.cs" Inherits="Favorite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <h2><i class="col-lg-12"></i>&nbsp;推播紀錄</h2>
    </div>
    <div class="row">
        <!-- /.col-lg-12 -->
    </div>

    <script>
        //var userLogin;
        //firebase.auth().onAuthStateChanged(function (user) {
        //    if (user) {
        //        userLogin = user;
        //        console.log("User is logined", user);
        //    } else {
        //        userLogin = null;
        //        console.log("User is not logined yet.");
        //        window.location.replace("index.aspx");
        //    }
        //});
    </script>
    <form runat="server">
        <asp:sqldatasource id = "sdsPN_Records" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" SelectCommand="SELECT PushNotification.PN_ID, PushNotification.GroupID, User_Group.GroupName, PushNotification.PN_Title, PushNotification.PN_Content, PushNotification.PN_DateTime FROM PushNotification INNER JOIN User_Group ON PushNotification.GroupID = User_Group.GroupID ORDER BY PushNotification.PN_ID"></asp:sqldatasource>
        <asp:gridview id="gvPN_Records" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PN_ID" DataSourceID="sdsPN_Records">
            <Columns>
                <asp:BoundField DataField="PN_ID" HeaderText="PN_ID" ReadOnly="True" SortExpression="PN_ID" />
                <asp:BoundField DataField="GroupID" HeaderText="GroupID" SortExpression="GroupID" />
                <asp:BoundField DataField="GroupName" HeaderText="GroupName" SortExpression="GroupName" />
                <asp:BoundField DataField="PN_Title" HeaderText="PN_Title" SortExpression="PN_Title" />
                <asp:BoundField DataField="PN_Content" HeaderText="PN_Content" SortExpression="PN_Content" />
                <asp:BoundField DataField="PN_DateTime" HeaderText="PN_DateTime" SortExpression="PN_DateTime" />
            </Columns>
        </asp:gridview>
    </form>


</asp:Content>

