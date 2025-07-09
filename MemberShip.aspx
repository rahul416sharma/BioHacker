<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MemberShip.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/WebControl/NavBar.ascx" TagName="NavBar" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
    </style>
    <header class="inner-page">
        <uc:NavBar ID="NavBar1" runat="server" />
        <div class="container position-relative">
            <div class="banner-content-wrapper">
                <div class="banner-content">
                    <h1 class="banner-heading banner-text">MemberShip</h1>
                    <div class="row mt-5">
                        <div class="col-md-6">
                            <a href="#" id="bookingButton" class="btn theme-round-btn bcs text-white" style="background:#8C7B73">Book Appointment
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
                            <a href="tel:+971045185777" class="btn theme-btn2 bcs text-white" style="margin-left: 10px;background:#8C7B73">Call Us </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <div data-elementor-type="wp-post" data-elementor-id="2780" class="elementor elementor-2780">


        <section class="elementor-section elementor-top-section elementor-element elementor-element-a099951 section-block elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="a099951" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-81b3c7a" data-id="81b3c7a" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-57b2bc0 img-round-shadow-2 elementor-widget elementor-widget-image" data-id="57b2bc0" data-element_type="widget" data-widget_type="image.default">
                            <div class="elementor-widget-container">
                                <img loading="lazy" decoding="async" loading="lazy" width="940" height="907" src="assets/Services/key-points.jpg" class="attachment-large size-large wp-image-4676" alt="Service Key Points" sizes="auto, (max-width: 940px) 100vw, 940px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-5bf1c6e treatment-col" data-id="5bf1c6e" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-047a1c1 elementor-widget elementor-widget-text-editor" data-id="047a1c1" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                <h2>CORE OPTIMIZER</h2>
                                <p><b>Unlock Your Baseline Potential</b></p>
                                <p style="color:black; font-weight:400 !important;">
                                    Step into the world of bio-optimization with our Core Optimizer package — designed for those ready
                                    to take charge of their health and performance. This entry-level membership gives you access to
                                    essential wellness therapies that support cellular function, boost energy, and sharpen mental clarity.
                                    Whether you’re recovering from burnout or taking your first step towards better health, Core Optimizer
                                    is your launchpad for a stronger, more balanced you.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="elementor-section elementor-top-section elementor-element elementor-element-f6f7d3b theme-solid-gradiant section-block elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="f6f7d3b" data-element_type="section" style="background: #cfbbb0 !important; color: black !important">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-191af90 tratment-left-col" data-id="191af90" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-f1dbe96 elementor-widget__width-initial elementor-widget elementor-widget-text-editor" data-id="f1dbe96" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container text-white">
                                <h2 style="color:black">ADVANCED BIOHACKER</h2>
                                <p style="color:black"><b>Elevate Your Body and Mind</b></p>
                                <p style="color:black; font-weight:400 !important;">
                                    The Advanced Biohacker package is built for high-performers and health enthusiasts seeking nextlevel transformation. This membership includes a curated blend of advanced diagnostics, recovery
                                    tools, and precision therapies designed to supercharge vitality, cognitive function, and metabolic
                                    health. Ideal for entrepreneurs, athletes, and wellness-driven individuals, it’s your toolkit to break
                                    limits and feel unstoppable.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-8959330" data-id="8959330" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-74df8cd img-round-shadow-2 elementor-widget elementor-widget-image" data-id="74df8cd" data-element_type="widget" data-widget_type="image.default">
                            <div class="elementor-widget-container">
                                <figure class="wp-caption">
                                    <img loading="lazy" decoding="async" loading="lazy" width="940" height="907" src="assets/Services/key-points.jpg" class="attachment-large size-large wp-image-4676" alt="Service Key Points" sizes="auto, (max-width: 940px) 100vw, 940px" />
                                    <figcaption class="widget-image-caption wp-caption-text"></figcaption>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="elementor-section elementor-top-section elementor-element elementor-element-a099951 section-block elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="a099951" data-element_type="section" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-81b3c7a" data-id="81b3c7a" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-57b2bc0 img-round-shadow-2 elementor-widget elementor-widget-image" data-id="57b2bc0" data-element_type="widget" data-widget_type="image.default">
                            <div class="elementor-widget-container">
                                <img loading="lazy" decoding="async" loading="lazy" width="940" height="907" src="assets/Services/key-points.jpg" class="attachment-large size-large wp-image-4676" alt="Service Key Points" sizes="auto, (max-width: 940px) 100vw, 940px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-5bf1c6e treatment-col" data-id="5bf1c6e" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-047a1c1 elementor-widget elementor-widget-text-editor" data-id="047a1c1" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                <h2>
                                    <span style="color: black;"><span style="font-size: 59.2px;">ADVANCED BIOHACKER</span></span>
                                </h2>
                                <p><b>Redefine Aging and Maximize Lifespan</b></p>
                                <p style="color:black; font-weight:400 !important;">
                                    For those committed to peak health and lifespan extension, the Elite Longevity package offers the
                                    most comprehensive and personalized approach to anti-aging and performance enhancement. With
                                    access to cutting-edge treatments, cellular regenerative therapies, and regular biomarker tracking,
                                    this elite membership is the ultimate path to living longer — and better. This is not just wellness, it’s
                                    legacy-building health.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>





    <style>
        .btg {
            color: white !important;
            font-family: "Montserrat", "Arial" !important;
            font-weight: 200 !important;
            letter-spacing: 0.01em !important;
            text-transform: uppercase;
        }

        .treatemetn-categories-section {
            color: white !important;
            background: linear-gradient(90deg, #897b72 50%, #5a4d44 100%);
        }

        .specialist-link {
            width: 65%;
            margin: 0 auto;
            -webkit-box-shadow: rgba(203, 195, 191, 0.2) 2px 2px 4px 0px !important;
            box-shadow: rgba(203, 195, 191, 0.2) 2px 2px 4px 0px !important;
            border-radius: 50px;
            background-color: #f4efec;
            position: relative;
            margin-top: 1rem;
        }

            .specialist-link a {
                height: 40px;
                text-align: center;
                position: relative;
                font-family: "Montserrat";
                padding: 8px;
                -webkit-box-shadow: rgba(203, 195, 191, 0.2) 2px 2px 4px 0px !important;
                box-shadow: rgba(203, 195, 191, 0.2) 2px 2px 4px 0px !important;
                display: block;
                border-radius: 5px;
                background-color: #f4efec;
                -webkit-transition: all 0.5s linear;
                transition: all 0.5s linear;
                color: #726965;
                text-decoration: none;
            }

                .specialist-link a:hover {
                    background-color: #897b72;
                    color: #f4efec;
                }

        .pecialist-list-container.center-aligned {
            display: flex;
            justify-content: center;
        }

            .pecialist-list-container.center-aligned .row {
                display: flex;
                justify-content: center;
                flex-wrap: nowrap;
            }

            .pecialist-list-container.center-aligned .specialist-col {
                display: flex;
                justify-content: center;
                margin: 0 10px;
            }
    </style>


        <section id="" class="section-block section-medical-program" style="background: #cfbbb0 !important;color: black !important">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h2 class="section-heading">The BioHacker Blog</h2>
                    <p class="text-center" style="color: black;">Bio Hacker offers a full-fledged medical program that entails many steps, starting from the initial assessment to follow-up visits. </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center d-flex flex-wrap justify-content-center gap-3 mt-3">
                    <a href="javascript:void(0);" class="biotab tab-btn active" data-target="blog_tab1">Fitness Biohackers</a>
                    <a href="javascript:void(0);" class="biotab tab-btn" data-target="blog_tab2">Sleep Improvment</a>
                    <a href="javascript:void(0);" class="biotab tab-btn" data-target="blog_tab3">Diseases</a>
                    <a href="javascript:void(0);" class="biotab tab-btn" data-target="blog_tab4">Nutrition</a>
                    <br />
                    <br />
                </div>
            </div>
            <div class="container mt-4 tab-content-item" id="blog_tab1">
                <div class="row row about-us-row align-items-center">
                    <!-- Image Column -->
                    <div class="col-12 col-md-6 mb-3 mb-md-0 round-img">
                        <div class="as-col  as-col-1">
                            <img src="assets/blogimg1.png" class="nitro-lazy" alt="Article 1">
                        </div>
                    </div>
                    <!-- Text Column -->
                    <div class="col-12 col-md-6">
                        <div class="as-col">
                            <h3>Unique mental health issues faced by Gen Z and ways to help them in their healing journey</h3>
                            <p>In today's fast-paced digital era, the mental health landscape has signifi cantly impacted Generation Z, or Gen Z, often referred to as the “Digital Natives.”</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mt-4 tab-content-item d-none" id="blog_tab2">
                <div class="row row about-us-row align-items-center">
                    <!-- Image Column -->
                    <div class="col-12 col-md-6 mb-3 mb-md-0 round-img">
                        <div class="as-col  as-col-1">
                            <img src="assets/blogimg2.jpg" class="nitro-lazy" alt="Article 1">
                        </div>
                    </div>
                    <!-- Text Column -->
                    <div class="col-12 col-md-6">
                        <div class="as-col">
                            <h3>Supercharging Your Immunity: Unveiling Advanced Biohacking Therapies for Optimal Defence with The Biohacker</h3>
                            <p>In the fast-paced modern world, safeguarding our immunity is of utmost importance. Biohacking, a revolutionary approach to optimizing human potential, has opened up new avenues for fortifying our body’s natural defense mechanisms. At Biohacker Clinic, we are dedicated to exploring innovative therapies that transcend conventional methods.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mt-4 tab-content-item d-none" id="blog_tab3">
                <div class="row row about-us-row align-items-center">
                    <!-- Image Column -->
                    <div class="col-12 col-md-6 mb-3 mb-md-0 round-img">
                        <div class="as-col  as-col-1">
                            <img src="assets/blogimg3.png" class="nitro-lazy" alt="Article 1">
                        </div>
                    </div>
                    <!-- Text Column -->
                    <div class="col-12 col-md-6">
                        <div class="as-col">
                            <h3>HBOT Treatment For Autism: A Promising Alternative</h3>
                            <p>You may hear mitochondria called “the powerhouse of the cell.” Mitochondria are an energy factory.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mt-4 tab-content-item d-none" id="blog_tab4">
                <div class="row row about-us-row align-items-center">
                    <!-- Image Column -->
                    <div class="col-12 col-md-6 mb-3 mb-md-0 round-img">
                        <div class="as-col  as-col-1">
                            <img src="assets/blogimg4.jpeg" class="nitro-lazy" alt="Article 1">
                        </div>
                    </div>
                    <!-- Text Column -->
                    <div class="col-12 col-md-6">
                        <div class="as-col">
                            <h3>Elevate Your Sleep with The Biohacker: Unveiling Advanced Biohacking Techniques for Optimal Rest</h3>
                            <p>achieving restorative sleep has become an elusive gem. However, the realm of biohacking offers a gateway to a new era of sleep optimization.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="Perso-Epe">
        <div class="container">
            <h3 class="title">Book Your Appointment Today</h3>
            <p class="Sub-title">Experience <asp:label runat="server" ID="lblBook"></asp:label> with BIOHACKHER — available at right in the comfort of your home. Enjoy a complimentary doctor consultation for all at-home sessions. Book your appointment today and start your journey to a healthier, more energized you.</p>
            <a href="/contact-us/" class="bookAppoint">Book Appointment</a>
        </div>
    </div>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const tabButtons = document.querySelectorAll('.tab-btn');
                const tabContents = document.querySelectorAll('.tab-content-item');

                tabButtons.forEach(function (button) {
                    button.addEventListener('click', function (e) {
                        e.preventDefault();

                        // Get the target ID from data-target
                        const target = this.getAttribute('data-target');

                        // Remove 'active' class from all buttons
                        tabButtons.forEach(btn => btn.classList.remove('active'));

                        // Add 'active' class to the clicked button
                        this.classList.add('active');

                        // Hide all tab content by adding 'd-none'
                        tabContents.forEach(content => content.classList.add('d-none'));

                        // Show the selected tab content by removing 'd-none'
                        const selectedTab = document.getElementById(target);
                        if (selectedTab) {
                            selectedTab.classList.remove('d-none');
                        }
                    });
                });
            });

        </script>
    <script src="assets/vendors/jquery/jquery-3.7.0.min.js"></script>
    <script src="assets/vendors/owl-carousel/js/owl.carousel.min.js"></script>
    <script src="assets/vendors/wow/wow.js"></script>
    <script src="assets/js/data.js"></script>

</asp:Content>

