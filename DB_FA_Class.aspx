<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="DB_FA_Class.aspx.cs" Inherits="FADBPage" %>

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
        <h2><i class="col-lg-12"></i>&nbsp;食品添加物類別</h2>
    </div>
    <div class="row">
        <!-- /.col-lg-12 -->
    </div>

    <form runat="server">
        <asp:SqlDataSource ID="sdsFA_Class" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" DeleteCommand="DELETE FROM [FA_Class] WHERE [Class_ID] = @Class_ID" InsertCommand="INSERT INTO [FA_Class] ([Class_ID], [ClassName], [ClassDiscript]) VALUES (@Class_ID, @ClassName, @ClassDiscript)" SelectCommand="SELECT * FROM [FA_Class] ORDER BY [Class_ID]" UpdateCommand="UPDATE [FA_Class] SET [ClassName] = @ClassName, [ClassDiscript] = @ClassDiscript WHERE [Class_ID] = @Class_ID">
            <DeleteParameters>
                <asp:Parameter Name="Class_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Class_ID" Type="String" />
                <asp:Parameter Name="ClassName" Type="String" />
                <asp:Parameter Name="ClassDiscript" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClassName" Type="String" />
                <asp:Parameter Name="ClassDiscript" Type="String" />
                <asp:Parameter Name="Class_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvFA_Class" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Class_ID" DataSourceID="sdsFA_Class" PageSize="4" HorizontalAlign="Justify">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="資料維護" ShowEditButton="True" >
                <ItemStyle Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="Class_ID" HeaderText="類別碼" ReadOnly="True" SortExpression="Class_ID">
                    <ItemStyle CssClass="fixedwidth" Height="10em" Width="4em" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ClassName" HeaderText="類別名稱" SortExpression="ClassName">
                    <ItemStyle CssClass="fixedwidth" Height="10em" Width="10em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ClassDiscript" HeaderText="類別說明" SortExpression="ClassDiscript">
                    <ItemStyle CssClass="fixedwidth" Height="10em" Width="64em"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Medium" Wrap="False" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Font-Size="Medium" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </form>
</asp:Content>

