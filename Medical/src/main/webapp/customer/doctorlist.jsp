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
    <!-- Start page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Danh sách bác sĩ</h1>
                <p><a href="#">Trang chủ</a> &#8594; <span>Danh sách bác sĩ</span></p>
            </div>
        </div>
    </div><!-- End page Title Section -->
    <!-- Start Doctor List Section -->
    <div id="doctor-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                    <c:if  test="${empty doctorlist}">
						   <div style = "width:100%; color: #d30b0b;" class="alert alert-danger" role="alert">
                                <strong>Xin lỗi!</strong> Không tìm thấy kết quả phù hợp với thông tin bạn tìm
                                <button type="button" class="close" data-dismiss="alert">×</button>
                            </div>
						</c:if>
                        <div class="col-md-12">
                         <c:forEach items="${doctorlist}" var="item">
                            <div class="theme-block theme-block-hover">
                                <div class="theme-block-picture">
                                    <img src="<c:url value="${item.imageUrl}" />" alt="">
                                </div>
                                <div class="doctor-name">
                                    <h4><a href="<%=request.getContextPath()%>/showDoctorInfo?idDoctor=${item.idDoctor}&idDepartment=${item.department.idDepartment}">${item.doctorName}</a></h4>
                                </div>
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        <p>${item.department.departmentName }</p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <div class="doctor-details-extra-3">
                                            <p><i class="fa fa-shield"></i>${item.position.positionName }</p>
                                            <p><i class="fa fa-mortar-board"></i>${item.graduate.graduate }</p>
                                            <p><i class="fa fa-star"></i>Kinh nghiệm : ${item.expYear } năm</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                              </c:forEach>
                        </div>
					</div>
				<ul class="theme-pagination">
				    <c:choose>
				        <c:when test="${currentPage > 1 && (not empty idDepartment and empty search and empty experience)}">
				            <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage - 1}&idDepartment=${idDepartment}">&laquo; Previous</a></li>
				        </c:when>
				        <c:when test="${currentPage > 1 && (empty idDepartment and not empty search and empty experience)}">
				            <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage - 1}&search=${search}">&laquo; Previous</a></li>
				        </c:when>
				        <c:when test="${currentPage > 1 && (empty idDepartment and empty search and not empty experience)}">
				            <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage - 1}&experience=${experience}">&laquo; Previous</a></li>
				        </c:when>
				        <c:otherwise>
				            <li><span>&laquo; Previous</span></li>
				        </c:otherwise>
				    </c:choose>
				    
				    <c:forEach begin="1" end="${totalPages}" var="pageNumber">
				        <c:choose>
				            <c:when test="${pageNumber == currentPage}">
				                <li class="active"><span>${pageNumber}</span></li>
				            </c:when>
				            <c:otherwise>
				                <c:choose>
				                    <c:when test="${not empty idDepartment and empty search and empty experience}">
				                        <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${pageNumber}&idDepartment=${idDepartment}">${pageNumber}</a></li>
				                    </c:when>
				                    <c:when test="${empty idDepartment and not empty search and empty experience}">
				                        <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${pageNumber}&search=${search}">${pageNumber}</a></li>
				                    </c:when>
				                    <c:when test="${empty idDepartment and empty search and not empty experience}">
				                        <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${pageNumber}&experience=${experience}">${pageNumber}</a></li>
				                    </c:when>
				                    <c:otherwise>
				                        <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${pageNumber}&idDepartment=${idDepartment}&experience=${experience}&search=${search}">${pageNumber}</a></li>
				                    </c:otherwise>
				                </c:choose>
				            </c:otherwise>
				        </c:choose>
				    </c:forEach>
				    
				    <c:choose>
				        <c:when test="${currentPage < totalPages}">
				            <c:choose>
				                <c:when test="${not empty idDepartment and empty search and empty experience}">
				                    <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage + 1}&idDepartment=${idDepartment}">Next &raquo;</a></li>
				                </c:when>
				                <c:when test="${empty idDepartment and not empty search and empty experience}">
				                    <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage + 1}&search=${search}">Next &raquo;</a></li>
				                </c:when>
				                <c:when test="${empty idDepartment and empty search and not empty experience}">
				                    <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage + 1}&experience=${experience}">Next &raquo;</a></li>
				                </c:when>
				                <c:otherwise>
				                    <li><a href="<%=request.getContextPath()%>/showAllDoctor?page=${currentPage + 1}&idDepartment=${idDepartment}&experience=${experience}&search=${search}">Next &raquo;</a></li>
				                </c:otherwise>
				            </c:choose>
				        </c:when>
				        <c:otherwise>
				            <li><span>Next &raquo;</span></li>
				        </c:otherwise>
				    </c:choose>
				</ul>

                </div>
                <div class="col-lg-4">
                    <div class="theme-material-card text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                           <form class="searchform" action="<%=request.getContextPath()%>/showAllDoctor" method="GET">
						    <input type="hidden" name="page" value="${currentPage}" />
						    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
						        <input class="mdl-textfield__input" type="text" id="sidebar-search" name="search" value="${search}">
						        <label class="mdl-textfield__label" for="sidebar-search">Tìm theo tên bác sĩ</label>
						        <button class="fa fa-search search-button" type="submit"></button>
						    </div>
						</form>
                        </div>
                    </div>
                      <div class="sidebar">
                        <div class="sub-ttl">Tìm bác sĩ theo khoa</div>
                        <ul class="category-list">
                        	<c:forEach items="${department}" var="item">
                            <li><a href="<%=request.getContextPath()%>/showAllDoctor?idDepartment=${item.idDepartment }"><i class="fa fa-newspaper-o"></i>${item.departmentName }</a><span>(Số B.Sĩ:${item.numOfDoctors })</span></li>
                            </c:forEach>
                        </ul>
                    </div>
                     <div class="theme-material-card">
					    <div class="sub-ttl">Tìm theo kinh nghiệm</div>
					     <a style = "display:none;" class="theme-tag theme-tag-1 ${selectedExperience == null || selectedExperience == '0' ? 'theme-tag-colored' : ''}"></a>
					    <a href="<%=request.getContextPath()%>/showAllDoctor?experience=1"
					       class="theme-tag theme-tag-1 ${selectedExperience == null || selectedExperience == '1' ? 'theme-tag-colored' : ''}">Dưới 1 năm</a>
					    <a href="<%=request.getContextPath()%>/showAllDoctor?experience=2"
					       class="theme-tag theme-tag-1 ${selectedExperience == '2' ? 'theme-tag-colored' : ''}">1-3 năm</a>
					    <a href="<%=request.getContextPath()%>/showAllDoctor?experience=3"
					       class="theme-tag theme-tag-1 ${selectedExperience == '3' ? 'theme-tag-colored' : ''}">3-7 năm</a>
					    <a href="<%=request.getContextPath()%>/showAllDoctor?experience=4"
					       class="theme-tag theme-tag-1 ${selectedExperience == '4' ? 'theme-tag-colored' : ''}">7-10 năm</a>
					    <a href="<%=request.getContextPath()%>/showAllDoctor?experience=5"
					       class="theme-tag theme-tag-1 ${selectedExperience == '5' ? 'theme-tag-colored' : ''}">Trên 10 năm</a>
					</div>

                    <div class="theme-material-card">
                        <div class="sub-ttl">Dịch vụ</div>
                        <div class="flexslider theme-flexslider">
                            <ul class="slides">
                            <c:forEach items="${service}" var="item">
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="<c:url value="${item.image1}" />" alt="" />
                                        <h4>${item.name}</h4>
                                        <a href="<%=request.getContextPath()%>/showServiceInfo?id=${item.id}" class="anchor-icon pull-right">Đọc thêm<i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="theme-material-card">
                        <div class="sub-ttl">Bài viết gần đây</div>
                       <c:forEach items="${recent}" var="item">
                        <a href="#" class="row blog-recent">
                            <div class="col-4 blog-recent-img">
                                <img class="img-responsive img-thumbnail" src="<c:url value="${item.image1 }" />" alt="">
                            </div>
                            <div class="col-8 blog-recent-post">
                                <h4>${item.title }</h4>
                                <p>${item.createDate }</p>
                            </div>
                        </a>
                        </c:forEach>
                    </div>
                    <div class="theme-material-card">
                        <div class="sub-ttl">Thời gian làm việc</div>
                        <ul class="timetable">
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 2</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 3</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 4</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 5</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 6</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Thứ 7</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 SA - 5:00 CH</a></li>
                            <li><a class="pull-left"><i class="fa fa-calendar"></i>Chủ nhật</a><a class="pull-right">Ngày lễ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor List Section -->
    <!-- Start Department List Section -->
    <div class="parallax-background parallax-background-2">
        <div class="layer-stretch">
            <div class="layer-wrapper layer-bottom-10">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Khoa</h3>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-female"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Phụ khoa</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa phụ khoa</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-thermometer"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Y học nhiệt đới</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa y học nhiệt đới</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-stethoscope"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Tim mạch</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa tim mạch</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-bed"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Đa khoa</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa đa khoa</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-eye"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Mắt</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa mắt</p>
                        </div>
                    </div>
                    </div>
                    <div class="col-md-4">
                        <div class="department-block">
                            <div class="tbl-cell department-icon"><i class="fa fa-glass"></i></div>
                            <div class="tbl-cell department-detail">
                                <h5>Tiêu hóa</h5>
                                <p class="paragraph-small paragraph-white">Thông tin khoa tiêu hóa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Department List Section -->
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