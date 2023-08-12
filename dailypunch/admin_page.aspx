<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_page.aspx.cs" Inherits="dailypunch.admin_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .logout_btn{
            border-radius: 29px;
            
        }
        .logout_btn:hover {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .admin_details{
            border: 4px solid #FED766;
            border-radius: 30px;
            margin-left: 1283px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.39);
        }
        .admin_img{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.39);
            border-radius: 15px;
        }
        .admin_details_style{
            font-size: 22px;
            color: #088F8F;
            
            margin-top: 9px;
        }
        
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 1883px">
        
        <div style="margin-top: 15px; width: 1721px;">
            <div style="display: flex; float: right;">
                
                <div style="width: 49px">
                    <asp:ImageButton CssClass="admin_img" ID="ImageButton1" runat="server" src="imgs/admin_img.png" style="height: 34px; width: 42px" OnClick="ImageButton1_Click"/>
                </div>
                <div style="font-size: larger; width: 102px; height: 36px; display: flex; align-items: center">
                    <asp:Label ID="admin_name" runat="server" Text="Label" Style="padding-top: 3px" Font-Bold="True" ForeColor="#03396C" Font-Size="X-Large"></asp:Label>
                </div>

                <div class="logout_btn" style="border-width: 2px; border-style: solid; color: red; font-size: 30px; width: 121px; text-align: center;">
                    <asp:Button ID="Button1" runat="server" Text="Logout" BorderStyle="None" EnableTheming="False" Font-Size="X-Large" ForeColor="Red" OnClick="Button1_Click" ToolTip="logout" Style="cursor: pointer" />
                </div>
            </div>
        </div>
   
        <div style="height: 40px"></div>

        <asp:Panel ID="Panel1" runat="server" cssclass="admin_details" Visible="false" Height="336px" Width="375px">
          <div>
              <img src="imgs/admin_details.png" style="height: 112px; width: 111px; margin-left: 138px" /></div>
            <div class="admin_details_style">
                <div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Admin-Id :<asp:Label ID="ad_id" runat="server" Text="Label" style="color: #03396C"></asp:Label>
                </div>
                <div style="margin-top: 4px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin-Name :<asp:Label ID="ad_name" runat="server" Text="Label" style="color: #03396C"></asp:Label>
                </div>
                
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password :<asp:TextBox ID="ad_pass" runat="server" BorderStyle="None" Font-Size="20px" ForeColor="#03396C" Height="19px" Width="164px" ReadOnly="True"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="new_label" runat="server" Text="New-Password :" Visible="False"></asp:Label>
                    &nbsp;<asp:TextBox ID="new_pass" runat="server" style="margin-left: 0px" Visible="False" Width="147px" Height="19px"></asp:TextBox>
                
                <div style=" display: flex; justify-content: space-around;">
                    &nbsp; E-Mail :<asp:Label ID="ad_mail" runat="server" Text="Label" style="color: #03396C"></asp:Label>
                </div>
                <div style="height: 43px; margin-top: 16px">
                    <asp:ImageButton ID="update" runat="server" Height="57px" OnClick="UpdateButton_Click" Width="271px" ImageUrl="~/imgs/change_pass.png" style="margin-left: 55px" />
                    <asp:ImageButton ID="done" runat="server" Height="43px" style="margin-right: 5px; margin-left: 135px; margin-top: 3px;" Width="122px" Visible="False" ImageUrl="~/imgs/confirm.png" OnClick="done_Click" />
                </div>
            </div>
        </asp:Panel>
        
        <div style="text-align: center">
            <div>
                <h2 style="text-align: left; margin-left: 40px">Lists of Inquiries:<br />
                </h2>
            </div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="-" ForeColor="#333333" GridLines="None" Height="368px" PageSize="7" ShowHeaderWhenEmpty="True" Style="text-align: center; margin-left: 128px" Width="1580px" AutoGenerateDeleteButton="True" OnRowDeleted="GridView1_RowDeleted" DataKeyNames="id" Font-Size="X-Large"  >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField HeaderText="id" SortExpression="id" DataField="id" InsertVisible="False" ReadOnly="True" >
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" >
                    </asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" >
                    </asp:BoundField>
                    <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" >
                    </asp:BoundField>
                    <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" Font-Size="X-Large" />
                <FooterStyle BackColor="#3366FF" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#088F8F" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" />
                <PagerStyle BackColor="#03396C" ForeColor="White" Height="25px" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [inquiry_table] ORDER BY [id] DESC" DeleteCommand="DELETE FROM [inquiry_table] WHERE [id] = @id" InsertCommand="INSERT INTO [inquiry_table] ([email], [name], [mobile_no], [comments]) VALUES (@email, @name, @mobile_no, @comments)" UpdateCommand="UPDATE [inquiry_table] SET [email] = @email, [name] = @name, [mobile_no] = @mobile_no, [comments] = @comments WHERE [id] = @id" >
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile_no" Type="String" />
                    <asp:Parameter Name="comments" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mobile_no" Type="String" />
                    <asp:Parameter Name="comments" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
