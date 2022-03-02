<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="suspended-employments.aspx.cs" Inherits="admin_new_employments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <div class="container">
            <div class="row">
                <h2>New employment requests</h2><br />
                <asp:GridView ID="GridView1" CssClass="text-center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="546px" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                        <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                   <asp:TemplateField>
                       <ItemTemplate>
                           <asp:LinkButton CommandName="view" CommandArgument=<%# Bind("username") %> runat="server" ID="cmd1">View More</asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
                         </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView> 
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_recConnectionString %>" SelectCommand="SELECT [username],[name], [district], [phone], [website], [state] FROM [employment_registration] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Suspended" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        </div>

    </div>
</asp:Content>

