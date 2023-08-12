<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about_us.aspx.cs" Inherits="dailypunch.about_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .attachment{
         background-image: url(imgs/about_us.jpg);
         background-repeat: no-repeat;
         background-attachment: fixed;
         height: 720px;
         background-size: cover;
         background-position: left;
         border-top: 10px solid #03396c;
    }
    .fle{
    display: flex;
    justify-content: space-evenly;
    align-content: center;
    
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 1885px; height: 2620px;">
        <div style="height: 450px">
            <div style="margin: 92px 0px 60px 65px">
                <h2 style="font-size: 55px;color: #03396c; line-height: 1.1em; text-align: center;">COMPANY &nbsp;PROFILE</h2>
            </div>
            <div style="height: auto; width: 900px; margin-left: 500px;">
                <p style="line-height: 1.8em; text-align: center; font-size: 20px;"><span>DailyPunch group has a Sharp focus on Value added investments. In a climate where regular risk free return options are limited a synthetic mix of options is what can lead to returns superior to risk free return on a perennial&nbsp;basis. With more than combined experience of 70 years under its belt the management team has seen it all and weathered it all. We feel we have the skills to make opportunities out of adversities. Please look at our comparative&nbsp;return generation for a peek into our philosophy in action.</span></p>
            </div>
        </div>

        <div class="attachment">
            <div style=" padding-top: 20px; display: flex;justify-content: space-evenly;background-color: rgba(0, 151, 58, 0.9); height: 237px; margin-top: 550px;">
                <div style=" text-align: center; font-size: 25px;width: 340px;"><span style="font-size: 75px">50</span><br>Current<br>Universe of Stock</div>
                <div style=" text-align: center; font-size: 25px;width: 340px;"><span style="font-size: 75px">3</span><br>Specialist<br>Industries</div>
                <div style=" text-align: center; font-size: 25px;width: 340px;"><span style="font-size: 75px">12</span><br>Majority<br>Sector Holdings</div>
                <div style=" text-align: center; font-size: 25px;width: 340px;"><span style="font-size: 75px">85</span>%<br>Winning<br> Probability</div>
                <div style=" text-align: center; font-size: 25px;width: 340px;"><span style="font-size: 75px">2</span><br>Experienced<br>Partners</div>
            </div>

        </div>

        <div style="height: 87px"></div>

        <div style="height: 250px">
            <div style="margin: 92px 0px 60px 65px">
                <h2 style="font-size: 55px;color: #03396c; line-height: 1.1em; text-align: center; font-weight: 100;">OUR &nbsp;PORTFOLIO</h2>
            </div>
            <div style="height: auto; width: 900px; margin-left: 500px;">
                <p style="line-height: 1.8em; text-align: center; font-size: 20px;"><span>Principally, we deploy funds in frontline Indian companies. These are well researched ideas where we have a LONG BIAS. The fund generates an absolute monthly income by using strategies like hedged equities and covered calls. The final intent is to capture index returns with capital protection strategy.</span></p>
            </div>
        </div>
        <div style="height: 80px"></div>
        <div class="fle">
            
                <img src="imgs/awp-1.png" style="height: 601px; width: 450px" />
         
            
                <img src="imgs/awp-2.png" style="height: 601px; width: 450px;" />
         
                <img src="imgs/awp-3.png" style="height: 601px; width: 450px; " />
         
        </div>
        <div style="height: 50px"></div>
        <div>
            <footer style="background-color: #2a4d69; height: 420px; width: 1883px;">
                <div style="height: 420px; margin-left: 28px">
                    <div style="color: #e7eff6; font-size: 25px; letter-spacing: 0.3em; font-weight: 600; text-align: left; height: 194px; margin-top: 0px;">
                        For any inquiries,<br>
                        please email us:<br>
                        <br>
                        <div style="font-size: 20px"><a href="mailto:info@dailypunch.com" style="text-decoration: none; color: #e7eff6; text-shadow: 5px 5px 8px rgb(0 0 0);">info@dailypunch.com</a></div>
                    </div>
                    <div style="color: #e7eff6; font-size: 20px; font-weight: 300; text-align: left; height: 34px;">© 2023 by DailyPunch Hedge Fund.-All Rights Reserved.</div>
                </div>
            </footer>
        </div>

        
    </div>
</asp:Content>
