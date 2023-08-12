<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="dailypunch.hedge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <style type="text/css">
        .contact_left {
            height: 565px;
            width: 944px;
        }
        
        
        .g-recaptcha {
            width: 473px;
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section style="height: 632px; width: 1815px;">
        <div style="margin-top: 66px;">
            <div class="contact_left" style="float: left">
                <div style="margin-left: 208px">
                    <div style="width: 566px; height: 517px; box-shadow: 0 4px 12px 0 rgba(0, 0, 0, 0.8), 0 6px 20px 0 rgba(0, 0, 0, 0.25);">
                    <div style="margin-left: 47px; padding-top: 24px;">
                        <h4 style="margin-left: 0px; color: #03396c; font-size: 27px; font-weight: 700; margin-bottom: 25px;">Corporate office & Registered Office</h4>
                        <p style="font-size: 22px; color: #088f8f; line-height: 29px; font-weight: 300;">
                            2nd floor, Rajabahadur Mansion,<br>
                            Bldg No:8,<br>
                            Ambalal Doshi Marg,<br>
                            behind Stock Exchange,<br>
                            Fort, Mumbai,<br>
                            Maharashtra 400023.
                        </p>
                    </div>
                        <div style="height: 243px; margin-top: 37px;">
                            <div style="height: 68px">
                                <div style="width: 99px; float: left">
                                    <a href="tel:+917021192791">
                                        <img src="imgs/phone.png" style="margin-left: 18px" /></a>
                                </div>
                                <div style="padding-top: 16px; color: #088f8f; font-size: 27px; font-weight: 400;"><a href="tel:+917021192791" style="text-decoration: none; color: #088f8f;">+91-7021192191</a>,<a href="tel:+917715072800" style="text-decoration: none; color: #088f8f;"> 7715072800</a></div>
                            </div>
                            <div style="height: 68px; margin-top: 8px;">
                                <div style="width: 99px; float: left">
                                    <a href="mailto:info@dailypunch.com">
                                        <img src="imgs/email.png" style="height: 72px; width: 78px; margin-left: 13px" /></a>
                                </div>
                                <div style="padding-top: 16px; color: #088f8f; font-size: 27px; font-weight: 400;"><a href="mailto:info@dailypunch.com" style="text-decoration: none; color: #088f8f;">info@dailypunch.com</a></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div style="padding-top:40px; width: auto;">
                <div style="color: #03396c; font-size: 27px; font-weight: 700; text-decoration: underline;">
                    Inquiry
                </div>
                <div style="vertical-align: top; margin-top: 30px; color: #088f8f; font-size: 22px;">
                    Name*&nbsp;
                    <asp:TextBox ID="client_name" runat="server" BackColor="#adcbe3" ForeColor="#03396c" Height="27px" Width="194px" Font-Size="Medium" AutoCompleteType="DisplayName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="client_name" ErrorMessage="*" SetFocusOnError="True" ForeColor="Red" Height="49px" ToolTip="Mandatory"></asp:RequiredFieldValidator>
                </div>
                <div style="vertical-align: top; margin-top: 19px; color: #088f8f; font-size: 22px;">
                    Email*&nbsp;
                    <asp:TextBox ID="client_email" runat="server" TextMode="Email" BackColor="#adcbe3" ForeColor="#03396c" Height="27px" Width="194px" AutoCompleteType="Email" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="client_email" ErrorMessage="*" SetFocusOnError="True" ForeColor="Red" Height="49px" ToolTip="Mandatory"></asp:RequiredFieldValidator>
                </div>
                <div style="vertical-align: top; margin-top: 19px; color: #088f8f; font-size: 22px;">
                    Mobile&nbsp;
                    <asp:TextBox ID="client_mob" runat="server" BackColor="#adcbe3" ForeColor="#03396c" Height="26px" Width="194px" AutoCompleteType="HomePhone"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="client_mob" Display="Dynamic" ErrorMessage="10 Digit Number" Font-Size="Medium" ForeColor="Red" ToolTip="error" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </div>
                <div style="vertical-align: top; margin-top: 19px; color: #088f8f; font-size: 22px; width: auto;">
                    Comments*
                    <div><asp:TextBox ID="client_comments" runat="server" Rows="7" TextMode="MultiLine" BackColor="#adcbe3" ForeColor="#03396c" Height="97px" Width="340px" Font-Size="18px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="client_comments" ErrorMessage="*" SetFocusOnError="True" ForeColor="Red" Height="49px" ToolTip="Mandatory"></asp:RequiredFieldValidator></div>
                    <br />
                    <asp:ImageButton ID="send_button" runat="server"  Height="41px" ImageUrl="~/imgs/submiy_button.png" Width="40px" OnClick="ImageButton1_Click" />
                </div>
                <div><asp:TextBox ID="recorded_text" runat="server" AutoPostBack="True" Width="291px" BackColor="#CFB53B" BorderColor="#088F8F" ForeColor="#03396C" Visible="False" ReadOnly="True">Our Team will contact you with in 24hrs.</asp:TextBox></div>
                
            </div>
            

        </div>
    </section>

    

</asp:Content>
