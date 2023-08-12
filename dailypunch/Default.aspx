<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="dailypunch.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .brand_info {
            height: 397px;
        }
        .heading1 {
            margin-top: 28px;
        }
        .contact1 {
            height: 375px;
        }
        .ad_rotator{
            margin-top: 3px;
            margin-left: 3px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 104%; background-color: #088F8F; color: white; height: 33px; font-size: 25px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); z-index: 1">
        <marquee direction="left" onmouseover="this.stop()" onmouseout="this.start()">**The issuer of a company should <b>disclose</b> the number of shares to <b>SEBI</b> by the time of issue of specified securities.</marquee>
    </div>

    <div class="main">
        <div style="height: 20px"></div>

        <div class="container flex" style="height: 500px">
            <div class="text">
                MANAGING<br>
                RISKS.<br>
                DELIVERING<br>
                RESULTS.
            </div>
            <div style="margin-left: 176px">
                <div class="div_right" style="width: 873px; height: 485px; background-image: url('imgs/pic1.png'); background-repeat: no-repeat; right: 10px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.3), 0 6px 20px 0 rgba(0, 0, 0, 0.22);">
                    <div class="overlay">
                        <div class="div_right_text" style="height: 130px; width: 873px;">
                            <br />
                            Punch your order<br>
                            With us.<br>
                            <div class="c_us_button"><a class="c_us" href="contact_us.aspx">CONTACT US</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div style="height: 20px"></div>

        <div id="second_half" style="width: 1857px">
            <div class="brand_info" style="background-color: #E7EFF6">
                <div style="height: 50px"></div>
                <div class="heading1">
                    <h1 style="font-family: 'Bahnschrift Light SemiCondensed'; font-size: 55px; line-height: 1.0em; vertical-align: text-bottom; text-align: center; letter-spacing: 0.06em; height: 33px; color: #03396C;">DailyPunch</h1>
                </div>
                <div>
                    <h1 style="font-family: 'Bahnschrift Light SemiCondensed'; font-size: 30px; line-height: 0.5em; vertical-align: top; text-align: center; letter-spacing: 0.06em; color: #03396C;">HEDGE FUND</h1>
                </div>

                <div style="font-family: 'Microsoft YaHei UI Light'; font-size: 18px; font-weight: 400; color: #011F4B; height: 135px; margin-top: 69px; text-align: center;">
                    We are India’s first Hedged Equities and Synthetic Covered Calls<br>
                    based Alternative Investment Fund .<br>
                    <b>SEBI Registered - Hedge Fund.</b>
                </div>
            </div>

            <div style="height: 20px"></div>

            <div class="slogan2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
                <div class="title">
                    FEARLESS INVESTMENTS IN TOP INDIAN COMPANIES.
                </div>
            </div>

            <div style="height: 20px"></div>

            <div class="about_banner" style="background-repeat: no-repeat; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.7), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            </div>

            <div>
                <div class="contact_img" style="background-image: url('imgs/roll1.jpg'); background-repeat: no-repeat; background-attachment: fixed; height: 550px; background-size: cover; background-position: right">
                    <div>
                        <div style="height: 2px; background-color: #651E3E"></div>
                        <div style="height: 85px; background-color: #651E3E; margin-top: 224px; padding-top: 2px; box-shadow: 0 4px 12px 0 rgba(0, 0, 0, 0.8), 0 6px 20px 0 rgba(0, 0, 0, 0.25);">
                            <div>
                                <div style="height: 61px; font-size: 24px; font-weight: 900; color: #651E3E; background-color: #FED766; text-align: center; letter-spacing: 0.4em; line-height: 60px; margin-top: 11px;">CALCULATED RISK BASED INVESTMENTS.</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div style="height: 50px"></div>

            <div class="exchanges" style="height: 249px; display: flex; justify-content: space-evenly; align-items: center;">
                <div>
                    <a href="https://www.nseindia.com/" target="_blank">
                        <img src="imgs/nse.png" style="height: 185px; width: 419px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" /></a>
                </div>
                <div>
                    <a href="https://www.bseindia.com/?" target="_blank">
                        <img src="imgs/bse.jpeg" style="height: 178px; width: 397px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" /></a>
                </div>
                <div>
                    <a href="https://www.sebi.gov.in/" target="_blank">
                        <img src="imgs/sebi.png" style="height: 105px; width: 610px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);" /></a>
                </div>
            </div>
            <div style="height: 50px"></div>
            <div class="slogan2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.4), 0 6px 20px 0 rgba(0, 0, 0, 0.19)">
                <div class="title">
                    FEARLESS BUT EDUCATED INVESTMENTS
                </div>
            </div>
            <div style="height: 20px"></div>
            <div style="display: flex; height: 616px;">
                <div style="width: 1445px; height: 100%">
                    <div style="height: 86px">
                        <div style=" color: #cfb53b; font-size: 70px; margin-top: 200px; text-align: center;">Growth is a Way of Life at DailyPunch</div>
                    </div>
                    <div style="background-color: #cfb53b; font-size: 40px; color: white; text-align: center; text-shadow: 3px 3px 3px rgb(161 125 11)">
                        When dedicated efforts are put in the right<br>
                        direction, growth is inevitable.
                    </div>
                </div>
                <div>
                    <div style="font-size: 30px; color: #088F8F;text-align: center"><b>Broking Partners</b></div>
                    <div style=" justify-content: space-evenly; align-content: center;height: 580px;width: 470px; background-color: #03396C">
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adv.xml" Target="_blank" Height="565px" Width="455px" CssClass="ad_rotator" />
                    </div>
                </div>

            </div>
            <div>
                <footer style="background-color: #2a4d69; height: 419px; width: 1855px;">
                    <div style="height: 420px; margin-left: 28px">
                        <div style="color: #e7eff6; font-size: 25px; letter-spacing: 0.3em; font-weight: 600; text-align: left; height: 194px; margin-top: 0px;">
                            For any inquiries,<br>
                            please email us:<br>
                            <br>
                            <div style="font-size: 20px;"><a href="mailto:info@dailypunch.com" style="text-decoration: none; color: #e7eff6; text-shadow: 5px 5px 8px rgb(0 0 0);">info@dailypunch.com</a></div>
                        </div>
                        <div style="color: #e7eff6; font-size: 20px; font-weight: 300; text-align: left; height: 34px;">© 2023 by DailyPunch Hedge Fund.-All Rights Reserved.</div>
                    </div>
                </footer>
            </div>
        </div>
    </div>
</asp:Content>
