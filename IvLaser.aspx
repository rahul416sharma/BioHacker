<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IvLaser.aspx.cs" Inherits="Default2" %>

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
        <div class="nav-wrappper">
            <div class="container">
                <div class="row tr-logo" style="padding-top: 15px;">
                    <div class="col-md-10 header-logo">
                        <a href="default.aspx" class="nitro-lazy">
                            <img src="assets/logo-black.png">
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
        <div class="container position-relative">
            <div class="banner-content-wrapper">
                <div class="banner-content">
                    <h1 class="banner-heading banner-text">IV Laser Therapy in Dubai
			</h1>

                    <p>At AEON Clinic, experience the IV Laser treatment benefits for increased metabolism, immunity and overall energy.</p>
                    <div class="row mt-5">
                        <div class="col-md-6">
                            <a href="#" id="bookingButton" class="btn theme-round-btn bcs">Book Appointment
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
                            <a href="tel:+971045185777" class="btn theme-btn2 bcs" style="margin-left: 10px;">Call Us                        </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <div data-elementor-type="wp-post" data-elementor-id="2780" class="elementor elementor-2780">
        <section class="elementor-section elementor-top-section elementor-element elementor-element-f6f7d3b theme-solid-gradiant section-block elementor-section-content-middle elementor-section-boxed elementor-section-height-default elementor-section-height-default" data-id="f6f7d3b" data-element_type="section">
            <div class="elementor-container elementor-column-gap-default">
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-191af90 tratment-left-col" data-id="191af90" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-f1dbe96 elementor-widget__width-initial elementor-widget elementor-widget-text-editor" data-id="f1dbe96" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                <h2>
                                    <span style="color: #ffffff;"><span style="font-size: 59.2px;">What is IV Laser Therapy?</span></span>
                                </h2>
                                <span style="color: #ffffff;">Short for Intravenous laser therapy, IV laser therapy is a groundbreaking treatment involving low-level laser therapy (LLLT). It is delivered intravenously through a small catheter into a vein in the arm, transferring the low-level laser into the bloodstream.</span>

                                <span style="background-color: initial;">
                                    <span style="color: #ffffff;">This laser energy is then absorbed by tissues and cells in the body, increasing circulation and stimulating cellular metabolism. The result is reduced inflammation, quick healing, and improved immune function.</span>
                                </span>

                                <span style="color: #ffffff;">This treatment has proven useful in treating various health conditions, such as chronic pain, neurological ailments, and autoimmune disorders. Patients also experience increased overall health and wellness after getting medical laser therapy in Dubai.</span>
                                <p style="color: #ffffff;">
                                    <span style="background-color: initial;">At AEON, the leading laser therapy clinic in Dubai, we offer the following types of IV laser treatment:</span>
                                </p>

                                <div>
                                    <ul style="color: #ffffff;">
                                        <li>Infrared</li>
                                        <li>Red</li>
                                        <li>Yellow</li>
                                        <li>Blue</li>
                                        <li>Green</li>
                                        <li>UV</li>
                                    </ul>
                                    <p style="color: #ffffff;">Each color activates different cellular functions as it has its own wavelength. However, the ultimate outcome remains the same – improved overall fitness and wellness supported by improved blood circulation, mood health, and energy levels.</p>
                                    <p style="color: #ffffff;">
                                        <span style="color: #ffffff;"><a style="color: #ffffff;" href="../../contact-us/index.html">Book your appointment</a></span> now at AEON Clinic and visit Dubai&#8217;s best IV laser therapy center.
								
                                    </p>
                                    <i><span style="color: #ffffff;">Attested By: Dr. </span><span style="background-color: initial;"><span style="color: #ffffff;">Basanta Khatry-Chhetry</span></span></i>
                                    <p style="color: #ffffff;"></p>

                                </div>
                                <!--<a href="#">Read more</a>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-8959330" data-id="8959330" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-74df8cd img-round-shadow-2 elementor-widget elementor-widget-image" data-id="74df8cd" data-element_type="widget" data-widget_type="image.default">
                            <div class="elementor-widget-container">
                                <figure class="wp-caption">
                                    <img loading="lazy" decoding="async" loading="lazy" width="940" height="907" src="../../wp-content/uploads/2023/05/what-is-IV-laser-therapy.jpg" class="attachment-large size-large wp-image-4676" alt="IV laser therapy procedure at Aeon Clinic" srcset="https://theaeonclinic.com/wp-content/uploads/2023/05/what-is-IV-laser-therapy.jpg 940w, https://theaeonclinic.com/wp-content/uploads/2023/05/what-is-IV-laser-therapy-300x289.jpg 300w, https://theaeonclinic.com/wp-content/uploads/2023/05/what-is-IV-laser-therapy-768x741.jpg 768w" sizes="auto, (max-width: 940px) 100vw, 940px" />
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
                                <img loading="lazy" decoding="async" loading="lazy" width="940" height="907" src="../../wp-content/uploads/2023/05/benefits-of-IV-laser-therapy.jpg" class="attachment-large size-large wp-image-4674" alt="Benefits of IV Laser Therapy" srcset="https://theaeonclinic.com/wp-content/uploads/2023/05/benefits-of-IV-laser-therapy.jpg 940w, https://theaeonclinic.com/wp-content/uploads/2023/05/benefits-of-IV-laser-therapy-300x289.jpg 300w, https://theaeonclinic.com/wp-content/uploads/2023/05/benefits-of-IV-laser-therapy-768x741.jpg 768w" sizes="auto, (max-width: 940px) 100vw, 940px" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-5bf1c6e treatment-col" data-id="5bf1c6e" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-047a1c1 elementor-widget elementor-widget-text-editor" data-id="047a1c1" data-element_type="widget" data-widget_type="text-editor.default">
                            <div class="elementor-widget-container">
                                <h2>IV Laser Benefits
								</h2>
                                <p>Discover the advantages of IV laser therapy with AEON Clinic, Dubai:</p>
                                <ul class="arrow-bullet">
                                    <li aria-level="1">A quick treatment with effective results</li>
                                    <li aria-level="1">Helps with reducing pain and inflammation in the body</li>
                                    <li aria-level="1">Improves blood circulation and immune functions</li>
                                    <li aria-level="1">Reduces stress and anxiety while elevating mood</li>
                                    <li aria-level="1">Helps with improving athletic performance</li>
                                    <li aria-level="1">Promotes overall wellness</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="elementor-section elementor-top-section elementor-element elementor-element-8868c7a elementor-section-full_width elementor-section-height-default elementor-section-height-default" data-id="8868c7a" data-element_type="section">
            <div class="elementor-container elementor-column-gap-no">
                <div class="elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-3693e9c" data-id="3693e9c" data-element_type="column">
                    <div class="elementor-widget-wrap elementor-element-populated">
                        <div class="elementor-element elementor-element-6ae9e32 elementor-widget elementor-widget-shortcode" data-id="6ae9e32" data-element_type="widget" data-widget_type="shortcode.default">
                            <div class="elementor-widget-container">
                                <section id="" class="section-block section-medical-program">

                                    <div class="container">

                                        <div class="row medical-main-content">

                                            <div class="col-md-12 text-center">
                                                <!--<h2 class="section-heading text-white"></h2>-->
                                                <h2 class="section-heading text-white">The BioHacker Approach
												</h2>
                                                <p class="text-center">
                                                    At AEON clinic, we pride ourselves on providing cutting-edge regenerative and aesthetic treatments that have been developed by our medical experts through decades of research and development in the field.
											
                                                </p>
                                            </div>
                                        </div>

                                        <div class="row medical-program-keys">

                                            <div class="col-md-3 text-center">
                                                <div class="round-icon">
                                                    <img decoding="async" src="https://theaeonclinic.com/wp-content/uploads/2022/10/brain.svg" alt="brain" />
                                                </div>
                                                <div class="mpk-content">
                                                    <h3 class="text-white">Consultation</h3>



                                                </div>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <div class="round-icon">
                                                    <img decoding="async" src="https://theaeonclinic.com/wp-content/uploads/2022/10/body.svg" alt="body" />
                                                </div>
                                                <div class="mpk-content">
                                                    <h3 class="text-white">Analysis</h3>



                                                </div>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <div class="round-icon">
                                                    <img decoding="async" src="https://theaeonclinic.com/wp-content/uploads/2022/10/cell.svg" alt="Illustration of a human cell structure" />
                                                </div>
                                                <div class="mpk-content">
                                                    <h3 class="text-white">Personalized Treatment Plan</h3>



                                                </div>
                                            </div>
                                            <div class="col-md-3 text-center">
                                                <div class="round-icon">
                                                    <img decoding="async" src="https://theaeonclinic.com/wp-content/uploads/2022/10/consultation-icon.svg" alt="consultation" />
                                                </div>
                                                <div class="mpk-content">
                                                    <h3 class="text-white">Follow up</h3>



                                                </div>
                                            </div>
                                            <div class="col-md-12 text-center download-broucher">
                                                <button type="button">
                                                    Book Appointment
											
                                                </button>
                                            </div>


                                        </div>
                                    </div>
                                </section>
                                <div class="elementor-shortcode"></div>
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



    <section class="specialist-list-section  section-block">

        <div class="container">

            <h2 class="section-heading text-center">Our Specialists
			</h2>

            <div class="pecialist-list-container ">

                <div class="row">

                    <div class="col-md-4 specialist-col">
                        <figure>
                            <a href="#">
                                <img src="https://theaeonclinic.com/wp-content/uploads/2022/10/Basanta-300.jpg" alt="Dr. Basanta Khatry-Chhetry" />
                            </a>

                            <figcaption>
                                <h2 class="sepecialist-name">Dr. Basanta Khatry-Chhetry</h2>
                                <span>General Practitioner</span>
                                <div class="specialist-link">
                                    <a style="border-radius: 50px;" href="#">View profile</a>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 specialist-col">
                        <figure>
                            <a href="#">
                                <img src="https://theaeonclinic.com/wp-content/uploads/2023/09/Dr.-Alla-1.jpg" alt="Dr. Alla Zaentc" />
                            </a>

                            <figcaption>
                                <h2 class="sepecialist-name">Dr. Alla Zaentc</h2>
                                <span>General Practitioner</span>
                                <div class="specialist-link">
                                    <a style="border-radius: 50px;" href="#">View profile</a>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                    <div class="col-md-4 specialist-col">
                        <figure>
                            <a href="#">
                                <img src="https://theaeonclinic.com/wp-content/uploads/2023/04/mazen.jpg" alt="Dr. Mazen Al Samarrae" />
                            </a>

                            <figcaption>
                                <h2 class="sepecialist-name">Dr. Mazen Al Samarrae</h2>
                                <span>General Surgeon</span>
                                <div class="specialist-link">
                                    <a style="border-radius: 50px;" href="#">View profile</a>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

