<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/WebControl/NavBar.ascx" TagName="NavBar" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .insta-iframe-scroll {
            display: flex;
            gap: 25px;
            overflow-x: auto;
            padding-bottom: 10px;
            scroll-snap-type: x mandatory;
            -webkit-overflow-scrolling: touch;
        }

        .insta-frame {
            flex: 0 0 auto;
            scroll-snap-align: start;
            width: 320px;
            height: 780px;
            border: none;
        }
    </style>

    <header class="inner-page">

        <uc:NavBar ID="NavBar1" runat="server" />
        <div id="main-page-title" class="container position-relative nitro-lazy">
            <div class="banner-content-wrapper">
                <div class="banner-content">
                    <h1 class="banner-heading banner-text">About Us </h1>
                    <p>The Journey To Self-Healing And Longevity Through Science</p>
                </div>
            </div>
        </div>
    </header>

    <section id="aboutUsSection" class="home-aboutus-section section-block nitro-lazy" style="background-color: #f4f3ef">
        <div id="about-us" class="container">
            <div class="row about-us-row">
                <div class="col-md-6">
                    <div class="as-col  as-col-1">
                        <div data-aos="fade-up" data-aos-duration="1000">
                            <span class="Web-Shortheading" style="font-family: 'Times New Roman'!important; font-weight: bold !important; font-size: 23px!important">About Us </span>
                        </div>
                        <p class="hmb content-web" data-aos="fade-up" data-aos-duration="3000">THE BIOHACKER Wellness Centre is a unique, full service clinic that combines the best of conventional medicine with well-researched and effective integrative health therapies. We recognize the importance of conventional medicine but also some of its limitations in dealing with certain conditions.</p>
                        <p class="hmb content-web">It is often not enough to tackle patient symptomology with pharmaceutical medications alone. We believe in using all therapeutic avenues available to us in order to address the root cause of illness and promote healing.</p>
                        <div class="round-img-shadow thumb__stampWrapper" data-aos="fade-up" data-aos-duration="3000">
                            <img alt="Atlantis Dubai" height="387" src="assets/About-us.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjMxNjoxMjM=-1" src="data:image/svg+xml;nitro-empty-id=MjMxNjoxMjM=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNTUwIDM4NyIgd2lkdGg9IjU1MCIgaGVpZ2h0PSIzODciIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="as-col">
                        <div class="round-img-shadow" data-aos="fade-up" data-aos-duration="3000">
                            <div id="home-video-2">
                                <video autoplay="" loop="" muted="" playsinline="">
                                    <source src="assets/video/The-Biohacker-1.mp4" type="video/mp4" />
                                </video>
                            </div>
                        </div>
                        <p class="content-web" data-aos="fade-up" data-aos-duration="3000">
                            It is our firm belief that when the right strategies are implemented healing is always possible. The key to optimizing health is in understanding each patient’s biochemical individuality and the complex interactions between genetics and the environment. Our physicians are trained in both conventional medicine and cutting-edge integrative health therapies to help every patient find their ‘Healthiest Self’.
				
                        </p>
                        <div class="theme-button-wrapper btn-2-col" data-aos="fade-up" data-aos-duration="3000">
                            <a href="about-us/index.html" class="btn btn-round-primary btn-style" style="color: black"><span class="buller-white"></span>Learn More </a>
                            <a class="btn btn-round-soild btn-shadow btn-download btn-style" href="#" target="_blank"><span class="buller-white"></span>Download Brochure </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="aboutUsMessage" class="about-us-message section-block" style="background: #cfbbb0 !important; color: black !important">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 col-xl-6">
                    <div class="round-img-shadow aboutVideo">
                        <button type="button" data-bs-toggle="modal" data-bs-target="#videoModal" class="nitro-lazy">
                            <img alt="about-video-21" src="assets/Lalit-dharmani.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjE2MDoyMDI=-1" src="data:image/svg+xml;nitro-empty-id=MjE2MDoyMDI=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMTU4NCAxMDk5IiB3aWR0aD0iMTU4NCIgaGVpZ2h0PSIxMDk5IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjwvc3ZnPg==" /></button>
                    </div>
                </div>
                <div class="col-md-8 col-xl-6">
                    <div class="founder-message">
                        <p>
                            <span class="small-heading" style="color: black !important">Our Founder</span>
                        </p>
                        <h2 class="section-heading" style="color: black !important">Lalit Dharmani</h2>
                        <p style="color: black !important">Lalit Dharmani has always been an innovative mindset – always seeing new possibilities and opportunities. He is creative, collaborative and believes in forward thinking!</p>
                        <p style="color: black !important">Fervent in his approach to the health and wellness of himself and after researching anti-aging supplements and holistic approaches to health, he was motivated to pursue his own endeavours. While there are numerous options available in the modern marketplace, including allopathy, acupuncture, homoeopathy, and others – he developed an interest in functional medicine and alternative medicine, which emphasise disease reversal and health optimisation. Additionally, he holds the belief that in order to achieve optimal health, an individual’s biomarkers must be in an optimised state.  As per his assertion, examining blood parameters that fall within the lower normal range does not provide insight into the reports. He also believes that the majority of individuals are committing the gravest error when they disregard the critical nature of diagnosis.   </p>
                        <p style="color: black !important">
                            Regenerative and restorative medicine are subjects that Lalit Dharmani finds personally appealing. Lalit Dharmani’s preference for minimising medication usage prompted him to explore the application of advanced restorative medicine. This region was a late adopter of numerous life-altering remedies that he observed being offered today. Therefore, prioritising his own well-being, he pursued cutting-edge treatments and sought instruction from international authorities before deciding to offer these services and treatments to patients in our region.
                            <br />
                            Without requiring them to travel to New York or Los Angeles, our members/clients receive the most up-to-date and innovative services due to our ongoing development and education. Get an examination or consultation with Lalit Dharmani and discover a holistic approach to your life ahead.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="about-us-message section-block" style="background: #f4f3ef !important;color: black !important">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h2 class="section-heading">The BioHacker Stories</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="py-4">
                    <div class="insta-iframe-scroll">

                        <!-- Post 1 -->
                        <iframe src="https://www.instagram.com/reel/DD6cJ_6oAHG/embed/captioned/?cr=1&v=14&wp=432&rd=https%3A%2F%2Fthebiohacker.in&rp=%2Fabout-us%2F#%7B%22ci%22%3A3%2C%22os%22%3A4765.300000011921%2C%22ls%22%3A82.30000001192093%2C%22le%22%3A736%7D" frameborder="0" allowfullscreen class="insta-frame"></iframe>

                        <!-- Post 2 -->
                        <iframe src="https://www.instagram.com/reel/C-hQkBFIBCK/embed/captioned/?cr=1&v=14&wp=432&rd=https%3A%2F%2Fthebiohacker.in&rp=%2Fabout-us%2F#%7B%22ci%22%3A4%2C%22os%22%3A4783.5%2C%22ls%22%3A82.30000001192093%2C%22le%22%3A736%7D" frameborder="0" allowfullscreen class="insta-frame"></iframe>

                        <!-- Post 3 -->
                        <iframe src="https://www.instagram.com/reel/C6eDjsRSKVM/embed/captioned/?cr=1&v=14&wp=432&rd=https%3A%2F%2Fthebiohacker.in&rp=%2Fabout-us%2F#%7B%22ci%22%3A5%2C%22os%22%3A4803.800000011921%2C%22ls%22%3A82.30000001192093%2C%22le%22%3A736%7D" frameborder="0" allowfullscreen class="insta-frame"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="" class="section-block section-medical-program" style="background: #cfbbb0 !important; color: black !important">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h2 class="section-heading">The BioHacker Blog</h2>
                    <p class="text-center" style="color: black !important">Bio Hacker offers a full-fledged medical program that entails many steps, starting from the initial assessment to follow-up visits. </p>
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

