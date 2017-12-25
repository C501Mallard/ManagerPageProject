<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="AM_Admins.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <h2><i class="col-lg-12"></i>&nbsp;管理員</h2>
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
        <asp:sqldatasource id="sdsAdmins" runat="server" connectionstring="<%$ ConnectionStrings:WY-FADBConnectionString %>" deletecommand="DELETE FROM [Users] WHERE [UID] = @UID" insertcommand="INSERT INTO [Users] ([UID], [AccountName], [Auth_Way], [Token], [Gender], [Weight], [Birthday], [JoinDate], [AdminGroup]) VALUES (@UID, @AccountName, @Auth_Way, @Token, @Gender, @Weight, @Birthday, @JoinDate, @AdminGroup)" selectcommand="SELECT * FROM [Users] WHERE ([AdminGroup] = @AdminGroup and [Enabled] = @Enabled) ORDER BY [AccountName]" updatecommand="UPDATE [Users] SET [AccountName] = @AccountName, [Auth_Way] = @Auth_Way, [Token] = @Token, [Gender] = @Gender, [Weight] = @Weight, [Birthday] = @Birthday, [JoinDate] = @JoinDate, [AdminGroup] = @AdminGroup WHERE [UID] = @UID">
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
            <asp:Parameter DefaultValue="Y" Name="AdminGroup" Type="String" />
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
        <asp:gridview id="gvAdmins" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UID" DataSourceID="sdsAdmins" HorizontalAlign="Justify" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="維護資料" ShowEditButton="True">
                <HeaderStyle Wrap="False" /><ItemStyle Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" SortExpression="UID">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="14em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="AccountName" HeaderText="帳號名稱" SortExpression="AccountName">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="14em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Auth_Way" HeaderText="認證方式" SortExpression="Auth_Way">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="14em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Token" HeaderText="IID" SortExpression="Token">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="14em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="性別" SortExpression="Gender">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="3em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Weight" HeaderText="體重" SortExpression="Weight">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="3em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Birthday" HeaderText="生日" SortExpression="Birthday">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="6em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="JoinDate" HeaderText="加入日" SortExpression="JoinDate">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="6em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="AdminGroup" HeaderText="管理者" SortExpression="AdminGroup">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="3em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Enabled" HeaderText="啟用" SortExpression="Enabled">
                                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="3em"></ItemStyle>
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

