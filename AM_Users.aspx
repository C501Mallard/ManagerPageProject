<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="AM_Users.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="col-lg-12">
        <h2>&nbsp;用戶</h2>
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
        <asp:sqldatasource id="sdsUsers" runat="server" connectionstring="<%$ ConnectionStrings:WY-FADBConnectionString %>" deletecommand="DELETE FROM [Users] WHERE [UID] = @UID" insertcommand="INSERT INTO [Users] ([UID], [AccountName], [Auth_Way], [Token], [Gender], [Weight], [Birthday], [JoinDate], [AdminGroup]) VALUES (@UID, @AccountName, @Auth_Way, @Token, @Gender, @Weight, @Birthday, @JoinDate, @AdminGroup)" selectcommand="SELECT * FROM [Users] WHERE ([AdminGroup] = @AdminGroup and [Enabled] = @Enabled) ORDER BY [AccountName]" updatecommand="UPDATE [Users] SET [AccountName] = @AccountName, [Auth_Way] = @Auth_Way, [Token] = @Token, [Gender] = @Gender, [Weight] = @Weight, [Birthday] = @Birthday, [JoinDate] = @JoinDate, [AdminGroup] = @AdminGroup WHERE [UID] = @UID">
        <DeleteParameters>
            <asp:Parameter Name="UID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UID" Type="String" />
            <asp:Parameter Name="AccountName" Type="String" />
            <asp:Parameter Name="Auth_Way" Type="String" />
            <asp:Parameter Name="Token" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="JoinDate" Type="DateTime" />
            <asp:Parameter Name="AdminGroup" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="N" Name="AdminGroup" Type="String" />
            <asp:Parameter DefaultValue="Y" Name="Enabled" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="AccountName" Type="String" />
            <asp:Parameter Name="Auth_Way" Type="String" />
            <asp:Parameter Name="Token" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Birthday" />
            <asp:Parameter Name="JoinDate" Type="DateTime" />
            <asp:Parameter Name="AdminGroup" Type="String" />
            <asp:Parameter Name="UID" Type="String" />
        </UpdateParameters>
    </asp:sqldatasource>
        <asp:gridview id="gvUsers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UID" DataSourceID="sdsUsers" HorizontalAlign="Justify" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="維護資料" ShowEditButton="True">
                <ItemStyle Wrap="False" />
                </asp:CommandField>
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID">
                </asp:BoundField>
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName">
                </asp:BoundField>
                <asp:BoundField DataField="Auth_Way" HeaderText="Auth_Way" SortExpression="Auth_Way">
                </asp:BoundField>
                <asp:BoundField DataField="Token" HeaderText="Token" SortExpression="Token">
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender">
                </asp:BoundField>
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight">
                </asp:BoundField>
                <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday">
                </asp:BoundField>
                <asp:BoundField DataField="JoinDate" HeaderText="JoinDate" SortExpression="JoinDate">
                </asp:BoundField>
                <asp:BoundField DataField="AdminGroup" HeaderText="AdminGroup" SortExpression="AdminGroup">
                </asp:BoundField>
                <asp:BoundField DataField="Enabled" HeaderText="Enabled" SortExpression="Enabled">
                </asp:BoundField>
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

