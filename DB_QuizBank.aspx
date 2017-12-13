<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerPage.master" AutoEventWireup="true" CodeFile="DB_QuizBank.aspx.cs" Inherits="QuizBank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script>
        var userLogin;
        firebase.auth().onAuthStateChanged(function (user) {
            if (user) {
                userLogin = user;
                console.log("User is logined", user);
            } else {
                userLogin = null;
                console.log("User is not logined yet.");
                window.location.replace("~/index.aspx");
            }
        });
    </script>

    <div class="row">
        <div class="col-lg-12">
            <h2>&nbsp;題庫</h2>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <form runat="server">
        <asp:SqlDataSource ID="sdsQuizBank" runat="server" ConnectionString="<%$ ConnectionStrings:WY-FADBConnectionString %>" DeleteCommand="DELETE FROM [QuizBank] WHERE [Quiz_ID] = @Quiz_ID" InsertCommand="INSERT INTO [QuizBank] ([Quiz_ID], [Qz_Solution], [Qz_Content], [Qz_Item1], [Qz_Item2], [Qz_Item3], [Qz_Item4]) VALUES (@Quiz_ID, @Qz_Solution, @Qz_Content, @Qz_Item1, @Qz_Item2, @Qz_Item3, @Qz_Item4)" SelectCommand="SELECT * FROM [QuizBank] ORDER BY [Quiz_ID]" UpdateCommand="UPDATE [QuizBank] SET [Qz_Solution] = @Qz_Solution, [Qz_Content] = @Qz_Content, [Qz_Item1] = @Qz_Item1, [Qz_Item2] = @Qz_Item2, [Qz_Item3] = @Qz_Item3, [Qz_Item4] = @Qz_Item4 WHERE [Quiz_ID] = @Quiz_ID">
            <DeleteParameters>
                <asp:Parameter Name="Quiz_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Quiz_ID" Type="String" />
                <asp:Parameter Name="Qz_Solution" Type="String" />
                <asp:Parameter Name="Qz_Content" Type="String" />
                <asp:Parameter Name="Qz_Item1" Type="String" />
                <asp:Parameter Name="Qz_Item2" Type="String" />
                <asp:Parameter Name="Qz_Item3" Type="String" />
                <asp:Parameter Name="Qz_Item4" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Qz_Solution" Type="String" />
                <asp:Parameter Name="Qz_Content" Type="String" />
                <asp:Parameter Name="Qz_Item1" Type="String" />
                <asp:Parameter Name="Qz_Item2" Type="String" />
                <asp:Parameter Name="Qz_Item3" Type="String" />
                <asp:Parameter Name="Qz_Item4" Type="String" />
                <asp:Parameter Name="Quiz_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvQuizBank" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Quiz_ID" DataSourceID="sdsQuizBank" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CaptionAlign="Bottom" CellPadding="3" HorizontalAlign="Justify" PageSize="8">
            <AlternatingRowStyle BackColor="#FFFFCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" HeaderText="資料維護" ControlStyle-CssClass="fixedwidth">
                    <ControlStyle CssClass="fixedwidth"></ControlStyle>

                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" HorizontalAlign="Justify" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="Quiz_ID" HeaderText="題號" ReadOnly="True" SortExpression="Quiz_ID">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="4em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Solution" HeaderText="解答" SortExpression="Qz_Solution">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="4em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Content" HeaderText="題目" SortExpression="Qz_Content">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="26em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Item1" HeaderText="選項1" SortExpression="Qz_Item1">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="11em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Item2" HeaderText="選項2" SortExpression="Qz_Item2">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="11em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Item3" HeaderText="選項3" SortExpression="Qz_Item3">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="11em"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Qz_Item4" HeaderText="選項4" SortExpression="Qz_Item4">
                    <HeaderStyle Wrap="False" />

                    <ItemStyle CssClass="fixedwidth" Height="5em" Width="11em"></ItemStyle>
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
        </asp:GridView>
    </form>
</asp:Content>

