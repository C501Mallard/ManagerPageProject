<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="DB_ClassingFA.aspx.cs" Inherits="FADBPage" %>

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
        <h2><i class="col-lg-12"></i>&nbsp;分類食品添加物</h2>
    </div>
    <div class="row">
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:sqldatasource id="sdsClassingFA" runat="server" connectionstring="<%$ ConnectionStrings:WY-FADBConnectionString %>" deletecommand="DELETE FROM [ClassingFA] WHERE [ClassingFA_ID] = @ClassingFA_ID" insertcommand="INSERT INTO [ClassingFA] ([ClassingFA_ID], [Class_ID], [ChtName], [EngName], [UsageRangeDosageLimit], [UsageLimit], [ClassingFASpec]) VALUES (@ClassingFA_ID, @Class_ID, @ChtName, @EngName, @UsageRangeDosageLimit, @UsageLimit, @ClassingFASpec)" selectcommand="SELECT * FROM [ClassingFA] ORDER BY [ClassingFA_ID]" updatecommand="UPDATE [ClassingFA] SET [Class_ID] = @Class_ID, [ChtName] = @ChtName, [EngName] = @EngName, [UsageRangeDosageLimit] = @UsageRangeDosageLimit, [UsageLimit] = @UsageLimit, [ClassingFASpec] = @ClassingFASpec WHERE [ClassingFA_ID] = @ClassingFA_ID">
            <DeleteParameters>
                <asp:Parameter Name="ClassingFA_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ClassingFA_ID" Type="Int32" />
                <asp:Parameter Name="Class_ID" Type="String" />
                <asp:Parameter Name="ChtName" Type="String" />
                <asp:Parameter Name="EngName" Type="String" />
                <asp:Parameter Name="UsageRangeDosageLimit" Type="String" />
                <asp:Parameter Name="UsageLimit" Type="String" />
                <asp:Parameter Name="ClassingFASpec" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Class_ID" Type="String" />
                <asp:Parameter Name="ChtName" Type="String" />
                <asp:Parameter Name="EngName" Type="String" />
                <asp:Parameter Name="UsageRangeDosageLimit" Type="String" />
                <asp:Parameter Name="UsageLimit" Type="String" />
                <asp:Parameter Name="ClassingFASpec" Type="String" />
                <asp:Parameter Name="ClassingFA_ID" Type="Int32" />
            </UpdateParameters>
        </asp:sqldatasource>
        <asp:gridview id="gvClassingFA" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" backcolor="White" bordercolor="#CCCCCC" borderstyle="None" borderwidth="1px" cellpadding="3" datakeynames="ClassingFA_ID" datasourceid="sdsClassingFA" HorizontalAlign="Justify" PageSize="4">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="資料維護" ShowEditButton="True">
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="ClassingFA_ID" HeaderText="序號" ReadOnly="True" SortExpression="ClassingFA_ID" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="4em" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Class_ID" HeaderText="類別碼" SortExpression="Class_ID" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="4em" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ChtName" HeaderText="中文品名" SortExpression="ChtName" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="10em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="EngName" HeaderText="英文品名" SortExpression="EngName" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="10em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="UsageRangeDosageLimit" HeaderText="使用範圍與劑量限制" SortExpression="UsageRangeDosageLimit" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="40em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="UsageLimit" HeaderText="使用限制" SortExpression="UsageLimit" >
                <HeaderStyle Wrap="False" /> <ItemStyle CssClass="fixedwidth" Height="10em" Width="10em"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Medium" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Font-Size="Medium" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:gridview>
    </form>
</asp:Content>

