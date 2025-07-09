<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BlogDetail.aspx.cs" Inherits="Gallery" %>

<%@ Register Src="~/WebControl/NavBar.ascx" TagName="NavBar" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script src="Angular/Angular.js"></script>
    <script src="Angular/Websitecontroller.js"></script>
    <style type="text/css">
        .bcs {
            font-family: "Montserrat", "Arial" !important;
            font-weight: 200 !important;
            letter-spacing: 0.01em !important;
            text-transform: uppercase;
        }

        section.elementor-section span {
            font-family: "Montserrat", "Arial" !important;
            font-weight: 200 !important;
        }

        @media screen and (max-width: 1600px) {
            header.inner-page .banner-content-wrapper .banner-content p {
                font-family: "Montserrat", "Arial" !important;
                font-weight: 200 !important;
            }

            section.elementor-section p {
                font-family: "Montserrat", "Arial" !important;
                font-weight: 200 !important;
            }
        }

        @media screen and (max-width: 1600px) {
            .for-call {
                display: grid !important;
                position: fixed;
                width: 90% !important;
                grid-template-columns: 50% 50% !important;
            }
        }

        @media (min-width: 1px) and (max-width: 767px) {
            .for-call {
                display: grid !important;
                position: fixed;
                width: 90% !important;
                grid-template-columns: 100% !important;
            }

            .theme-btn2 {
                display: none;
            }
        }

        @media screen and (max-width: 1600px) {
            body .theme-btn2 {
                padding: 11px 18px;
            }
        }

        .theme-btn2 {
            width: 100%;
            font-size: 18px;
            color: #726965;
            border: none;
            padding: 15px 20px;
            border-radius: 50px;
            background-color: transparent;
            -webkit-box-shadow: 15px 16px 20px -10px rgba(0, 0, 0, 0.1) !important;
            font-family: "Montserrat";
            font-weight: 300;
            max-width: 300px;
        }

        a.theme-round-btn {
            width: 100%;
            font-size: 18px;
            color: #726965;
            border: none;
            box-shadow: 15px 16px 20px -10px rgba(0, 0, 0, 0.1) !important;
            -webkit-box-shadow: 15px 16px 20px -10px rgba(0, 0, 0, 0.1) !important;
            -moz-box-shadow: 15px 16px 20px -10px rgba(0, 0, 0, 0.1) !important;
            font-family: "Montserrat";
            font-weight: 300;
            max-width: 300px;
        }

            a.theme-round-btn:hover {
                -webkit-box-shadow: inset -10px -10px 15px rgba(255, 255, 255, 0.5), inset 10px 10px 15px rgba(70, 70, 70, 0.12) !important;
                box-shadow: inset -10px -10px 15px rgba(255, 255, 255, 0.5), inset 10px 10px 15px rgba(70, 70, 70, 0.12) !important;
            }

        .theme-btn2:hover {
            -webkit-box-shadow: inset -10px -10px 15px rgba(255, 255, 255, 0.5), inset 10px 10px 15px rgba(70, 70, 70, 0.12) !important;
            box-shadow: inset -10px -10px 15px rgba(255, 255, 255, 0.5), inset 10px 10px 15px rgba(70, 70, 70, 0.12) !important;
        }


        /* Category Buttons */
        .category-buttons {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            margin-bottom: 60px;
            justify-content: center;
            padding-top:100px!important;
        }

        .category-btn {
            background-color: #8C7B73;
            color: white;
            border: none;
            padding: 10px 16px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 20px;
            white-space: nowrap;
        }

            .category-btn:hover {
                background-color: #6e605a;
            }

        /* Blog */
        .blog-card-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
            padding: 40px 200px; /* 200px left/right on large screen */
            box-sizing: border-box;
        }

        /* Blog card */
        .blog-card {
            background: #fff;
            border: 2px solid #8C7B73;
            border-radius: 15px;
            overflow: hidden;
            width: calc(33.333% - 20px); /* 3 per row */
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .blog-image img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .blog-body {
            padding: 20px;
        }

            .blog-body h3 {
                font-size: 18px;
                font-weight: bold;
                color: #000;
                margin-bottom: 10px;
            }

            .blog-body p {
                font-size: 14px;
                color: #8C7B73;
                margin-bottom: 20px;
                line-height: 1.6;
            }

        .read-more-btn {
            background-color: #8C7B73;
            color: #fff;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 6px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

            .read-more-btn:hover {
                background-color: #8C7B73;
            }

        /* Tablet view: 2 cards */
        @media (max-width: 992px) {
            .blog-card {
                width: calc(50% - 20px);
            }

            .blog-card-wrapper {
                padding: 40px 60px;
            }
        }

        /* Mobile view: 1 card */
        @media (max-width: 576px) {
            .blog-card {
                width: 100%;
            }

            .blog-card-wrapper {
                padding: 20px;
            }
        }
        .ImgSize{
            width:100% !important;
        }
    </style>
    <header class="inner-page">
        <uc:NavBar ID="NavBar1" runat="server" />
        <div class="">
            <div class="">
                <div class="">
                    <asp:Image ID="imgBlog" runat="server" CssClass="img-responsive ImgSize" />
                </div>
            </div>
        </div>
    </header>
    <form id="form1" runat="server">

        <section class="elementor-section elementor-top-section elementor-element elementor-element-f6f7d3b theme-solid-gradiant section-block elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="f6f7d3b" data-element_type="section"  style="background: #cfbbb0 !important;color: black !important;padding-top:130px!important;">
            <asp:Repeater ID="rptBlog" runat="server">
                <ItemTemplate>
                    <div class="elementor-container elementor-column-gap-default">
                        <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-191af90 tratment-left-col" data-id="191af90" data-element_type="column">
                            <div class="elementor-widget-wrap elementor-element-populated">
                                <div class="elementor-element elementor-element-f1dbe96 elementor-widget__width-initial elementor-widget elementor-widget-text-editor" data-id="f1dbe96" data-element_type="widget" data-widget_type="text-editor.default">
                                    <div class="elementor-widget-container">
                                        <h3>
                                            <span><b><%#Eval ("mdName") %></b></span>
                                        </h3>
                                        <p>
                                        <p style="color:black;font-weight:bold"><%#Eval ("mdDescription") %></p>
                                            </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

    </form>

        <section class="home-aboutus-section section-block nitro-lazy" ng-app="Website" style="background-color:#f4f3ef">
        <div class="container" ng-controller="WebEnquiry">
            <br />
            <div class="row about-us-row">
                <div class="col-md-6">
                    <div class="as-col  as-col-1">
                        <div data-aos="fade-up" data-aos-duration="1000">
                            <h3 class="section-heading">Contact us</h3>
                            <span class="shorthead">Re-Engineer Your Inner Strength </span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 mt-3">
                            <input type="text" class="form-control" id="Fname" placeholder="First Name" required>
                        </div>
                        <div class="form-group col-md-6 mt-3">
                            <input type="text" class="form-control" id="Lname" placeholder="Last Name" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 mt-3">
                            <input type="tel" class="form-control" id="phone_number" placeholder="Mobile No" required>
                        </div>
                        <div class="form-group col-md-6 mt-3">
                            <input type="email" class="form-control" id="email" placeholder="Email" required>
                        </div>
                    </div>
                    <button type="submit" ng-click="submit()" class="biotab mt-3">{{jackbtn}}</button>

                </div>
                <div class="col-md-6">
                    <div class="round-img-shadow thumb__stampWrapper" data-aos="fade-up" data-aos-duration="3000">
                        <img alt="Atlantis Dubai" height="387" src="assets/About-us.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjMxNjoxMjM=-1" src="data:image/svg+xml;nitro-empty-id=MjMxNjoxMjM=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNTUwIDM4NyIgd2lkdGg9IjU1MCIgaGVpZ2h0PSIzODciIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

