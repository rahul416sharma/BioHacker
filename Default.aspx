<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="Angular/Angular.js"></script>
    <script src="Angular/Websitecontroller.js"></script>
    <header class="home my-home lazyloaded">
        <video autoplay="" loop="" muted="" playsinline="" id="myVideo" poster="#">
            <source src="assets/video/lv.mp4" type="video/mp4" />
        </video>
        <div class="nav-wrappper">
            <div class="container">
                <div class="row tr-logo" style="padding-top: 15px;">
                    <div class="col-md-10 header-logo">
                        <a href="default.aspx" class="nitro-lazy">
                            <img src="assets/logo-black.png" class="mt-2">
                        </a>
                    </div>
                </div>
                <div class="row  nav-row" style="margin-top: 15px;">
                    <div class="col-md-12 text-center">
                        <nav>
                            <ul>
                                <li class="main-menu"><a href="AboutUs.aspx" style="font-weight: 1000">About US</a> </li>
                                <li class="main-menu"><a href="concierge/index.html" style="font-weight: 1000">Test</a> </li>
                                <li class="main-menu have-children"><a href="treatments/index.html" style="font-weight: 1000">INVASIVE THERAPIES</a>
                                    <div class="sub-nav" style="overflow-y: scroll">
                                        <div class="sub-nav-child-wrapper">
                                            <ul>
                                                <li class="sub-nav-hav-children"><a href="treatments/index.html#regenerative-wellness" class="btn btn-primary">Vitamin Shots </a>
                                                    <div class="sub-nav-child">
                                                        <ul>
                                                            <li><a href="treatments/detoxification/index.html">Vitamin D Shot </a></li>
                                                            <li><a href="treatments/hyperbaric-oxygen-therapy/index.html">Vitamin B12 Shot </a></li>
                                                            <li><a href="treatments/iv-laser-therapy-in-dubai/index.html">Vitamin C Shot </a></li>
                                                            <li><a href="treatments/iv-vitamin-drips/index.html">Glutathione Shot </a></li>
                                                            <li><a href="treatments/male-wellness/index.html">CoQ Shot </a></li>
                                                            <li><a href="treatments/nad-iv-therapy-in-dubai/index.html">Energy Shot </a></li>
                                                            <li><a href="treatments/nutrition-and-weight-loss-program/index.html">Magnesium Shot </a></li>
                                                            <li><a href="treatments/pemf-therapy-in-dubai/index.html">Antioxidant Shot </a></li>
                                                            <li><a href="treatments/peptide-therapy/index.html">Slim Boost Shots </a></li>
                                                            <li><a href="treatments/red-light-therapy-in-dubai/index.html">Beauty B Shot </a></li>
                                                            <li><a href="treatments/shock-wave-therapy/index.html">Nad + Shot </a></li>
                                                            <li><a href="treatments/stress-management/index.html">Hair Vitamin Shot </a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="sub-nav-hav-children"><a href="treatments/index.html#regenerative-medicine" class="btn btn-primary">Peptide Therapy</a>
                                                    <div class="sub-nav-child" style="overflow: scroll;">
                                                        <ul>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">BPC-157 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">CJC-1295 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">GHK-Cu Copper Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Selank Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Semaglutide / Ozempic / GLP-1 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Ttirzepatide / Mounjaro Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Thymosin Alpha 1 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Thymosin Beta-4 (TB-500) Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Tesamorelin Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">MOTS-c Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">SS-31 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">LL-37 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Cerebrolysin Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Semax PeptideTherapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Kisspeptin Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">VIP (Vasoactive Intestinal ) Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">PE-22-28 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Retatrutide Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Ipamorelin Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">KPV Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">AOD 9604 Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">5-Amino 1mq Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">DSIP Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">IGF-1 LR3 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Epithalon Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Cagrilintide Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">ARA 290 Peptide Therapy </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Humanin Peptide Therapy</a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Thymalin Peptide Therapy</a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">IV drip </a>
                                                    <div class="sub-nav-child" style="overflow: scroll;">
                                                        <ul>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Cold and Flu IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Hair Vitality </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">High Dose Vitamin C </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Jet Lag IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Allergy IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Brain IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Detox IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Gut Health IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Hangover IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Hydration IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Migraine IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">NAD+ IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Performance Booster IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Stress IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Super Immune IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Weight Loss IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Anti Aging IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Energy Booster IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Glamour IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Her Monthly IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Myers Cocktail IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Methylene Blue IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Recover IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">The Biohacker's IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Exosome IV </a></li>
                                                            <li><a href="#" style="letter-spacing: 0 !important;">Stem Cell IV </a></li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Intravenous laser therapy</a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">NAD+ Therapy </a>
                                                </li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Ozone Therapy </a>
                                                </li>
                                                <li class="sub-nav-hav-children">
                                                    <div class="sub-nav-child">
                                                        <ul></ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="main-menu have-children"><a href="programmes/index.html" style="font-weight: 1000">NON-INVASIVE THERAPIES</a>
                                    <div class="sub-nav" style="overflow-y: scroll">
                                        <div class="sub-nav-child-wrapper">
                                            <ul>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Hyperbaric Oxygen Therapy </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Infrared ozone sauna </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Compression therapy </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Photobiomodulation Therapy ( Red Light Therapy) </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Cold Plunge </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Nano Vi </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">FireLight Therapy </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Presso Therapy </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">PEMF Therapy </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Red Light - Panel </a></li>
                                                <li class="sub-nav-hav-children"><a href="#" class="btn btn-primary">Ozone Therapy </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="main-menu has-child"><a href="#" style="font-weight: 1000">FOR YOU</a>
                                    <div class="sub-menu-container-2">
                                        <ul class="sub-menu-2">
                                            <li class=""><a href="pr/index.html" style="font-weight: 1000">PRESS</a></li>
                                            <li class=""><a href="blog/index.html" style="font-weight: 1000">Blog</a></li>
                                            <li class=""><a href="news/index.html" style="font-weight: 1000">News</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="main-menu" style="display: none;"><a href="#" style="font-weight: 1000">Services</a> </li>
                                <li class="main-menu"><a href="contact-us/index.html" style="font-weight: 1000">Book Now</a> </li>

                                <li class="header-call" style="display: none;"><a href="tel:+971045185777">+971 04 5185777</a> </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="mobile-nav-wrapper">
                    <input type="checkbox" id="menyAvPaa" />
                    <label id="burger" for="menyAvPaa">
                        <div></div>
                        <div></div>
                        <div></div>
                    </label>
                    <nav id="mobile-nav">
                        <ul>
                            <li><a href="AboutUs.aspx">About US</a> </li>
                            <li><a href="#">Test</a> </li>
                            <li class="mobile-nav-has-children"><a href="treatments/index.html">INVASIVE THERAPIES<span class="toggle-sub-nav nitro-lazy"></span></a>
                                <div class="mobile-sub-nav-container">
                                    <ul>
                                        <li class="mobile-sub-nav-children"><a href="#">Vitamin Shots</a>
                                            <ul>
                                                <li><a href="treatments/detoxification/index.html">Vitamin D Shot </a></li>
                                                <li><a href="treatments/hyperbaric-oxygen-therapy/index.html">Vitamin B12 Shot </a></li>
                                                <li><a href="treatments/iv-laser-therapy-in-dubai/index.html">Vitamin C Shot </a></li>
                                                <li><a href="treatments/iv-vitamin-drips/index.html">Glutathione Shot </a></li>
                                                <li><a href="treatments/male-wellness/index.html">CoQ Shot </a></li>
                                                <li><a href="treatments/nad-iv-therapy-in-dubai/index.html">Energy Shot </a></li>
                                                <li><a href="treatments/nutrition-and-weight-loss-program/index.html">Magnesium Shot </a></li>
                                                <li><a href="treatments/pemf-therapy-in-dubai/index.html">Antioxidant Shot </a></li>
                                                <li><a href="treatments/peptide-therapy/index.html">Slim Boost Shots </a></li>
                                                <li><a href="treatments/red-light-therapy-in-dubai/index.html">Beauty B Shot </a></li>
                                                <li><a href="treatments/shock-wave-therapy/index.html">Nad + Shot </a></li>
                                                <li><a href="treatments/stress-management/index.html">Hair Vitamin Shot </a></li>
                                            </ul>
                                        </li>
                                        <li class="mobile-sub-nav-children"><a href="#">Intravenous laser therapy</a> </li>
                                        <li class="mobile-sub-nav-children"><a href="#">Peptide Therapy</a>
                                            <ul>
                                                <li><a href="#" style="letter-spacing: 0 !important;">BPC-157 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">CJC-1295 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">GHK-Cu Copper Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Selank Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Semaglutide / Ozempic / GLP-1 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Ttirzepatide / Mounjaro Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Thymosin Alpha 1 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Thymosin Beta-4 (TB-500) Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Tesamorelin Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">MOTS-c Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">SS-31 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">LL-37 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Cerebrolysin Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Semax PeptideTherapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Kisspeptin Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">VIP (Vasoactive Intestinal ) Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">PE-22-28 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Retatrutide Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Ipamorelin Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">KPV Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">AOD 9604 Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">5-Amino 1mq Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">DSIP Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">IGF-1 LR3 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Epithalon Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Cagrilintide Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">ARA 290 Peptide Therapy </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Humanin Peptide Therapy</a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Thymalin Peptide Therapy</a></li>
                                            </ul>
                                        </li>
                                        <li class="mobile-sub-nav-children"><a href="#">IV drip</a>
                                            <ul>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Cold and Flu IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Hair Vitality </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">High Dose Vitamin C </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Jet Lag IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Allergy IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Brain IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Detox IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Gut Health IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Hangover IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Hydration IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Migraine IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">NAD+ IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Performance Booster IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Stress IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Super Immune IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Weight Loss IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Anti Aging IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Energy Booster IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Glamour IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Her Monthly IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Myers Cocktail IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Methylene Blue IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Recover IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">The Biohacker's IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Exosome IV </a></li>
                                                <li><a href="#" style="letter-spacing: 0 !important;">Stem Cell IV </a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="mobile-nav-has-children"><a href="programmes/index.html">NON-INVASIVE THERAPIES<span class="toggle-sub-nav nitro-lazy"></span></a>
                                <div class="mobile-sub-nav-container">
                                    <ul>
                                        <li><a href="#">Hyperbaric Oxygen Therapy </a></li>
                                        <li><a href="#">Infrared ozone sauna </a></li>
                                        <li><a href="#">Compression therapy </a></li>
                                        <li><a href="#">Photobiomodulation Therapy ( Red Light Therapy) </a></li>
                                        <li><a href="#">Cold Plunge </a></li>
                                        <li><a href="#">Nano Vi </a></li>
                                        <li><a href="#">FireLight Therapy </a></li>
                                        <li><a href="#">Presso Therapy </a></li>
                                        <li><a href="#">PEMF Therapy </a></li>
                                        <li><a href="#">Red Light - Panel </a></li>
                                        <li><a href="#">Ozone Therapy </a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="mobile-nav-has-children"><a href="programs/index.html">FOR YOU<span class="toggle-sub-nav nitro-lazy"></span></a>
                                <div class="mobile-sub-nav-container">
                                    <ul>
                                        <li class=""><a href="pr/index.html">PRESS</a></li>
                                        <li class=""><a href="blog/index.html">Blog</a></li>
                                        <li class=""><a href="news/index.html">News</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="contact-us/index.html">Book Now</a> </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container nitro-lazy">
            <div class="banner-content">
                <div class="">
                    <h1 class="banner-heading banner-text mb-3">
                        <div>What is </div>
                        <div>THE BIOHACKER ? </div>
                    </h1>
                    <p class="mb-4 text-center">THE BIOHACKER Wellness Centre is a unique, full service clinic that combines the best of conventional
                        <br />
                        medicine with well-researched and effective integrative health therapies. </p>
                </div>
                <div class="banner-button home-custom-btn">
                    <a href="#bookFormModel" id="bookingModal" class="bookingModal font-custom btn theme-round-btn">Book Appointment </a>
                </div>
            </div>
        </div>
        <a href="#about-us">
            <div class="scroll-down"></div>
        </a>
        <meta name="keywords" content="longevity wellness clinic, longevity clinic, aeon longevity, regenerative Wellness Clinic in Dubai" />
    </header>

    <section id="aboutUsSection" class="home-aboutus-section section-block nitro-lazy">
        <div id="about-us" class="container">
            <div class="row about-us-row">
                <div class="col-md-6">
                    <div class="as-col  as-col-1">
                        <div data-aos="fade-up" data-aos-duration="1000">
                            <span class="small-heading">About Us </span>
                        </div>
                        <p class="hmb" data-aos="fade-up" data-aos-duration="3000">THE BIOHACKER Wellness Centre is a unique, full service clinic that combines the best of conventional medicine with well-researched and effective integrative health therapies. We recognize the importance of conventional medicine but also some of its limitations in dealing with certain conditions.</p>
                        <p class="hmb">It is often not enough to tackle patient symptomology with pharmaceutical medications alone. We believe in using all therapeutic avenues available to us in order to address the root cause of illness and promote healing.</p>
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
                        <p data-aos="fade-up" data-aos-duration="3000">
                            It is our firm belief that when the right strategies are implemented healing is always possible. The key to optimizing health is in understanding each patient’s biochemical individuality and the complex interactions between genetics and the environment. Our physicians are trained in both conventional medicine and cutting-edge integrative health therapies to help every patient find their ‘Healthiest Self’.
				
                        </p>
                        <div class="theme-button-wrapper btn-2-col" data-aos="fade-up" data-aos-duration="3000">
                            <a href="about-us/index.html" class="btn btn-round-primary"><span class="buller-white"></span>Learn More </a>
                            <a class="btn btn-round-soild btn-shadow btn-download" href="#" target="_blank"><span class="buller-white"></span>Download Brochure </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="sectionSpecialistTab" class="section-specialist-tab section-block nitro-lazy">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                <span class="small-heading">BIOHACKER </span>
            </div>
            <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                <h2 class="section-heading">Services </h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <!-- Center everything in this column -->
                <br />
                <br />
                <a href="javascript:void(0);" class="biotab active" onclick="showArticle(1, this)">INVASIVE</a>
                <a href="javascript:void(0);" class="biotab" onclick="showArticle(2, this)">NON -INVASIVE </a>
                <br />
                <br />
            </div>
        </div>
        <article class="tabbed-content tabs-side" id="art_tab1">
            <div class="row">
                <div class="col-md-4">
                    <nav class="tabs" data-aos="fade-up" data-aos-duration="3000">
                        <ul>
                            <li>
                                <a href="#art1_side_tab1" class="active">Vitamin Shots</a>
                            </li>
                            <li>
                                <a href="#art1_side_tab2" class="">Intravenous laser therapy</a>
                            </li>
                            <li>
                                <a href="#art1_side_tab3" class="">Peptide Therapy</a>
                            </li>
                            <li>
                                <a href="#art1_side_tab4" class="">IV drip</a>
                            </li>
                            <li>
                                <a href="#art1_side_tab5" class="">NAD+ Therapy</a>
                            </li>
                            <li>
                                <a href="#art1_side_tab6" class="">Ozone Therapy</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8">
                    <section id="art1_side_tab1" class="item active" data-title="Vitamin Shots">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Vitamin Shots, our specialist" src="assets/Services/Vitamins.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Vitamin Shots</h3>
                                    <p>IM or intramuscular vitamin shots, when injected into the muscle, provide a slow and long-lasting release of the nutrients you need for almost instant results.Vitamin Shots can help enhance your immunity, athletic performance, cognitive function, skin & hair health, and so much more. Formulated specifically for your health goals, our vitamin blends can help take you from nutrient-deficient to energy-abundant.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art1_side_tab2" class="item " data-title="Intravenous laser therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Intravenous laser therapy" src="assets/Services/ivlaser.png" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Intravenous laser therapy</h3>
                                    <p>What is IV Laser Therapy? IV Laser Therapy is an innovative treatment from Germany used to enhance healing from both acute and chronic conditions. IV Laser Therapy is considered a major evolution of external ultraviolet light therapy (UVBI) in terms of safety and strength.There are many uses for IV Laser Therapy as it works through numerous healing mechanisms</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art1_side_tab3" class="item " data-title="Peptide Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="PeptideTherapy" src="assets/Services/PeptideTherapy.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Peptide Therapy</h3>
                                    <p>Peptide therapy is a cutting-edge medical treatment that involves the use of short chains of amino acids called peptides to regulate and enhance specific functions within the body. These peptides act as signaling molecules, helping to stimulate natural processes such as hormone production, tissue repair, immune response, and metabolic regulation.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art1_side_tab4" class="item " data-title="IV Drip">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="IV Drip" src="assets/Services/IV_Drip.png" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>IV Drip</h3>
                                    <p>IV drip therapy, also known as intravenous therapy, is a wellness treatment that delivers fluids, vitamins, minerals, and other nutrients directly into the bloodstream through a vein. This method allows for fast and efficient absorption, bypassing the digestive system and ensuring maximum effectiveness.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art1_side_tab5" class="item " data-title="NAD+ Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="NAD+_Therapy" src="assets/Services/nad_id_therapy.jpg"/>
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>NAD+ Therapy</h3>
                                    <p>Nicotinamide adenine dinucleotide (NAD) is one of the most essential molecules in your body. In fact, you’ll find it in every single cell working in more chemical reactions than any other vitamin-derived molecule. When the molecule has oxidized and becomes inactive, it is known as NADH, but in its active form, it is known as NAD+.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art1_side_tab6" class="item " data-title="Ozone Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Ozone Therapy" src="assets/Services/Ozone_Therapy.webp" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Ozone Therapy</h3>
                                    <p>We offer a superior treatment using the latest technology ozone device, that gently extracts your blood and passes it through an oxidation chamber. Here it is combined with an equal volume of ozone at a high concentration before being passed back into your body.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </article>
        <article class="tabbed-content tabs-side" id="art_tab2" style="display: none">
            <div class="row">
                <div class="col-md-4">
                    <nav class="tabs" data-aos="fade-up" data-aos-duration="3000">
                        <ul>
                            <li>
                                <a href="#art2_side_tab1" class="active">Hyperbaric Oxygen Therapy</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab2" class="">Infrared ozone sauna</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab3" class="">Compression therapy</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab4" class="">Photobiomodulation Therapy ( Red Light Therapy)</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab5" class="">Cold Plunge</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab6" class="">Nano Vi</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab7" class="">FireLight Therapy</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab8" class="">Presso Therapy</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab9" class="">PEMF Therapy</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab10" class="">Red Light - Panel</a>
                            </li>
                            <li>
                                <a href="#art2_side_tab11" class="">Ozone Therapy</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-8">
                    <section id="art2_side_tab1" class="item active" data-title="Hyperbaric Oxygen Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Hyperbaric Oxygen Therapy" src="assets/Services/hyper2.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Hyperbaric Oxygen Therapy</h3>
                                    <p>Mild Hyperbaric Oxygen Therapy (mHbOT) is a non-invasive therapy method that has users lie in a comfortable pressurized chamber while breathing 90% – 95% pure oxygen. The excess pressure causes the blood plasma, all of your cells, tissues, and fluids to hold up to 10 times more oxygen than the normal concentration.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab2" class="item " data-title="Infrared ozone sauna">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Infrared ozone sauna" src="assets/Services/infra_red_ozone_sauna.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Infrared ozone sauna</h3>
                                    <p>The Infrared Ozone Sauna is a tool designed with every patient in mind. From those who are looking to maintain and increase their vitality and health, to those who are facing a chronic illness—the Infrared Ozone Sauna offers a combination of benefits. The Infrared sauna uses infrared light to heat you directly instead of heating the air.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab3" class="item " data-title="Compression therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Compression therapy" src="assets/Services/compression.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Compression therapy</h3>
                                    <p>Compression boots are inflatable sleeves for the legs that fill with air and squeeze your legs to increase blood flow.How does a compression therapy device work? Pneumatic compression devices use an air pump and inflatable garment to create intermittent compression for your legs or other body parts</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab4" class="item " data-title="Photobiomodulation Therapy ( Red Light Therapy)">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Photobiomodulation Therapy ( Red Light Therapy)" src="assets/Services/photobio_therapy.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Photobiomodulation Therapy ( Red Light Therapy)</h3>
                                    <p>Photobiomodulation (PBM) Therapy uses near infrared (NIR) light to reduce pain, inflammation and edema, and drastically aid recovery. PBM therapy works at the cellular level, stimulating repair and normalizing cell function. The therapeutic use of visible and NIR light has been studied for almost forty years.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab5" class="item " data-title="Cold Plunge">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Cold Plunge" src="assets/Services/coldplunge.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Cold Plunge</h3>
                                    <p>There’s science backed data behind cold water immersion helping you feel your absolute best. This is the same technique athletes, celebrities and the top 1% have used for ages, giving them the ability to recover faster, boost their mental health, and so much more.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab6" class="item " data-title="Nano Vi">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Nano Vi" src="assets/Services/nanovitherapy.webp" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Nano Vi</h3>
                                    <p>The NanoVi ™ device produces the same biological signal your body makes to stimulate cellular repair caused by free radical damage. NanoVi dramatically augments your body’s natural repair mechanisms.NanoVi creates a very fine mist of water vapor that has been influenced by an electromagnetic wave that is bio-identical to the body’s internal signal that tells the body to repair and heal.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab7" class="item " data-title="FireLight Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="FireLight Therapy" src="assets/Services/infra_red_ozone_sauna.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>FireLight Therapy</h3>
                                    <p>FireLight Therapy, also known as red light therapy or photobiomodulation, is a non-invasive treatment that uses specific wavelengths of red and near-infrared light to stimulate the body’s natural healing processes. This therapeutic light penetrates the skin and reaches deep into tissues, where it enhances cellular energy (ATP production), reduces inflammation, and promotes regeneration of cells and tissues.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab8" class="item " data-title="Presso Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Presso Therapy" src="assets/Services/infra_red_ozone_sauna.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Presso Therapy</h3>
                                    <p>Pressotherapy is a non-invasive, painless treatment that uses air pressure to stimulate the lymphatic system, improve circulation, and promote detoxification. Often referred to as compression therapy, it involves wearing a specialized suit or sleeves (for legs, arms, or abdomen) that rhythmically inflates and deflates, applying gentle pressure to different parts of the body.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab9" class="item " data-title="PEMF Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="PEMF Therapy" src="assets/Services/infra_red_ozone_sauna.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>PEMF Therapy</h3>
                                    <p>PEMF Therapy (Pulsed Electromagnetic Field Therapy) is a non-invasive wellness treatment that uses low-frequency electromagnetic waves to stimulate and heal the body at a cellular level. By delivering pulsed energy fields to the body, PEMF therapy helps to recharge cells, enhance circulation, reduce inflammation, and promote natural healing processes.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab10" class="item " data-title="Red Light - Panel">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Red Light - Panel" src="assets/Services/infra_red_ozone_sauna.jpg" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Red Light - Panel</h3>
                                    <p>Red Light Panel Therapy is a form of photobiomodulation that uses large, high-powered panels equipped with red and near-infrared LEDs to deliver therapeutic light to the body. These panels emit light at specific wavelengths—typically 630–660 nm (red light) and 810–850 nm (near-infrared light)—which penetrate the skin and underlying tissues to boost cellular energy (ATP production), enhance circulation, and stimulate healing and regeneration.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="art2_side_tab11" class="item " data-title="Ozone Therapy">
                        <div class="item-content">
                            <div class="doctor-content">
                                <div class="doctor-image round-img-shadow" data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1000">
                                    <img alt="Ozone Therapy" src="assets/Services/Ozone_Therapy.webp" />
                                </div>
                                <div class="doctor-desctiption">
                                    <h3>Ozone Therapy</h3>
                                    <p>We offer a superior treatment using the latest technology ozone device, that gently extracts your blood and passes it through an oxidation chamber. Here it is combined with an equal volume of ozone at a high concentration before being passed back into your body.</p>
                                    <div class="theme-button-wrapper">
                                        <a href="#" class="btn btn-round-primary"><span class="buller-white">Learn More </span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </article>
    </div>
</section>

    <section id="" class="section-block section-medical-program">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h4 class="section-heading text-white">The Bio Hacker Approach </h4>
                    <p class="text-center">Bio Hacker offers a full-fledged medical program that entails many steps, starting from the initial assessment to follow-up visits. </p>
                </div>
            </div>
            <div class="row medical-program-keys">
                <div class="col-md-3 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <div class="round-icon">
                        <img alt="Assessments Icon" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/source/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/svg/Assessments.svg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjgwODoxNDI=-1" src="data:image/svg+xml;nitro-empty-id=MjgwODoxNDI=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjUwIDI3MiIgd2lkdGg9IjI1MCIgaGVpZ2h0PSIyNzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="mpk-content">
                        <h3 class="text-white">Assessments </h3>
                        <p>We examine the patient thoroughly to diagnose their condition. </p>
                    </div>
                </div>
                <div class="col-md-3 text-center" data-aos="fade-up" data-aos-duration="1500">
                    <div class="round-icon">
                        <img alt="Treatments Icon" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/source/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/svg/Treatments.svg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjgyMDoxNDE=-1" src="data:image/svg+xml;nitro-empty-id=MjgyMDoxNDE=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjUwIDMzOSIgd2lkdGg9IjI1MCIgaGVpZ2h0PSIzMzkiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="mpk-content">
                        <h3 class="text-white">Treatments </h3>
                        <p>Our doctors create a treatment plan according to the patient’s diagnosis. </p>
                    </div>
                </div>
                <div class="col-md-3 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <div class="round-icon">
                        <img alt="Analysis Icon" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/source/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/svg/Analysis.svg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjgzMjoxMzc=-1" src="data:image/svg+xml;nitro-empty-id=MjgzMjoxMzc=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjUwIDIwOCIgd2lkdGg9IjI1MCIgaGVpZ2h0PSIyMDgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="mpk-content">
                        <h3 class="text-white">Analysis </h3>
                        <p>Patient’s progress is recorded and analyzed by our experienced doctors. </p>
                    </div>
                </div>
                <div class="col-md-3 text-center" data-aos="fade-up" data-aos-duration="3000">
                    <div class="round-icon">
                        <img alt="Follow-up Icon" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/source/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/svg/Follow-up.svg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="Mjg0NDoxMzg=-1" src="data:image/svg+xml;nitro-empty-id=Mjg0NDoxMzg=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjU2IDI3OCIgd2lkdGg9IjI1NiIgaGVpZ2h0PSIyNzgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="mpk-content">
                        <h3 class="text-white">Follow-up </h3>
                        <p>Follow-up visits are arranged for the patient to ensure effective healing. </p>
                    </div>
                </div>
                <div class="col-md-12 text-center download-broucher display-none">
                    <button type="button" class="nitro-lazy">
                        <a href="wp-content/themes/aeon/assets/brochure/Aeon%20Brochure_5Jan.pdf" target="_blank" download>Download Brouchure </a>
                        <img alt="Download Brouchure" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/source/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/svg/download-arrow.svg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="Mjg1NzoxNTk=-1" src="data:image/svg+xml;nitro-empty-id=Mjg1NzoxNTk=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjUwIDIyMSIgd2lkdGg9IjI1MCIgaGVpZ2h0PSIyMjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </button>
                </div>
            </div>
        </div>
    </section>

    <%--<section id="section-services" class="section-services section-block">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <span class="small-heading text-off-white">The BioHacker</span>
                </div>
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <h2 class="section-heading">Treatments </h2>
                </div>
                <div class="com-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <p class="description-container">The BioHacker is Dubai’s newest center for Regenerative Medicine, aesthetics, and wellness. We offer integrated multidisciplinary therapies, and our highly specialized team is dedicated to your well-being. </p>
                </div>
            </div>
            <div class="services-grid carousel-post">
                <div class="col-service" data-aos="fade-up" data-aos-duration="1000">
                    <div class="round-img-shadow zoom-in-transaction-img">
                        <img alt="Regenerative Medicine" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/optimized/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/regenerative-medicine.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjM5NToxNTI=-1" src="data:image/svg+xml;nitro-empty-id=MjM5NToxNTI=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDEwIDMxMCIgd2lkdGg9IjQxMCIgaGVpZ2h0PSIzMTAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="service-content text-center">
                        <h3>Regenerative Medicine </h3>
                        <p>Includes treatments that rejuvenate the body at the cellular level to provide increased vitality, energy and overall wellness treatments. </p>
                    </div>
                </div>
                <div class="col-service" data-aos="fade-up" data-aos-duration="2000">
                    <div class="round-img-shadow zoom-in-transaction-img">
                        <img alt="Regenerative Wellness" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/optimized/rev-7b18e67/theaeonclinic.com/wp-content/uploads/2023/08/red-light-therapy.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjQwNjoxMjA=-1" src="data:image/svg+xml;nitro-empty-id=MjQwNjoxMjA=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDEwIDMxMCIgd2lkdGg9IjQxMCIgaGVpZ2h0PSIzMTAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="service-content text-center">
                        <h3>Regenerative Wellness </h3>
                        <p>Includes treatments that promote overall well-being, using the exceptional benefits of regenerative medicine at the cellular level. </p>
                    </div>
                </div>
                <div class="col-service" data-aos="fade-up" data-aos-duration="3000">
                    <div class="round-img-shadow zoom-in-transaction-img">
                        <img alt="Aesthetics" src="https://cdn-ilcnknh.nitrocdn.com/NBKONdjJxeQhptMalSshnQRSrZvXEiip/assets/images/optimized/rev-7b18e67/theaeonclinic.com/wp-content/themes/aeon/assets/images/advanced-aesthetics.jpg" class="nitro-lazy" decoding="async" nitro-lazy-empty id="MjQxODoxMzk=-1" src="data:image/svg+xml;nitro-empty-id=MjQxODoxMzk=-1;base64,PHN2ZyB2aWV3Qm94PSIwIDAgNDEwIDMxMCIgd2lkdGg9IjQxMCIgaGVpZ2h0PSIzMTAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PC9zdmc+" />
                    </div>
                    <div class="service-content text-center">
                        <h3>Advanced Aesthetics </h3>
                        <p>Includes treatments that can enhance your looks and appearance while boosting your confidence. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>

    <section id="Change" class="home-aboutus-section section-block nitro-lazy">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h3 class="section-heading">Changing Lives at THE BIOHACKER</h3>
                    <br />
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="clarea as-col-1" data-aos="fade-up" data-aos-duration="3000">
                        <img alt="Atlantis Dubai" height="370" width="235" src="assets/1bio.jpeg" class="nitro-lazy" />
                        <img alt="Atlantis Dubai" height="370" width="235" src="assets/2bio.png" class="nitro-lazy" />
                        <img alt="Atlantis Dubai" height="370" width="235" src="assets/3bio.png" class="nitro-lazy" />
                    </div>
                </div>
                <div class="col-md-4">
                    <div>
                        <h5 data-aos="fade-up" data-aos-duration="3000" style="padding-top: 80px">THE BIOHACKER Wellness Centre is a one-of-a-kind full-service facility that blends the best of traditional medicine with well-researched and effective integrative health therapies.
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </section>

    

    <section class="section-specialist-tab section-block nitro-lazy">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <h3 class="section-heading">WHY BIOHACKING</h3>
                    <br />
                </div>
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h5 class="small-heading">PUSh YOUR LIMITS
                        <br />
                        Get Stronger + Think Faster + Live Master</h5>
                    <br />
                    <br />
                </div>
                <div class="com-md-12 text-center" data-aos="fade-up" data-aos-duration="1000">
                    <div class="zoom-in-transaction-img">
                        <img alt="Why Choose" class="img-fluid" src="assets/Untitled.gif" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="" class="section-block section-medical-program">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h2 class="section-heading text-white">The BioHacker Blog</h2>
                    <p class="text-center">Bio Hacker offers a full-fledged medical program that entails many steps, starting from the initial assessment to follow-up visits. </p>
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
                            <h3 class="text-white">Unique mental health issues faced by Gen Z and ways to help them in their healing journey</h3>
                            <p class="text-white">In today's fast-paced digital era, the mental health landscape has signifi cantly impacted Generation Z, or Gen Z, often referred to as the “Digital Natives.”</p>
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
                            <h3 class="text-white">Supercharging Your Immunity: Unveiling Advanced Biohacking Therapies for Optimal Defence with The Biohacker</h3>
                            <p class="text-white">In the fast-paced modern world, safeguarding our immunity is of utmost importance. Biohacking, a revolutionary approach to optimizing human potential, has opened up new avenues for fortifying our body’s natural defense mechanisms. At Biohacker Clinic, we are dedicated to exploring innovative therapies that transcend conventional methods.</p>
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
                            <h3 class="text-white">HBOT Treatment For Autism: A Promising Alternative</h3>
                            <p class="text-white">You may hear mitochondria called “the powerhouse of the cell.” Mitochondria are an energy factory.</p>
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
                            <h3 class="text-white">Elevate Your Sleep with The Biohacker: Unveiling Advanced Biohacking Techniques for Optimal Rest</h3>
                            <p class="text-white">achieving restorative sleep has become an elusive gem. However, the realm of biohacking offers a gateway to a new era of sleep optimization.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="home-aboutus-section section-block nitro-lazy" ng-app="Website">
        <div class="container" ng-controller="WebEnquiry">
            <br />
            <div class="row about-us-row">
                <div class="col-md-6">
                    <div class="as-col  as-col-1">
                        <div data-aos="fade-up" data-aos-duration="1000">
                            <h3 class="section-heading">CONTACT US</h3>
                            <span class="small-heading">RE-ENGINEER YOUR INNER STRENGTH </span>
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

    <section class="testimonials-two section-space section-specialist-tab section-block nitro-lazy">
        <div class="container">
            <div class="row medical-main-content">
                <div class="col-md-12 text-center" data-aos="fade-up" data-aos-duration="2000">
                    <h2 class="section-heading">Review Mirror</h2>
                </div>
            </div>
            <br />
                <div class="testimonials-two__carousel mediox-owl__carousel mediox-owl__carousel--basic-nav owl-carousel owl-theme" data-owl-options='{
            "items": 1,
            "margin": 10,
            "loop": true,
            "smartSpeed": 700,
            "nav": false,
            "navText": ["<span class=\"icon-arrow-left\"></span>","<span class=\"icon-arrow-right\"></span>"],
            "dots": true,
            "autoplay": true,
            "responsive": {
                "0": {
                    "items": 1,
                    "nav": true,
                    "dots": false,
                    "margin": 10
                },
                "992": {
                    "items": 2,
                    "margin": 30
                }
            }
        }'>
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="00ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">Medios health care Company also impressed us with their transpa regarding costs. The initial quote was very low</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Michael G. Ware</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-1.jpg" alt="Michael G. Ware">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">That will be a conversation piece. I'll pay you in a week we don't need to pay upfront i hope you understand</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Mike Hardson</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-2.jpg" alt="Mike Hardson">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="00ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg" style="background-image: url(assets/images/shapes/testimonial-card-bg-2-1.png);"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">Make it pop. Can the black be darker is this the best we can do. Give us a complimentary logo along with the website</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">John R. Green</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-3.jpg" alt="John R. Green">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg" style="background-image: url(assets/images/shapes/testimonial-card-bg-2-1.png);"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">I cant pay you i know you've made thirty iterations but can we go back to the first one that was the best version</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Judith White</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-4.jpg" alt="Judith White">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="00ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">Medios health care Company also impressed us with their transpa regarding costs. The initial quote was very low</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Michael G. Ware</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-1.jpg" alt="Michael G. Ware">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">That will be a conversation piece. I'll pay you in a week we don't need to pay upfront i hope you understand</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Mike Hardson</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-2.jpg" alt="Mike Hardson">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="00ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">Make it pop. Can the black be darker is this the best we can do. Give us a complimentary logo along with the website</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">John R. Green</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-3.jpg" alt="John R. Green">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                    <div class="item wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
                        <div class="testimonial-card-two">
                            <div class="testimonial-card-two__bg"></div>
                            <div class="testimonial-card-two__content">
                                <div class="testimonial-card-two__top">
                                    <span class="testimonial-card-two__quote-icon">
                                        <i class="icon-quote"></i>
                                    </span><!-- /.testimonial-card-two__quote-icon -->
                                </div><!-- /.testimonial-card-two__top -->
                                <p class="testimonial-card-two__quote">I cant pay you i know you've made thirty iterations but can we go back to the first one that was the best version</p><!-- /.testimonial-card-two__quote -->
                                <div class="testimonial-card-two__bottom">
                                    <div class="testimonial-card-two__identity">
                                        <div class="testimonial-card-two__info">
                                            <h4 class="testimonial-card-two__name">Judith White</h4><!-- /.testimonial-card-two__name -->
                                            <p class="testimonial-card-two__designation">managing director</p><!-- /.testimonial-card-two__designation -->
                                        </div><!-- /.testimonial-card-two__info -->
                                    </div><!-- /.testimonial-card-two__identity -->
                                    <div class="testimonial-card-two__image">
                                        <img src="assets/img/testimonial-2-4.jpg" alt="Judith White">
                                    </div><!-- /.testimonial-card-two__image -->
                                </div><!-- /.testimonial-card-two__bottom -->
                            </div><!-- /.testimonial-card-two__content -->
                        </div><!-- /.testimonial-card-two -->
                    </div><!-- /.item -->
                </div><!-- /.testimonials-two__carousel -->
            </div><!-- /.container -->
        </section><!-- /.testimonials-two section-space -->

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const tabs = document.querySelectorAll(".tabs a");
            const items = document.querySelectorAll(".item");

            tabs.forEach(tab => {
                tab.addEventListener("click", function (e) {
                    e.preventDefault();

                    // Remove active class from all tabs and sections
                    tabs.forEach(t => t.classList.remove("active"));
                    items.forEach(item => item.classList.remove("active"));

                    // Add active class to clicked tab
                    this.classList.add("active");

                    // Show the corresponding section
                    const targetId = this.getAttribute("href");
                    const targetSection = document.querySelector(targetId);
                    if (targetSection) {
                        targetSection.classList.add("active");
                    }
                });
            });

            // Show the first tab and content by default
            if (tabs.length > 0) {
                tabs[0].classList.add("active");
                const firstTarget = tabs[0].getAttribute("href");
                const firstSection = document.querySelector(firstTarget);
                if (firstSection) {
                    firstSection.classList.add("active");
                }
            }
        });
    </script>



    <script>
        function showArticle(tabNumber, clickedElement) {
            // Hide all tabs
            document.getElementById("art_tab1").style.display = "none";
            document.getElementById("art_tab2").style.display = "none";

            // Show the selected tab
            document.getElementById("art_tab" + tabNumber).style.display = "block";

            // Update active class on buttons
            document.querySelectorAll('.biotab').forEach(el => el.classList.remove('active'));
            clickedElement.classList.add('active');
        }

    </script>



    <style>
        .horizontal-tabs ul {
            display: flex;
            gap: 10px;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .horizontal-tabs li {
            display: inline-block;
        }

        .horizontal-tabs a {
            display: inline-block;
            padding: 8px 14px;
            text-decoration: none;
            background-color: #f0f0f0;
            border-radius: 4px;
            color: #333;
            transition: background-color 0.3s;
            white-space: nowrap; /* Prevent text from wrapping */
        }

            .horizontal-tabs a.active,
            .horizontal-tabs a:hover {
                background-color: #007bff;
                color: #fff;
            }

        .form-control {
            border-radius: 10px;
            padding: 12px 20px;
            font-size: 15px;
        }
    </style>
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

