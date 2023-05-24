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
								<li><a href="service.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Dịch vụ</a></li>
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
                                <li><a href="chat.jsp" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Tư vấn sức khỏe</a></li>
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
    <!-- Start page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Thông tin bác sĩ</h1>
                <p><a href="#">Trang chủ</a> &#8594; <a href="#">Danh sách bác sĩ</a> &#8594; <span>Thông tin bác sĩ</span></p>
            </div>
        </div>
    </div><!-- End page Title Section -->
     <!-- Start Doctor List Section -->
    <div id="doctor-page" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-10">
            <div class="theme-material-card">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="doctorp-name">
                            <h3>Bác sĩ 1</h3>
                            <span class="badge badge-primary">Chức vụ</span>
                            <p>Chuyên gia não bộ</p>
                            <div class="doctorp-social">
                                <ul class="social-list social-list-bordered">
                                    <li>
                                        <a href="#" id="sample-facebook-6" class="fa fa-facebook rounded"></a>
                                        <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="sample-facebook-6">Facebook</span>
                                    </li>
                                    <li>
                                        <a href="#" id="sample-instagram-6" class="fa fa-instagram rounded"></a>
                                        <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="sample-instagram-6">Instagram</span>
                                    </li>
                                    <li>
                                        <a href="#" id="sample-youtube-6" class="fa fa-youtube rounded"></a>
                                        <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="sample-youtube-6">Youtube</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="doctor-details-extra text-left p-0 pt-4">
                            <p class="text-center"><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                            <p class="text-center"><i class="fa fa-trophy"></i>8 giải thưởng</p>
                            <p class="text-center"><i class="fa fa-star"></i>17 năm kinh nghiệm</p>
                            <p class="text-center"><i class="fa fa-money"></i>Phí trung bình: $100</p>
                        </div>
                        <p class="text-muted p-2">Thông tin bác sĩ</p>
                    </div>
                    <div class="col-md-8">
                        <div class="sub-ttl font-20 pt-4">Kỹ năng và thành tựu</div>
                        <div class="doctor-skills">
                            <p class="font-14">Não bộ<span class="badge badge-primary float-right">75%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Tim mạch<span class="badge badge-danger float-right">65%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Tiêu hóa<span class="badge badge-success float-right">80%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Đa khoa<span class="badge badge-warning float-right">87%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Thần kinh<span class="badge badge-primary float-right">55%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="sub-ttl font-20 pt-4">Dịch vụ</div>
                        <ul class="category-list p-3 pl-6">
                            <li><a href="#"><i class="fa fa-stethoscope"></i>Tim mạch</a></li>
                            <li><a href="#"><i class="fa fa-child"></i>Hộ sinh</a></li>
                            <li><a href="#"><i class="fa fa-heartbeat"></i>Thần kinh</a></li>
                            <li><a href="#"><i class="fa fa-wheelchair-alt"></i>Chăm sóc da</a></li>
                            <li><a href="#"><i class="fa fa-flask"></i>Laboratory Services</a></li>
                            <li><a href="#"><i class="fa fa-certificate"></i>Chụp phim</a></li>
                            <li><a href="#"><i class="fa fa-h-square"></i>Tiêu hóa</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-8">
                        <div class="sub-ttl pt-4 font-20">Bằng cấp</div>
                        <table class="table table-hover">
                            <thead>
                                <tr class="table-primary-head">
                                    <th>#</th>
                                    <th>Tên bằng</th>
                                    <th>Trường</th>
                                    <th>Ngày</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Bằng 1</td>
                                    <td>Trường 1</td>
                                    <td><span class="badge badge-danger badge-pill">2001</span></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Bằng 2</td>
                                    <td>Trường 2</td>
                                    <td><span class="badge badge-warning badge-pill">2004</span></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Bằng 3</td>
                                    <td>Trường 3</td>
                                    <td><span class="badge badge-info badge-pill">2006</span></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Bằng 4</td>
                                    <td>Trường 4</td>
                                    <td><span class="badge badge-success badge-pill">2008</span></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Bằng 5</td>
                                    <td>Trường 5</td>
                                    <td><span class="badge badge-danger badge-pill">2011</span></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Bằng 6</td>
                                    <td>Trường 6</td>
                                    <td><span class="badge badge-warning badge-pill">2014</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-sm-4">
                        <div class="sub-ttl pt-4 font-20">Thời gian làm việc</div>
                        <div class="card mb-5">
                            <div class="card-body">
                                <ul class="timetable">
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ hai</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ ba</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ tư</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ năm</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ sáu</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ bảy</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                                    <li><a class="pull-left"><i class="fa fa-calendar"></i>Chủ nhật</a><a class="pull-right">Ngày lễ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">

                    </div>
                </div>
            </div>
            <div class="theme-material-card">
                <div class="sub-ttl">Bác sĩ khác</div>
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="theme-block">
                            <div class="theme-block-picture doctor-picture-2">
                                <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                            </div>
                            <div class="doctor-name doctor-name-2">
                                <h4><a>Bác sĩ 1</a></h4>
                            </div>
                            <div class="theme-block-hidden">
                                <div class="doctor-name">
                                    <h4><a>Bác sĩ 1</a></h4>
                                </div>
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        <p>Khoa 1</p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <p><i class="fa fa-shield"></i>CEO &amp; Founder</p>
                                        <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                        <p><i class="fa fa-trophy"></i>Giải thưởng: 8</p>
                                        <p><i class="fa fa-star"></i>Kinh nghiệm: 17 năm</p>
                                    </div>
                                </div>
                                <div class="doctor-social">
                                    <ul class="social-list social-list-bordered social-list-rounded">
                                        <li><a href="#" target="_blank" class="fa fa-facebook"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-twitter"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-google"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-instagram"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-linkedin"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="theme-block">
                            <div class="theme-block-picture doctor-picture-2">
                                <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                            </div>
                            <div class="doctor-name doctor-name-2">
                                <h4><a>Bác sĩ 2</a></h4>
                            </div>
                            <div class="theme-block-hidden">
                                <div class="doctor-name">
                                    <h4><a>Bác sĩ 2</a></h4>
                                </div>
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        <p>Khoa 2</p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <p><i class="fa fa-shield"></i>C00s</p>
                                        <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                        <p><i class="fa fa-trophy"></i>Giải thưởng: 5</p>
                                        <p><i class="fa fa-star"></i>Kinh nghiệm: 9 năm</p>
                                    </div>
                                </div>
                                <div class="doctor-social">
                                    <ul class="social-list social-list-bordered social-list-rounded">
                                        <li><a href="#" target="_blank" class="fa fa-facebook"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-google"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="theme-block">
                            <div class="theme-block-picture doctor-picture-2">
                                <img src="<c:url value="/resources/images/test.jpg" />" alt="">
                            </div>
                            <div class="doctor-name doctor-name-2">
                                <h4><a>Bác sĩ 3</a></h4>
                            </div>
                            <div class="theme-block-hidden">
                                <div class="doctor-name">
                                    <h4><a>Bác sĩ 3</a></h4>
                                </div>
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        <p>Khoa 3</p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <p><i class="fa fa-shield"></i>Intern</p>
                                        <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                        <p><i class="fa fa-trophy"></i>Giải thưởng: 12</p>
                                        <p><i class="fa fa-star"></i>Kinh nghiệm: 6 năm</p>
                                    </div>
                                </div>
                                <div class="doctor-social">
                                    <ul class="social-list social-list-bordered social-list-rounded">
                                        <li><a href="#" target="_blank" class="fa fa-facebook"></a></li>
                                        <li><a href="#" target="_blank" class="fa fa-google"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor List Section -->
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
        <div class="mdl-tooltip mdl-tooltip--top" data-mdl-for="appointment-now">Đặt lịch hẹn</div>
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
</body>
</html>