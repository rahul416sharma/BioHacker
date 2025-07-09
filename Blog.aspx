<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Gallery" %>

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
            /*flex-wrap: wrap;*/
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
            width:20%
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

    </style>
    <header class="inner-page">
        <uc:NavBar ID="NavBar1" runat="server" />
        <div class="container position-relative">
            <div class="banner-content-wrapper">
                <div class="banner-content">
                    <h1 class="banner-heading banner-text">Blog</h1>
                    <div class="row mt-5">
                        <div class="col-md-6">
                            <a href="#" id="bookingButton" class="btn theme-round-btn bcs text-white" style="background: #8C7B73">Book Appointment
                            </a>
                        </div>

                        <!-- Normal Modal Behavior -->
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                let bookingButton = document.getElementById("bookingButton");
                                if (bookingButton) {
                                    bookingButton.addEventListener("click", function (event) {
                                        event.preventDefault(); // Prevent default action
                                        window.location.href = "#bookFormModel"; // Open normal modal
                                    });
                                }
                            });
                        </script>

                        <!-- Normal Modal Behavior -->
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                let bookingButton = document.getElementById("bookingButton");
                                if (bookingButton) {
                                    bookingButton.addEventListener("click", function (event) {
                                        event.preventDefault(); // Prevent default action
                                        window.location.href = "#bookFormModel"; // Open normal modal
                                    });
                                }
                            });
                        </script>







                        <!-- Normal Modal Behavior -->
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                let bookingButton = document.getElementById("bookingButton");
                                if (bookingButton) {
                                    bookingButton.addEventListener("click", function (event) {
                                        event.preventDefault(); // Prevent default action
                                        window.location.href = "#bookFormModel"; // Open normal modal
                                    });
                                }
                            });
                        </script>


                        <div class="col-md-6">
                            <a href="tel:+971045185777" class="btn theme-btn2 bcs text-white" style="margin-left: 10px; background: #8C7B73">Call Us </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <!-- Category Buttons -->
        <div class="category-buttons">
            <asp:Repeater ID="rptCategories" runat="server" OnItemCommand="rptCategories_ItemCommand">
                <ItemTemplate>
                    <asp:Button ID="btnCategory" runat="server" Text='<%# Eval("mtDetailName") %>' CommandName="Filter" 
                        CommandArgument='<%# Eval("mtDetailId") %>' CssClass="category-btn" />
                </ItemTemplate>
            </asp:Repeater>
        </div>


        <div class="blog-card-wrapper">
            <asp:Repeater ID="rptBlogs" runat="server">
                <ItemTemplate>
                    <div class="blog-card">
                        <div class="blog-image">
                           <img src='<%# Eval("mdImage") %>' alt='<%# Eval("mdName") %>' />
                        </div>
                        <div class="blog-body">
                              <a href='BlogDetail.aspx?Id=<%# Eval("mdId") %>'><h3><%# Eval("mdName") %></h3></a>
                              <a href='BlogDetail.aspx?Id=<%# Eval("mdId") %>'><p><%# Eval("Descriptiondata") %></p></a>
                            <a class="read-more-btn" href='BlogDetail.aspx?Id=<%# Eval("mdId") %>'>Read More</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

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

