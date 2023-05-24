<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Site Title -->
    <title>Medical Support</title>
    <!-- Meta Description Tag -->
    <meta name="Description" content="Klinik is a HTML5 & CSS3 responsive template">
    <!-- Favicon Icon -->
    <link href='<c:url value="/resources/images/favicon.png" />' rel="icon" type="image/x-icon">
    <!-- Font Awesoeme Stylesheet CSS -->
    <link href='<c:url value="/resources/font-awesome/css/font-awesome.min.css" />' rel="stylesheet" type="text/css">
    <!-- Google web Font -->
    <link href='<c:url value="https://fonts.googleapis.com/css?family=Montserrat:400,500,600" />' rel="stylesheet" type="text/css">
    <!-- Bootstrap core CSS -->
    <link href='<c:url value="/resources/css/bootstrap.min.css" />' rel="stylesheet" type="text/css">
    <!-- Material Design Lite Stylesheet CSS -->
    <link href='<c:url value="/resources/css/material.min.css" />' rel="stylesheet" type="text/css">
    <!-- Material Design Select Field Stylesheet CSS -->
    <link href='<c:url value="/resources/css/mdl-selectfield.min.css" />' rel="stylesheet" type="text/css">
    <!-- Owl Carousel Stylesheet CSS -->
    <link href='<c:url value="/resources/css/owl.carousel.min.css" />' rel="stylesheet" type="text/css">
    <!-- Animate Stylesheet CSS -->
    <link href='<c:url value="/resources/css/animate.min.css" />' rel="stylesheet" type="text/css">
    <!-- Magnific Popup Stylesheet CSS -->
    <link href='<c:url value="/resources/css/magnific-popup.css" />' rel="stylesheet" type="text/css">
    <!-- Flex Slider Stylesheet CSS -->
    <link href='<c:url value="/resources/css/flexslider.css" />' rel="stylesheet" type="text/css">
    <!-- Custom Main Stylesheet CSS -->
    <link href='<c:url value="/resources/css/style.css" />' rel="stylesheet" type="text/css">
</head>
<body>
    <!-- Start Header -->
    <header id="header">
        <!-- Start Header Top Section -->
        <div id="hdr-top-wrapper">
            <div class="layer-stretch hdr-top">
                <div class="hdr-top-block hidden-xs">
                    <div id="hdr-social">
                        <ul class="social-list social-list-sm">
                            <li><a class="width-auto font-13">Theo dõi chúng tôi : </a></li>
                            <li><a href="https://www.facebook.com/" target="_blank" id="hdr-facebook" ><i class="fa fa-facebook" ></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-facebook">Facebook</span></li>
                            <li><a href="https://www.google.com.vn/?hl=vi" target="_blank" id="hdr-google" ><i class="fa fa-google" ></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-google">Google</span></li>
                            <li><a href="https://www.youtube.com/" target="_blank" id="hdr-youtube" ><i class="fa fa-youtube" ></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-youtube">Youtube</span></li>
                        </ul>
                    </div>
                </div>
                <div class="hdr-top-line hidden-xs"></div>
                <div class="hdr-top-block hdr-number">
                    <div class="font-13">
                        <i class="fa fa-mobile font-20 tbl-cell"> </i> <span class="hidden-xs tbl-cell"> Số điện thoại : </span> <span class="tbl-cell">0123.456.115</span>
                    </div>
                </div>
                <div class="hdr-top-line"></div>
                <div class="hdr-top-block">
                    <div class="theme-dropdown">
                        <a id="profile-menu" class="mdl-button mdl-js-button mdl-js-ripple-effect font-13"><i class="fa fa-user-o color-black"></i> My Account</a>
                        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect metarial-menu" data-mdl-for="profile-menu">
                            <li class="mdl-menu__item"><a href="login.jsp"><i class="fa fa-sign-in"></i>Đăng nhập</a></li>
                            <li class="mdl-menu__item"><a href="register.html"><i class="fa fa-user-o"></i>Đăng ký</a></li>
                            <li class="mdl-menu__item"><a href="forgot.html"><i class="fa fa-key"></i>Quên mật khẩu?</a></li>
                            <li class="mdl-menu__item"><a href="about.html"><i class="fa fa-info"></i>Trợ giúp</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- End Header Top Section -->
        <!-- Start Main Header Section -->
        <div id="hdr-wrapper">
            <div class="layer-stretch hdr">
                <div class="tbl">
                    <div class="tbl-row">
                        <!-- Start Header Logo Section -->
                        <div class="tbl-cell hdr-logo">
                            <a href="index.html"><img src="images/logo.png" alt=""></a>
                        </div><!-- End Header Logo Section -->
                        <div class="tbl-cell hdr-menu">
                            <!-- Start Menu Section -->
                            <ul class="menu">
                             	<li><a href="home.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Trang chủ</a></li>
                                <li>
                                    <a id="menu-blog" class="mdl-button mdl-js-button mdl-js-ripple-effect">Thông tin<i class="fa fa-chevron-down"></i>
                                    </a>
                                    <ul class="menu-dropdown">
                                        <li><a href="about.jsp">Về chúng tôi</a></li>
                                        <li><a href="contact.jsp">Liên hệ</a></li>
                                        <li><a href="terms-conditions.jsp">Điều kiện và điều khoản</a></li>
                                    </ul>
                                </li>
                                <li><a href="department.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Khoa</a></li>
								<li><a href="servicelist.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Dịch vụ</a></li>
                                <li><a href="doctorlist.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Danh sách bác sĩ</a></li>
                                <li>
                                    <a id="menu-blog" class="mdl-button mdl-js-button mdl-js-ripple-effect">Tin tức<i class="fa fa-chevron-down"></i>
                                    </a>
                                    <ul class="menu-dropdown">
                                        <li><a href="blog.jsp">Tin tức 1</a></li>
                                        <li><a href="blog.jsp">Tin tức 2</a></li>
                                    </ul>
                                </li>
								<li><a href="myappointment.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Đặt lịch khám</a></li>
                                <li><a href="components.html" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Components</a></li>
                                <li>
                                </li>
                                <li class="mobile-menu-close"><i class="fa fa-times"></i></li>
                            </ul><!-- End Menu Section -->
                            <div id="menu-bar"><a><i class="fa fa-bars"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End Main Header Section -->
    </header><!-- End Header -->
    <!-- Start Slider Section -->
    <div id="slider" class="slider-1">
        <div class="flexslider slider-wrapper">
            <ul class="slides">     
                <li>
                    <div class="slider-info">
                        <h1 class="animated fadeInDown">Trang web hỗ trợ y tế</h1>
                        <p class="animated fadeInDown">Ở đây cung cấp các dịch vụ và hỗ trợ y tế</p>
                    </div>
                    <div class="slider-backgroung-image" style="background-image: url(uploads/slider-1.jpg);"></div>
                    <!-- Make an Appointment  Button -->
                    <div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect  animated fadeInUp">Đặt lịch hẹn<i class="fa fa-flag-checkered"></i></a>
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Hệ thống y tế chuyên nghiệp</h2>
                        <p>Với đội ngũ y tế chuyên nghiệp khắp các khoa và các bác sĩ với nhiều năm kinh nghiệm</p>
                    </div>
                    <div class="slider-backgroung-image" style="background-image: url(uploads/slider-2.jpg);"></div>
                    <!-- Make an Appointment  Button -->
                    <div class="slider-button">
                        <a href = "doctorlist.jsp" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect  animated fadeInUp">Đọc thêm<i class="fa fa-external-link"></i></a>
                    </div>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Hỗ trợ 24/7</h2>
                        <p>Hệ thống có thể được sử dụng bởi tất cả mọi người, tư vấn y tế miễn phí bằng trí tuệ nhân tạo</p>
                    </div>
                    <div class="slider-backgroung-image" style="background-image: url(uploads/slider-3.jpg);"></div>
                    <!-- Make an Appointment  Button -->
                    <div class="slider-button">
                        <a href = "about.jsp" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect  animated fadeInUp">Về chúng tôi<i class="fa fa-eye"></i></a>
                    </div>
                </li>
            </ul>
        </div>
    </div><!-- End Slider Section -->
        <!-- Start Service Section -->
    <div id="hm-service" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl">
                <h3>Tại sao nên chọn chúng tôi?</h3>
            </div>
            <div class="layer-container">
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-phone"></i></div>
                    <span>Chăm sóc khách hàng</span>
                    <p class="paragraph-small paragraph-white">Luôn có nhân viên chăm sóc khách hàng và đội ngũ bác sĩ túc trực luôn sẵn sàng giải quyết thắc mắc của quý khác </p>
                </div>
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-calendar"></i></div>
                    <span>Dịch vụ 24/7</span>
                    <p class="paragraph-small paragraph-white">Ở chúng tôi có dịch vụ hỗ trợ y tế bằng AI và hệ thống trò chuyện trực tuyến giữa bác sĩ và người dùng liên tục 24/24</p>
                </div>
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-cloud"></i></div>
                    <span>Công nghệ hiện đại</span>
                    <p class="paragraph-small paragraph-white">Với những thiết bị phần cứng và phần mềm hiện đại nhất, chúng tôi tự tin rằng sẽ phục vụ quý khách một cách chu đáo</p>
                </div>
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-ambulance"></i></div>
                    <span>Cấp cứu</span>
                    <p class="paragraph-small paragraph-white">Khoa cấp cứu làm việc 24/7 với đội ngũ chuyên nghiệp và tận tình</p>
                </div>
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-stethoscope"></i></div>
                    <span>Đội ngũ chăm sóc tận tình</span>
                    <p class="paragraph-small paragraph-white">Ngoài các bác sĩ, các nhân viên, y tá, điều dưỡng sẽ đều đón tiếp và chăm sóc quý khách tận tình nhất có thể để mọi người có trải nghiệm tớt nhất </p>
                </div>
                <div class="feature-block feature-block-dark">
                    <div class="feature-icon"><i class="fa fa-shopping-bag"></i></div>
                    <span>Hệ thống thuốc men hiện đại, đầy đủ</span>
                    <p class="paragraph-small paragraph-white">Với hệ thống tiệm thuốc hiện đại, đầy đủ các loại thuốc trên toàn quốc và ngoại quốc, có bán thuốc kê đơn lẫn không kê đơn, sẽ khiến cho mọi người yên tâm về chất lượng</p>
                </div>
            </div>
        </div>
    </div><!-- End Service Section -->
    <!-- Start About Section -->
    <div id="hm-about" class="parallax-background parallax-background-1">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Đội ngũ của chúng tôi</h3>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-user-md"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">54</span>
                                <p>Bác sĩ</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-ambulance"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">130</span>
                                <p>Phòng</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-calendar"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">51</span>
                                <p>Năm kinh nghiệm</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-clock-o"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">168</span>
                                <p>Giờ mở cửa hàng tuần</p>
                            </div>
                        </div>
                        <div class="hm-about-paragraph">
                            <p class="paragraph-medium paragraph-white">
                                <span class="theme-dropcap color-white">V</span>ới đội ngũ bác sĩ, y tá và nhân viên chuyên nghiệp.
                                Kết hợp với công nghệ hiện đại từ phần cứng đến phần mềm, chúng tôi tự tin rằng sẽ mang đến trải 
                                nghiệm tốt nhất cho quý khách. Dù là trực tiếp hay trực tuyến, chúng tôi sẽ cố gắng hết sức mình để
                                mang đến cho qúy khách những giây phút thật yên tâm. Không những có các bác sĩ túc trực 24/7 để lắng
                                nghe yêu cầu của quý khách, chúng tôi còn có hệ thống trí tuệ nhân tạo hỗ trợ chẩn đoán bệnh để mọi
                                người được có thêm thông tin về tình trạng của bản thân
                            </p> 
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img class="img-thumbnail" src="<c:url value="/resources/images/test.jpg" />" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End About Section -->
        <!-- Start Feature Section -->
    <div id="hm-feature" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-10">
            <div class="layer-ttl">
                <h3>Chúng tôi nổi bật ở lĩnh vực nào?</h3>
            </div>
            <div class="row text-left">
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-female"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Phụ khoa</h5>
                            <p class="paragraph-small paragraph-white">Thông tin phụ khoa</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-thermometer"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Y học nhiệt đới</h5>
                            <p class="paragraph-small paragraph-white">Thông tin y học nhiệt đới</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-stethoscope"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Da liễu</h5>
                            <p class="paragraph-small paragraph-white">Thông tin da liễu</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-bed"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Phẫu thuật</h5>
                            <p class="paragraph-small paragraph-white">Thông tin phẫu thuật</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-eye"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Mắt</h5>
                            <p class="paragraph-small paragraph-white">Thông tin mắt</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="department-block department-card">
                        <div class="tbl-cell department-icon"><i class="fa fa-glass"></i></div>
                        <div class="tbl-cell department-detail">
                            <h5>Tiêu hóa</h5>
                            <p class="paragraph-small paragraph-white">Thông tin tiêu hóa</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Feature Section -->
    <!-- Start Doctor Section -->
    <div class="parallax-background parallax-background-2">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Đội ngũ bác sĩ của chúng tôi</h3>
                </div>
                <div class="layer-container">
                    <div id="hm-doctor-slider" class="owl-carousel owl-theme theme-owl-dot">
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 1</h6>
                            <p>Khoa 1</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 2</h6>
                            <p>Khoa 2</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 3</h6>
                            <p>Khoa 3</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 4</h6>
                            <p>Khoa 4</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 5</h6>
                            <p>Khoa 5</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 6</h6>
                            <p>Khoa 6</p>
                        </div>
                       <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 7</h6>
                            <p>Khoa 7</p>
                        </div>
                        <div class="hm-doctor">
                            <img class="img-responsive" src="<c:url value="/resources/images/test.jpg" />" alt="">
                            <h6>Bác sĩ 8</h6>
                            <p>Khoa 8</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor Section -->
    <!-- Start Blog Section -->
    <div id="hm-blog" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-10 text-center">
            <div class="layer-ttl">
                <h3>Tin mới nhất</h3>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <div class="blog-card-date">08 tháng 05 2023</div>
                            <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                        </div>
                        <div class="blog-card-ttl">
                            <h3><a href="#">Tin tức 1</a></h3>
                        </div>
                        <div class="blog-card-details">
                            <p><i class="fa fa-user"></i>Tác giả 2</p>
                            <p><a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Đọc thêm</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <div class="blog-card-date">10 tháng 05 2023</div>
                            <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                        </div>
                        <div class="blog-card-ttl">
                            <h3><a href="#">Tin tức 2</a></h3>
                        </div>
                        <div class="blog-card-details">
                            <p><i class="fa fa-user"></i>Tác giả 2</p>
                            <p><a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Đọc thêm</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <div class="blog-card-date">18 tháng 05 2023</div>
                            <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                        </div>
                        <div class="blog-card-ttl">
                            <h3><a href="#">Tin tức 3</a></h3>
                        </div>
                        <div class="blog-card-details">
                            <p><i class="fa fa-user"></i>Tác giả 3</p>
                            <p><a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Đọc thêm</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Blog Section -->
       <!-- Start Testimonial Section -->
    <div id="testimonial" class="colored-background">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Bình luận của mọi người</h3>
                </div>
                <div class="layer-container">
                    <div id="testimonial-slider" class="owl-carousel owl-theme theme-owl-dot">
                        <div class="testimonial-block">  
                            <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                                Bình luận 1
                            </div>
                            <a>Tác giả 1</a>
                        </div>
                        <div class="testimonial-block">
                            <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                                Bình luận 2
                            </div>
                            <a>Tác giả 2</a>
                        </div>
                        <div class="testimonial-block">
                            <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                                Bình luận 3
                            </div>
                            <a>Tác giả 3</a>
                        </div>
                        <div class="testimonial-block">
                             <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                                Bình luận 4
                            </div>
                            <a>Tác giả 4</a>
                        </div>
                        <div class="testimonial-block">
                            <div class="paragraph-medium paragraph-white">
                                <i class="fa fa-quote-left"></i>
                                Bình luận 5
                            </div>
                            <a>Tác giả 5</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Testimonial Section -->
    <!-- Start Emergency Section -->
    <div id="emergency">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl">
                    <h3>Khẩn cấp</h3>
                </div>
                <div class="layer-container">
                    <div class="paragraph-medium paragraph-black">
                        Trong trường hợp khẩn cấp hoặc cần hỗ trợ <br/>
                        Làm ơn gọi số điện thoại này:
                    </div>
                    <div class="emergency-number">0123.456.115</div>
                </div>
            </div>
        </div>
    </div><!-- End Emergency Section -->
    <!-- Start Make an Appointment Modal -->
    <div id="appointment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
               <form action="/dat-lich-lay-mau" class="form-horizontal" enctype="multipart/form-data" method="post">    <div class="schedule-main"></div>
        <div class="container">
            <div class="schedule-container">
                <div class="schedule-form">
                <div class="p-2 text-center">
                    <h1 style=" text-align: center;text-transform: uppercase;">Đặt lịch khám</h1>
                    <div class="form">
                        <input name="__RequestVerificationToken" type="hidden" value="3eeMuUiBYPzTMawKIH_d3Xl5og9-IgUQ-z4dHmVc6DCy-Ae71zrfuG3cqJBKLaU5JUxGqxDksmmXiQ1JXzQ17uQwTPgDJ5ccdiHENla9SRE1" />
                        <div class="schedule-row row">
                            <div class="schedule-col col-xl-12">
                                <div class="form-group schedule-comment">
                                </div>
                            </div>
                         <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-user-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="appointment-name">
                                <label class="mdl-textfield__label" for="appointment-name">Tên</label>
                                <span class="mdl-textfield__error">Làm ơn nhập tên hợp lệ!</span>
                            </div>
                        </div>
                           <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-phone"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="appointment-mobile">
                                <label class="mdl-textfield__label" for="appointment-mobile">Số điện thoại</label>
                                <span class="mdl-textfield__error">Làm ơn nhập số điện thoại hợp lệ!</span>
                            </div>
                        </div>
                            <div class="col-md-6">
							    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
							        <i class="fa fa-calendar-o"></i>
							        <input class="mdl-textfield__input" type="datetime-local" id="appointment-date">
							        <span class="mdl-textfield__error">Làm ơn nhập ngày và giờ hợp lệ!</span>
							    </div>
							</div>
                            <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-envelope-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="appointment-email">
                                <label class="mdl-textfield__label" for="appointment-email">Email</label>
                                <span class="mdl-textfield__error">Làm ơn nhập email hợp lệ!</span>
                            </div>
                        </div>
                            <div class="col-md-6">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-angle-double-down"></i>
                                    <select class="mdl-selectfield__select" id="sample-selectlist-1">
                                        <option value="1">Nam</option>
                                        <option value="2">Nữ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-angle-double-down"></i>
                                    <select class="mdl-selectfield__select" id="sample-selectlist-1">
                                        <option value="1">Khoa 1</option>
                                        <option value="2">Khoa 2</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-12">
							        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
							            <i class="fa fa-paper-plane"></i>
							            <textarea class="mdl-textfield__input" rows="5" id="sample-message-1"></textarea>
							            <label class="mdl-textfield__label" for="sample-message-1">Ghi chú (Ghi thêm yêu cầu hoặc đề nghị của bạn)</label>
							            <span class="mdl-textfield__error">Ghi thêm yêu cầu hoặc đề nghị của bạn</span>
							        </div>
							    </div>
                            </div>

                            <div class="schedule-col col-xl-12">
                                <div class="form-submit">
                    				<button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Đặt lịch khám</button>
                				</div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
                <div class="modal-body">
                    <div class="appointment-error"></div>
                </div>
            </div>
        </div>
    </div><!-- End Make an Appointment Modal -->
    <!-- Fixed Appointment Button at Bottom -->
    <div id="appointment-button" class="animated fadeInUp">
        <button id="appointment-now" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-button--raised"><i class="fa fa-plus"></i></button>
        <div class="mdl-tooltip mdl-tooltip--top" data-mdl-for="appointment-now">Make An Appointment</div>
    </div><!-- End Fixed Appointment Button at Bottom -->
    <!-- Start Footer Section -->
    <footer id="footer">
        <div class="layer-stretch">
            <!-- Start main Footer Section -->
            <div class="row layer-wrapper">
                <div class="col-md-4 footer-block">
                    <div class="footer-ttl"><p>Thông tin cơ bản</p></div>
                    <div class="footer-container footer-a">
                        <div class="tbl">
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-map-marker"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white">
                                        Việt Nam, Đà Nẵng<br />
                                        quận Liên Chiểu<br/> 
                                        phường Hòa Khánh Nam<br />
                                        đường Ngô Thì Nhậm
                                    </p>
                                </div>
                            </div>
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-phone"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white">0123.456.789</p>
                                </div>
                            </div>
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-envelope"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white">Rainie@Medical.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 footer-block">
                    <div class="footer-ttl"><p>Truy cập nhanh</p></div>
                    <div class="footer-container footer-b">
                        <div class="tbl">
                            <div class="tbl-row">
                                <ul class="tbl-cell">
                                    <li><a href="event-1.html">Về chúng tôi</a></li>
                                    <li><a href="contact.html">Liên lạc</a></li>
                                    <li><a href="gallery.html">Trang chủ</a></li>
                                    <li><a href="terms-conditions.html">Điều kiện và điều khoản</a></li>
                                </ul>
                                <ul class="tbl-cell">
                                    <li><a href="login.html">Đăng nhập</a></li>
                                    <li><a href="register.html">Đăng ký</a></li>
                                    <li><a href="myappointment.jsp">Đặt lịch hẹn</a></li>
                                    <li><a href="myprofile.html">Tài khoản</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 footer-block">
                    <div class="footer-ttl"><p>Theo dõi chúng tôi tại</p></div>
                    <div class="footer-container footer-c">
                        <ul class="social-list social-list-colored footer-social">
                            <li>
                                <label style = 'color: white'>Facebook:</label>
                                <a href="https://www.facebook.com/" target="_blank" id="footer-facebook" class="fa fa-facebook"></a>
                                <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-facebook">Facebook</span>
                            </li>
                            <li>
                            	<label style = 'color: white'>Youtube:</label>
                                <a href="https://www.youtube.com/" target="_blank" id="footer-youtube" class="fa fa-youtube"></a>
                                <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-youtube">Youtube</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- End main Footer Section -->
        <!-- Start Copyright Section -->
        <div id="copyright">
            <div class="layer-stretch">
                <div class="paragraph-medium paragraph-white">2023 - ALL RIGHTS RESERVED.</div>
            </div>
        </div><!-- End of Copyright Section -->
    </footer><!-- End of Footer Section -->

    <!-- **********Included Scripts*********** -->

    <!-- Jquery Library 2.1 JavaScript-->
    <script src='<c:url value="/resources/js/jquery-2.1.4.min.js" />'></script>
    <!-- Popper JavaScript-->
    <script src='<c:url value="/resources/js/popper.min.js" />'></script>
    <!-- Bootstrap Core JavaScript-->
    <script src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
    <!-- Material Design Lite JavaScript-->
    <script src='<c:url value="/resources/js/material.min.js" />'></script>
    <!-- Material Select Field Script -->
    <script src='<c:url value="/resources/js/mdl-selectfield.min.js" />'></script>
    <!-- Flexslider Plugin JavaScript-->
    <script src='<c:url value="/resources/js/jquery.flexslider.min.js" />'></script>
    <!-- Owl Carousel Plugin JavaScript-->
    <script src='<c:url value="/resources/js/owl.carousel.min.js" />'></script>
    <!-- Scrolltofixed Plugin JavaScript-->
    <script src='<c:url value="/resources/js/jquery-scrolltofixed.min.js" />'></script>
    <!-- Magnific Popup Plugin JavaScript-->
    <script src='<c:url value="/resources/js/jquery.magnific-popup.min.js" />'></script>
    <!-- WayPoint Plugin JavaScript-->
    <script src='<c:url value="/resources/js/jquery.waypoints.min.js" />'></script>
    <!-- CounterUp Plugin JavaScript-->
    <script src='<c:url value="/resources/js/jquery.counterup.js" />'></script>
    <!-- SmoothScroll Plugin JavaScript-->
    <script src='<c:url value="/resources/js/smoothscroll.min.js" />'></script>
    <!--Custom JavaScript for Klinik Template-->
    <script src='<c:url value="/resources/js/custom.js" />'></script>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-93901876-1', 'auto');
        ga('send', 'pageview');
    </script>
</body>
</html>