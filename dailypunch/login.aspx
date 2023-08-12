<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="dailypunch.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="margin-top: 50px; height: 1063px; width: 1883px;">
        <div class="width" style="width: 99%">
            <div class="admin_title" style="text-align: center; padding: 50px 0px; height: 59px;">
                <img src="imgs/admin_icon.png" style="width: 42px; margin-right: 10px" />
                <span style="color: #fff; background: #005b96; font-size: 26px; padding: 5px 17px; min-width: 183px; vertical-align: top">Admin Login</span>
            </div>
            <div class="login" style="background-image: url('imgs/admin-login-bg.png'); background-repeat: no-repeat; background-position: center; height: 434px; margin: 0 auto; width: 350px">
                <asp:TextBox ID="invalid_text" runat="server" style="margin-left: 89px; margin-top: 239px" BackColor="White" BorderStyle="None" EnableTheming="True" Font-Size="14px" ForeColor="Red" Height="16px" ReadOnly="True" ToolTip="login faild" Width="168px"></asp:TextBox>
               <div style="height: 43px"> <asp:TextBox ID="admin_name" runat="server" Style="margin-left: 72px; margin-top: 10px" Height="30px" Width="198px" AutoPostBack="True" BackColor="#274F80" Font-Bold="False" Font-Size="19px" ForeColor="White" MaxLength="10">Username</asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="admin_name" ForeColor="Red" Height="40px" ToolTip="Field cannot be empty"></asp:RequiredFieldValidator><br></div>
              
               <div style="height: 46px"> <asp:TextBox ID="admin_password" runat="server" Height="30px" Style="margin-left: 72px; margin-top: 7px" Width="198px" BackColor="#274F80" ForeColor="White" MaxLength="11" TextMode="Password" ToolTip="password">pass</asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="admin_password" ForeColor="Red" Height="40px" ToolTip="Field cannot be empty"></asp:RequiredFieldValidator></div>
                <br />
                <asp:Button ID="admin_login" runat="server" Height="36px" Style="margin-left: 127px; margin-top: 29px" Text="LOGIN" Width="97px" BorderStyle="Solid" Font-Bold="True" Font-Underline="True" ForeColor="#274F80" ToolTip="Login" OnClick="admin_login_Click" />
                <br>
            </div>
        </div>
    </section>
</asp:Content>
