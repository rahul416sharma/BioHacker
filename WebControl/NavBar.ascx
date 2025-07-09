<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NavBar.ascx.cs" Inherits="NavBar" %>


<style>
    /* Wrapper for both sub-nav and black bar */
    .submenu-hover-wrapper {
        display: none;
        position: absolute;
        left: 0;
        top: 100%;
        width: 100%;
        z-index: 1000;
    }

    /* Show when menu is hovered */
    .main-menu.have-children:hover .submenu-hover-wrapper {
        display: block;
    }

    /* Existing submenu styling stays as is */
    .sub-nav {
        padding: 20px;
        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.05);
    }

    /* Custom button row under sub-nav */
    .custom-submenu-bar {
        background-color: #000;
        margin-top: 315px;
        transition: all 0.3s ease;
    }

    /* Button and input styling */
    .btn-custom {
        background-color: transparent;
        border: 1px solid #fff;
        color: #fff;
        padding: 8px 20px;
        border-radius: 50px;
        font-family: "Montserrat", sans-serif;
        font-size: 14px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .custom-submenu-input {
        background: transparent;
        color: #fff;
        border: 1px solid #fff;
        border-radius: 25px;
        padding: 8px 20px;
        font-family: "Montserrat", sans-serif;
        font-size: 14px;
        width: 220px;
    }
</style>


<style>
    .form3Modal {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #8c7b73;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }

    .main-container {
        text-align: center;
    }

    .open-booking-btn {
        background: #8c7b73;
        color: white;
        border: none;
        padding: 15px 30px;
        font-size: 18px;
        border-radius: 50px;
        cursor: pointer;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        transition: all 0.3s ease;
        font-weight: 600;
    }

        .open-booking-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 12px 25px #8c7b73;
        }

    .popup-overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.6);
        backdrop-filter: blur(5px);
        z-index: 1000;
        animation: fadeIn 0.3s ease;
    }

    .popup-container {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: white;
        border-radius: 20px;
        box-shadow: 0 20px 50px rgba(0,0,0,0.3);
        width: 90%;
        max-width: 500px;
        max-height: 90vh;
        overflow: hidden;
        animation: slideIn 0.4s ease;
    }

    .popup-header {
        background: #8c7b73;
        color: white;
        padding: 20px;
        position: relative;
    }

    .close-btns {
        position: absolute;
        top: 15px;
        right: 20px;
        background: none;
        border: none;
        color: white;
        font-size: 24px;
        cursor: pointer;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        transition: background 0.3s ease;
    }

        .close-btns:hover {
            background: rgba(255, 255, 255, 0.2);
        }

    .step-indicator {
        display: flex;
        justify-content: space-between;
        margin-top: 15px;
    }

    .step {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.3);
        display: flex !important;
        align-items: center;
        justify-content: center;
        font-weight: bold;
        transition: all 0.3s ease;
    }

        .step.active {
            background: white;
            color: #8c7b73;
        }

        .step.completed {
            background: #4CAF50;
            color: white;
        }

    .popup-content {
        padding: 30px;
        min-height: 400px;
    }

    .form-step {
        display: none;
    }

        .form-step.active {
            display: block;
            animation: fadeInUp 0.4s ease;
        }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #333;
    }

    input, select, textarea {
        width: 100%;
        padding: 12px;
        border: 2px solid #e0e0e0;
        border-radius: 10px;
        font-size: 16px;
        transition: border-color 0.3s ease;
        box-sizing: border-box;
    }

        input:focus, select:focus, textarea:focus {
            outline: none;
            border-color: #8c7b73;
        }

    /* Calendar Navigation Styles */
    .calendar-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        padding: 10px;
        background: #f8f9fa;
        border-radius: 10px;
    }

    .calendar-nav-btn {
        background: #8c7b73;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        transition: all 0.3s ease;
    }

        .calendar-nav-btn:hover {
            background: #7a6a62;
        }

        .calendar-nav-btn:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

    .calendar-title {
        font-size: 18px;
        font-weight: bold;
        color: #333;
    }

    .calendar-grid {
        display: grid;
        grid-template-columns: repeat(7, 1fr);
        gap: 5px;
        margin-top: 10px;
    }

    .calendar-day {
        padding: 10px;
        text-align: center;
        border: 1px solid #e0e0e0;
        cursor: pointer;
        border-radius: 5px;
        transition: all 0.3s ease;
        min-height: 35px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

        .calendar-day:hover:not(.disabled) {
            background: #f0f0f0;
        }

        .calendar-day.selected {
            background: #8c7b73;
            color: white;
        }

        .calendar-day.disabled {
            color: #ccc;
            cursor: not-allowed;
            background: #f9f9f9;
        }

        .calendar-day.other-month {
            color: #ccc;
            background: #f9f9f9;
        }

    .time-slots {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 5px;
        margin-top: 0px;
        /* scrollable */
        max-height: 350px;
        overflow-y: auto;
        padding-right: 5px;
    }

        /* Optional: nice scrollbar */
        .time-slots::-webkit-scrollbar {
            width: 6px;
        }

        .time-slots::-webkit-scrollbar-thumb {
            background: #ccc;
            border-radius: 3px;
        }

            .time-slots::-webkit-scrollbar-thumb:hover {
                background: #aaa;
            }

    .time-slot {
        padding: 10px;
        border: 2px solid #e0e0e0;
        border-radius: 8px;
        cursor: pointer;
        text-align: center;
        transition: all 0.3s ease;
    }

        .time-slot:hover {
            border-color: #8c7b73;
        }

        .time-slot.selected {
            background: #8c7b73;
            color: white;
            border-color: #8c7b73;
        }

    .summary-item {
        display: flex;
        justify-content: space-between;
        padding: 10px 0;
        border-bottom: 1px solid #e0e0e0;
    }

    .total {
        font-weight: bold;
        font-size: 18px;
        color: #8c7b73;
    }

    .btn-group {
        display: flex;
        gap: 5px;
        margin-top: 20px;
    }

    .btn {
        flex: 1;
        padding: 12px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 600;
        transition: all 0.3s ease;
    }

    .btn-primary {
        background: #8c7b73;
        color: white;
    }

        .btn-primary:hover {
            background: #7a6a62;
        }

    .btn-secondary {
        background: #6c757d;
        color: white;
    }

        .btn-secondary:hover {
            background: #5a6268;
        }

    .success-message {
        text-align: center;
        padding: 40px;
    }

    .success-icon {
        font-size: 60px;
        color: #4CAF50;
        margin-bottom: 20px;
    }

    .formScroll {
        max-height: 400px;
        overflow-y: auto;
        padding-right: 5px;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }

        to {
            opacity: 1;
        }
    }

    @keyframes slideIn {
        from {
            transform: translate(-50%, -60%);
            opacity: 0;
        }

        to {
            transform: translate(-50%, -50%);
            opacity: 1;
        }
    }

    @keyframes fadeInUp {
        from {
            transform: translateY(20px);
            opacity: 0;
        }

        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .time-slot.booked {
        color: #999;
        background-color: #f9f9f9;
        pointer-events: none;
        cursor: not-allowed;
    }
    .time-slot.selected {
        background-color: #8c7b73;
        color: #fff;
    }

</style>



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
                        <%--                        <li class="main-menu has-child"><a href="#" style="font-weight: 1000">Test</a>
                            <div class="sub-menu-container-2">
                                <ul class="sub-menu-2">
                                    <li class=""><a href="pr/index.html" style="font-weight: 1000">PRESS</a></li>
                                    <li class=""><a href="blog/index.html" style="font-weight: 1000">Blog</a></li>
                                    <li class=""><a href="news/index.html" style="font-weight: 1000">News</a></li>
                                </ul>
                            </div>
                        </li>--%>

                        <li class="main-menu have-children"><a href="#" style="font-weight: 1000">Test</a>
                            <div class="submenu-hover-wrapper">
                                <div class="sub-nav" style="overflow-y: scroll">
                                    <div class="sub-nav-child-wrapper">
                                        <ul>
                                            <asp:Repeater ID="Repcaurse3" runat="server" OnItemDataBound="Repcaurse_ItemDataBound4">
                                                <ItemTemplate>
                                                    <li class="sub-nav-hav-children"><a href="<%# Eval("link")%>" class="btn btn-primary"><%#Eval("msCatName")%></a>
                                                        <asp:Label ID="lbid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                                        <div class="sub-nav-child">
                                                            <ul>
                                                                <asp:Repeater ID="RepeaterCourse3" runat="server">
                                                                    <ItemTemplate>
                                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%></a></li>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                                <div class="custom-submenu-bar scroll-sensitive">
                                    <div class="container py-3">
                                        <div class="row align-items-center">

                                            <!-- ✅ Left: Social Icons + Buttons -->
                                            <div class="col-md-8 d-flex flex-wrap align-items-center gap-3">
                                                <!-- Social Icons -->
                                                <div class="d-flex gap-3">
                                                    <a href="#" class="text-white"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-youtube"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-twitter"></i></a>
                                                </div>

                                                <!-- Buttons -->
                                                <a href="/MemberShip.aspx" class="btn-custom text-decoration-none text-white">Membership</a>
                                                <a href="/default.aspx" class="btn-custom text-decoration-none text-white">At Home</a>

                                            </div>

                                            <!-- ✅ Right: Search Bar -->
                                            <div class="col-md-4 text-end mt-3 mt-md-0">
                                                <input type="text" class="custom-submenu-input" placeholder="Search...">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="main-menu have-children"><a href="#" style="font-weight: 1000">INVASIVE THERAPIES</a>
                            <div class="submenu-hover-wrapper">
                                <div class="sub-nav" style="overflow-y: scroll">
                                    <div class="sub-nav-child-wrapper">
                                        <ul>
                                            <asp:Repeater ID="Repcaurse" runat="server" OnItemDataBound="Repcaurse_ItemDataBound">
                                                <ItemTemplate>
                                                    <li class="sub-nav-hav-children"><a href="<%# Eval("link")%>" class="btn btn-primary"><%#Eval("msCatName")%></a>
                                                        <asp:Label ID="lblid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                                        <div class="sub-nav-child">
                                                            <ul>
                                                                <asp:Repeater ID="RepeaterCourse" runat="server">
                                                                    <ItemTemplate>
                                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%></a></li>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>
                                <div class="custom-submenu-bar scroll-sensitive">
                                    <div class="container py-3">
                                        <div class="row align-items-center">

                                            <!-- ✅ Left: Social Icons + Buttons -->
                                            <div class="col-md-8 d-flex flex-wrap align-items-center gap-3">
                                                <!-- Social Icons -->
                                                <div class="d-flex gap-3">
                                                    <a href="#" class="text-white"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-youtube"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-twitter"></i></a>
                                                </div>

                                                <!-- Buttons -->
                                                <a href="/MemberShip.aspx" class="btn-custom text-decoration-none text-white">Membership</a>
                                                <a href="/default.aspx" class="btn-custom text-decoration-none text-white">At Home</a>

                                            </div>

                                            <!-- ✅ Right: Search Bar -->
                                            <div class="col-md-4 text-end mt-3 mt-md-0">
                                                <input type="text" class="custom-submenu-input" placeholder="Search...">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="main-menu have-children"><a href="#" style="font-weight: 1000">NON-INVASIVE THERAPIES</a>
                            <div class="submenu-hover-wrapper">
                                <div class="sub-nav" style="overflow-y: scroll">
                                    <div class="sub-nav-child-wrapper">
                                        <ul>
                                            <asp:Repeater ID="rptNni" runat="server" OnItemDataBound="Repcaurse_ItemDataBound2">
                                                <ItemTemplate>
                                                    <li class="sub-nav-hav-children"><a href="<%# Eval("link")%>" class="btn btn-primary"><%#Eval("msCatName")%></a>
                                                        <asp:Label ID="lblid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                                        <div class="sub-nav-child">
                                                            <ul>
                                                                <asp:Repeater ID="rptweb1" runat="server">
                                                                    <ItemTemplate>
                                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%></a></li>
                                                                    </ItemTemplate>
                                                                </asp:Repeater>
                                                            </ul>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ul>
                                    </div>
                                </div>

                                <div class="custom-submenu-bar scrolls-sensitive">
                                    <div class="container py-3">
                                        <div class="row align-items-center">

                                            <!-- ✅ Left: Social Icons + Buttons -->
                                            <div class="col-md-8 d-flex flex-wrap align-items-center gap-3">
                                                <!-- Social Icons -->
                                                <div class="d-flex gap-3">
                                                    <a href="#" class="text-white"><i class="fab fa-facebook-f"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-instagram"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-youtube"></i></a>
                                                    <a href="#" class="text-white"><i class="fab fa-twitter"></i></a>
                                                </div>

                                                <!-- Buttons -->
                                                <button class="btn-custom">Membership</button>
                                                <a href="/default.aspx" class="btn-custom text-decoration-none text-white">At Home</a>

                                            </div>

                                            <!-- ✅ Right: Search Bar -->
                                            <div class="col-md-4 text-end mt-3 mt-md-0">
                                                <input type="text" class="custom-submenu-input" placeholder="Search...">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="main-menu has-child"><a href="#" style="font-weight: 1000">FOR YOU</a>
                            <div class="sub-menu-container-2">
                                <ul class="sub-menu-2">
                                    <li class=""><a href="gallery.aspx" style="font-weight: 1000">Gallery</a></li>
                                    <li class=""><a href="blog.aspx" style="font-weight: 1000">Blog</a></li>
                                    <li class=""><a href="#" style="font-weight: 1000">News</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="main-menu" style="display: none;"><a href="#" style="font-weight: 1000">Services</a> </li>
                        <li class="main-menu"><a href="#" onclick="openBookingForm()" style="font-weight: 1000">Book Now</a> </li>

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
                    <li class="mobile-nav-has-children"><a href="#">Test<span class="toggle-sub-nav nitro-lazy"></span></a>
                        <div class="mobile-sub-nav-container">
                            <ul>
                                <asp:Repeater ID="ServiceMobile2" runat="server" OnItemDataBound="Repcaurse_ItemDataBound5">
                                    <ItemTemplate>
                                        <li class="mobile-sub-nav-children"><a href="<%# Eval("link")%>"><%#Eval("msCatName")%></a>
                                            <asp:Label ID="lblid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                            <ul>
                                                <asp:Repeater ID="rptmob2" runat="server">
                                                    <ItemTemplate>
                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%> </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </li>

                    <li class="mobile-nav-has-children"><a href="#">INVASIVE THERAPIES<span class="toggle-sub-nav nitro-lazy"></span></a>
                        <div class="mobile-sub-nav-container">
                            <ul>
                                <asp:Repeater ID="ServiceMobile" runat="server" OnItemDataBound="Repcaurse_ItemDataBound1">
                                    <ItemTemplate>
                                        <li class="mobile-sub-nav-children"><a href="<%# Eval("link")%>"><%#Eval("msCatName")%></a>
                                            <asp:Label ID="lblid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                            <ul>
                                                <asp:Repeater ID="rptmob" runat="server">
                                                    <ItemTemplate>
                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%> </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </li>

                    <li class="mobile-nav-has-children"><a href="#">NON-INVASIVE THERAPIES<span class="toggle-sub-nav nitro-lazy"></span></a>
                        <div class="mobile-sub-nav-container">
                            <ul>
                                <asp:Repeater ID="nnimob" runat="server" OnItemDataBound="Repcaurse_ItemDataBound3">
                                    <ItemTemplate>
                                        <li class="mobile-sub-nav-children"><a href="<%# Eval("link")%>"><%#Eval("msCatName")%></a>
                                            <asp:Label ID="lblid" runat="server" Visible="false" Text='<%#Eval("msCatId")%>'></asp:Label>
                                            <ul>
                                                <asp:Repeater ID="rptmob1" runat="server">
                                                    <ItemTemplate>
                                                        <li><a href="ServiceDetail.aspx?Id=<%# Eval("SubCourseId")%>"><%# Eval("SubCatName")%> </a></li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </li>
                    <li class="mobile-nav-has-children"><a href="#">FOR YOU<span class="toggle-sub-nav nitro-lazy"></span></a>
                        <div class="mobile-sub-nav-container">
                            <ul>
                                <li class=""><a href="Gallery.aspx">Gallery</a></li>
                                <li class=""><a href="Blog.aspx">Blog</a></li>
                                <li class=""><a href="#">News</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#" onclick="openBookingForm()">Book Now</a> </li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<script src="../Angular/Websitecontroller.js"></script>
<!-- Modal -->
<div class="popup-overlay" id="bookingPopup" ng-app="Website">
    <div class="popup-container" ng-controller="booking">
        <div class="popup-header">
            <button class="close-btns" onclick="closeBookingForm()">&times;</button>
            <h4>Book Your Service</h4>
            <div class="step-indicator">
                <div class="step active" id="step1">1</div>
                <div class="step" id="step2">2</div>
                <div class="step" id="step3">3</div>
                <div class="step" id="step4">4</div>
                <div class="step" id="step5">5</div>
            </div>
        </div>

        <div class="popup-content">
            <!-- Step 1: Calendar -->
            <div class="form-step active" id="formStep1">
                <h4>Select Date{{jackbtn}}</h4>
                <div class="form-group">
                    <div class="calendar-header">
                        <button class="calendar-nav-btn" onclick="changeMonth(-1)" id="prevMonthBtn">‹</button>
                        <div class="calendar-title" id="calendarTitle">January 2025</div>
                        <button class="calendar-nav-btn" onclick="changeMonth(1)" id="nextMonthBtn">›</button>
                    </div>
                    <div id="calendar"></div>
                </div>
            </div>
            <input type="hidden" id="selectedDates" />
            <!-- Step 2: Time -->
			<div class="form-step" id="formStep2">
				<h3>Select Time</h3>
				<div class="form-group">
					<label>Choose your preferred time:</label>
					<div class="time-slots" id="timeSlots">
						<div class="time-slot"
							ng-repeat="slot in TimeSlots"
							ng-class="{
                    'selected': selectedTime && selectedTime.Id === slot.Id,
                    'booked': slot.orderNo === '1'
                }"
							ng-click="slot.orderNo !== '1' && selectTime(slot)">
							{{slot.Name}} <span ng-if="slot.orderNo === '1'"></span>
							<input type="hidden" id="TimeName" />
						</div>
					</div>
				</div>
			</div>


            <!-- Step 3: Details -->
            <div class="form-step formScroll" id="formStep3">
                <h3>Your Details</h3>
                <div class="form-group">
                    <label for="name">Full Name:</label>
                    <input type="text" id="name" placeholder="Enter your full name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" placeholder="Enter your phone number" required>
                </div>
                <div class="form-group">
                    <label for="phone">Location:</label>
                    <input type="tel" id="Location" placeholder="Enter your Location" required>
                </div>
            </div>

            <!-- Step 4: Product Selection -->
            <div class="form-step" id="formStep4">
                <h3>Select Service</h3>
                <div class="form-group">
                    <label for="product">Choose your service:</label>
                    <select class="form-control" id="product" style="height: 43px;" ng-options="pro.Id as pro.Name for pro in Productlist track by pro.Id" ng-model="ddlProduct" ng-change="Getproduct(value)">

                        <option value="">--Select Service--</option>

                    </select>
                    <input type="hidden" id="service" />
                </div>
            </div>

            <!-- Step 5: Payment onclick="processPayment()"-->
            <div class="form-step" id="formStep5">
                <h3>Booking Summary</h3>
                <div id="bookingSummary"></div>
                <div class="form-group">
                    <button class="btn btn-primary" ng-click="submit()"  style="width: 100%;">
                        Pay Now
                    </button>
                </div>
            </div>

            <!-- Success Message -->
            <div class="form-step" id="successStep">
                <div class="success-message">
                    <div class="success-icon">✓</div>
                    <h3>Booking Confirmed!</h3>
                    <p>Thank you for your booking. You will receive a confirmation email shortly.</p>
                </div>
            </div>

            <div class="btn-group" id="navigationButtons">
                <button class="btn btn-secondary" onclick="previousStep()" id="prevBtn" style="display: none;">
                    Previous
                </button>
                <button class="btn btn-primary" onclick="nextStep()" id="nextBtn" style="background-color:#8c7b73 !important">
                    Next
                </button>
            </div>
        </div>
    </div>
</div>



<script>
    window.addEventListener("scroll", function () {
        const submenuBar = document.querySelector(".custom-submenu-bar.scroll-sensitive");
        if (!submenuBar) return;

        if (window.scrollY > 20) {
            submenuBar.style.display = "none";
        } else {
            submenuBar.style.display = "block";
        }
    });
</script>
<script>
    window.addEventListener("scroll", function () {
        const submenuBar = document.querySelector(".custom-submenu-bar.scrolls-sensitive");
        if (!submenuBar) return;

        if (window.scrollY > 20) {
            submenuBar.style.display = "none";
        } else {
            submenuBar.style.display = "block";
        }
    });
</script>

<script>
    let currentStep = 1;
    const totalSteps = 5;
    let selectedDate = '';
    let selectedTime = '';
    let selectedProduct = '';
    let selectedPrice = 0;

    // Calendar variables
    let currentMonth = new Date().getMonth();
    let currentYear = new Date().getFullYear();
    const monthNames = [
        'January', 'February', 'March', 'April', 'May', 'June',
        'July', 'August', 'September', 'October', 'November', 'December'
    ];

    function openBookingForm() {
        document.getElementById('bookingPopup').style.display = 'block';
        generateCalendar();
    }

    function closeBookingForm() {
        document.getElementById('bookingPopup').style.display = 'none';
        resetForm();
    }

    function resetForm() {
        currentStep = 1;
        selectedDate = '';
        selectedTime = '';
        selectedProduct = '';
        selectedPrice = 0;

        // Reset calendar to current month/year
        const today = new Date();
        currentMonth = today.getMonth();
        currentYear = today.getFullYear();

        updateStepIndicator();
        showStep(1);
        document.getElementById('prevBtn').style.display = 'none';
        document.getElementById('nextBtn').textContent = 'Next';
        document.getElementById('nextBtn').style.display = 'block';
        document.getElementById('navigationButtons').style.display = 'flex';

        // Clear form fields
        document.getElementById('name').value = '';
        document.getElementById('email').value = '';
        document.getElementById('phone').value = '';
        document.getElementById('product').value = '';
        document.getElementById('Location').value = '';
        $scope.selectedTime = "";
    }

    function nextStep() {
        if (validateCurrentStep()) {
            if (currentStep < totalSteps) {
                currentStep++;
                updateStepIndicator();
                showStep(currentStep);

                if (currentStep === 5) {
                    generateSummary();
                }

                updateNavigationButtons();
            }
        }
    }

    function previousStep() {
        if (currentStep > 1) {
            currentStep--;
            updateStepIndicator();
            showStep(currentStep);
            updateNavigationButtons();
        }
    }

    function validateCurrentStep() {
        switch (currentStep) {
            case 1:
                if (!selectedDate) {
                    alert('Please select a date');
                    return false;
                }
                break;
            case 2:
                const time = document.getElementById('TimeName').value
				if (!time) {
                    alert('Please fill in all fields');
					return false;
                }
				break;
            case 3:
                const name = document.getElementById('name').value;
                const email = document.getElementById('email').value;
                const phone = document.getElementById('phone').value;
				const location = document.getElementById('Location').value;
				if (!name || !email || !phone || !location) {
                    alert('Please fill in all fields');
                    return false;
                }
                break;
            case 4:
				const service = document.getElementById("service").value;
				if (!service) {
					alert('Please fill in all fields');
					return false;
                }
                break;
        }
        return true;
    }

    function updateStepIndicator() {
        for (let i = 1; i <= totalSteps; i++) {
            const stepElement = document.getElementById(`step${i}`);
            stepElement.classList.remove('active', 'completed');

            if (i < currentStep) {
                stepElement.classList.add('completed');
            } else if (i === currentStep) {
                stepElement.classList.add('active');
            }
        }
    }

    function showStep(step) {
        document.querySelectorAll('.form-step').forEach(stepElement => {
            stepElement.classList.remove('active');
        });
        document.getElementById(`formStep${step}`).classList.add('active');
    }

    function updateNavigationButtons() {
        const prevBtn = document.getElementById('prevBtn');
        const nextBtn = document.getElementById('nextBtn');

        prevBtn.style.display = currentStep > 1 ? 'block' : 'none';

        if (currentStep === totalSteps) {
            nextBtn.style.display = 'none';
        } else {
            nextBtn.style.display = 'block';
            nextBtn.textContent = 'Next';
        }
    }

    function changeMonth(direction) {
        currentMonth += direction;

        if (currentMonth > 11) {
            currentMonth = 0;
            currentYear++;
        } else if (currentMonth < 0) {
            currentMonth = 11;
            currentYear--;
        }

        generateCalendar();
    }

    function generateCalendar() {
        const calendar = document.getElementById('calendar');
        const today = new Date();

        // Update calendar title
        document.getElementById('calendarTitle').textContent = `${monthNames[currentMonth]} ${currentYear}`;

        // Enable/disable navigation buttons
        const prevBtn = document.getElementById('prevMonthBtn');
        const nextBtn = document.getElementById('nextMonthBtn');

        // Disable previous button if we're at current month/year
        if (currentYear === today.getFullYear() && currentMonth === today.getMonth()) {
            prevBtn.disabled = true;
        } else {
            prevBtn.disabled = false;
        }

        // Generate calendar header
        let calendarHTML = '<div style="display: grid; grid-template-columns: repeat(7, 1fr); gap: 5px; margin-bottom: 10px;">';
        const dayNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        dayNames.forEach(day => {
            calendarHTML += `<div style="font-weight: bold; text-align: center; padding: 10px; color: #666;">${day}</div>`;
        });
        calendarHTML += '</div>';

        calendarHTML += '<div class="calendar-grid">';

        const firstDay = new Date(currentYear, currentMonth, 1);
        const lastDay = new Date(currentYear, currentMonth + 1, 0);
        const startingDayOfWeek = firstDay.getDay();
        const prevMonth = new Date(currentYear, currentMonth, 0);

        // Add days from previous month
        for (let i = startingDayOfWeek - 1; i >= 0; i--) {
            const day = prevMonth.getDate() - i;
            calendarHTML += `<div class="calendar-day other-month">${day}</div>`;
        }

        // Add days of current month
        for (let day = 1; day <= lastDay.getDate(); day++) {
            const currentDate = new Date(currentYear, currentMonth, day);
            const dateString = currentDate.toISOString().split('T')[0];
            const isToday = currentDate.toDateString() === today.toDateString();
            const isPast = currentDate < today && !isToday;

            let dayClass = 'calendar-day';
            if (isPast) {
                dayClass += ' disabled';
            }
            if (selectedDate === dateString) {
                dayClass += ' selected';
            }

            calendarHTML += `<div class="${dayClass}" 
                        onclick="${isPast ? '' : `selectDate('${dateString}')`}">
                        ${day}
                    </div>`;
        }

        // Add days from next month to fill the grid
        const remainingCells = 42 - (startingDayOfWeek + lastDay.getDate());
        for (let day = 1; day <= remainingCells && remainingCells < 7; day++) {
            calendarHTML += `<div class="calendar-day other-month">${day}</div>`;
        }

        calendarHTML += '</div>';
        calendar.innerHTML = calendarHTML;
    }

    function selectDate(dateString) {
        selectedDate = dateString;
        document.getElementById("selectedDates").value = dateString
        document.querySelectorAll('.calendar-day').forEach(day => {
            day.classList.remove('selected');
        });
        event.target.classList.add('selected');
		var scope = angular.element(document.querySelector('[ng-controller="booking"]')).scope();
		scope.$apply(function () {
			scope.bind_TimeSlot();
		});

    }

    function updatePrice() {
        const productSelect = document.getElementById('product');
        const selectedOption = productSelect.options[productSelect.selectedIndex];
        selectedProduct = productSelect.value;
        selectedPrice = selectedOption.dataset.price || 0;
    }

    function generateSummary() {
        const summary = document.getElementById('bookingSummary');
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const phone = document.getElementById('phone').value;
        const productSelect = document.getElementById('product');
        const productName = productSelect.options[productSelect.selectedIndex].text;
        const selectedTimes = document.getElementById("TimeName").value;
        const summaryHTML = `
                <div class="summary-item">
                    <span>Name:</span>
                    <span>${name}</span>
                </div>
                <div class="summary-item">
                    <span>Email:</span>
                    <span>${email}</span>
                </div>
                <div class="summary-item">
                    <span>Phone:</span>
                    <span>${phone}</span>
                </div>
                <div class="summary-item">
                    <span>Date:</span>
                    <span>${new Date(selectedDate).toLocaleDateString()}</span>
                </div>
                <div class="summary-item">
                    <span>Time:</span>
                    <span>${selectedTimes}</span>
                </div>
                <div class="summary-item">
                    <span>Service:</span>
                    <span>${productName}</span>
                </div>
                <div class="summary-item total">
                    <span>Total:</span>
                    <span>1000</span>
                </div>
            `;

        summary.innerHTML = summaryHTML;
    }

    function processPayment() {
        // Simulate payment processing
        document.getElementById('navigationButtons').style.display = 'none';
        document.getElementById('formStep5').classList.remove('active');
        document.getElementById('successStep').classList.add('active');

        // Auto-close after 3 seconds
        setTimeout(() => {
            closeBookingForm();
        }, 3000);
    }

    // Close popup when clicking outside
    document.getElementById('bookingPopup').addEventListener('click', function (e) {
        if (e.target === this) {
            closeBookingForm();
        }
    });
</script>

