<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='<c:url value="/resources/css/style-page-admin.css" />' rel="stylesheet" type ="text/css"> 
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <!-- Meta Description Tag -->
    <meta name="Description" content="Hỗ trợ y tế">
    <!-- Favicon Icon -->
    <link href='<c:url value="/resources/images/eevee.png" />' rel="icon" type="image/x-icon">
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
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                	<img src = '<c:url value="/resources/images/eevee.png"></c:url>'>
                </span>

                <div class="text logo-text">
                    <span class="name">${cookie.adminEmail.value}</span>
                    <span class="profession">Admin Site</span>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>
        <div class="menu-bar">
            <div class="menu">
                <ul class="menu-links">
                <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/showUpcomingAppointment">
                            <i class='bx bx-home-alt icon'></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowAllAppointment">
                            <i class='bx bx-calendar-check icon' ></i>
                            <span class="text nav-text">Quản lý lịch hẹn</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowDoctor">
                            <i class='fa fa-user-md icon' ></i>
                            <span class="text nav-text">Quản lý bác sĩ</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowAccount">
                            <i class='bx bxs-user-account icon'></i>
                            <span class="text nav-text">Quản lý tài khoản</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowBlog">
                            <i class='fa fa-newspaper-o icon'></i>
                            <span class="text nav-text">Quản lý bài viết</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowDepartment">
                            <i class='fa fa-building-o icon' ></i>
                            <span class="text nav-text">Quản lý khoa</span>
                        </a>
                    </li>
					<li class="nav-link">
                        <a href="<%=request.getContextPath()%>/adminShowService">
                            <i class='bx bx-donate-heart icon' ></i>
                            <span class="text nav-text">Quản lý dịch vụ</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="bottom-content">
                <li class="">
                    <a href="<%=request.getContextPath()%>/logout">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>
                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>

    <section style = "height:auto;"  class="home">
        		    <!-- Start Doctor List Section -->
    <div id="doctor-page" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="row">
                <div class="col-lg-12">
                <c:if test="${not empty add}">
						   <div class="alert alert-success" role="alert">
						        <strong>Thông báo</strong> Đã thêm tài khoản thành công!!!
						        <button type="button" class="close" data-dismiss="alert">×</button>
						    </div>
						</c:if>
						<c:if test="${not empty delete}">
						   <div class="alert alert-success" role="alert">
						        <strong>Thông báo</strong> Đã xóa tài khoản thành công!!!
						        <button type="button" class="close" data-dismiss="alert">×</button>
						    </div>
						</c:if>
                    <div class="row">
                       <div style = "width: 95%;" class = "table-wrapper">
        		<div class="theme-material-card">
                            <p class="font-16 text-center">Danh sách tài khoản</p>
                            <a href = "<%=request.getContextPath()%>/getToAddAccount"><button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect button button-primary button-sm m-1">Thêm tài khoản mới</button></a>
                            <table class="table">
                                <thead>
                                    <tr class="table-primary-head">
                                        <th class="text-center">Email</th>
                                        <th class="text-center">Quyền</th>
                                        <th class="text-center">Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${account}" var="item">
                                    <tr>
                                        <td class="text-center">${item.email}</td>
                                        <td class="text-center">${item.role }</td>
                                         <td class="text-center">
                                            <a href="<%=request.getContextPath()%>/adminShowAccountInfo?id= ${item.idAccount}" data-toggle="tooltip" data-placement="top" title="Sửa"><i class="fa fa-pencil color-dark"></i></a>
                                            <a onClick="confirmDelete(${item.idAccount })" data-toggle="tooltip" data-placement="top" title="Xóa"><i class="fa fa-close font-16 color-red m-l-10"></i></a>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                   	</div>
					</div>
				 <ul class="theme-pagination text-center">
					    <c:choose>
					        <c:when test="${currentPage > 1}">
					            <li><a href="<%=request.getContextPath()%>/adminShowAccount?page=${currentPage - 1}">&laquo; Previous</a></li>
					        </c:when>
					        <c:otherwise>
					            <li><span>&laquo; Previous</span></li>
					        </c:otherwise>
					    </c:choose>
					
					    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
					        <c:choose>
					            <c:when test="${loop.index == currentPage}">
					                <li class="active"><span>${loop.index}</span></li>
					            </c:when>
					            <c:otherwise>
					                <li><a href="<%=request.getContextPath()%>/adminShowAccount?page=${loop.index}">${loop.index}</a></li>
					            </c:otherwise>
					        </c:choose>
					    </c:forEach>
					
					    <c:choose>
					        <c:when test="${currentPage < totalPages}">
					            <li><a href="<%=request.getContextPath()%>/adminShowAccount?page=${currentPage + 1}">Next &raquo;</a></li>
					        </c:when>
					        <c:otherwise>
					            <li><span>Next &raquo;</span></li>
					        </c:otherwise>
					    </c:choose>
					</ul>
                </div>
            </div>
        </div>
    </div><!-- End Doctor List Section -->
        		
    </section>
</body>
    <script src = '<c:url value="/resources/js/js-page-admin.js" />' ></script>
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
function confirmDelete(id) {
	  if (confirm("Bạn có chắc muốn xóa tài khoản này không?")) {
	    window.location.href = "adminDeleteAccount?id=" + id
	  }
	}
</script>
</html>