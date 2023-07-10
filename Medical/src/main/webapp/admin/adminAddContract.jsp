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
    <link href='<c:url value="/resources/images/medical-support.png" />' rel="icon" type="image/x-icon">
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
                	<img src = '<c:url value="/resources/images/medical-support.png"></c:url>'>
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
    <!-- Start My Profile Section -->
    <form action = "<%=request.getContextPath()%>/addContract" onsubmit = "return(validate());">
    <div id="profile-page" class="layer-stretch">
        <div style = "width: 95%;" class="layer-wrapper">
            <div class="theme-material-card text-center">
            <p style = "text-align: center;"class="font-16">Thêm một hợp đồng cho bác sĩ mới</p>
                <div class="row">
                    <div class="col-md-5">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <input class="mdl-textfield__input" type="text" id="name" name = "name">
                            <label class="mdl-textfield__label" for="name">Tên bác sĩ</label>
                            <span id="name-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span> 
                        </div>
                        </div>
                        <div class = "col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-users"></i>
                            <input class="mdl-textfield__input" type="text" id="nationality" name = "nationality">
                            <label class="mdl-textfield__label" for="profile-nationality">Dân tộc</label>
                            <span id="nationality-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                        <div class = >
                        </div>
                        <div class="col-md-3">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-phone"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[0-9]{10,11}" id="phone" name = "phone">
                            <label class="mdl-textfield__label" for="phone">Số điện thoại</label>
                            <span id="phone-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                        <div class = "col-md-9">
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-map-marker"></i>
                            <input class="mdl-textfield__input" type="text" id="iplace" name ="iplace">
                            <label class="mdl-textfield__label" for="iplace">Nơi cấp CMND</label>
                            <span id="iplace-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                    </div>
                    <div class="col-md-3">
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-address-card"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[0-9]+" id="identity" name = "identity">
                            <label class="mdl-textfield__label" for="identity">CMND/CCCD</label>
                            <span id="identity-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon text-left">
					        <i class="fa fa-venus-mars"></i>
					        <label  for="profile-gender">Giới tính</label>
					        <select class="mdl-selectfield__select text-center" id="gender" name = "gender">
					        	<option value = "" selected>--Chọn giới tính--</option> 
					            <option value="Nam" >Nam</option>
					            <option value="Nữ" >Nữ</option>
					        </select>
					        <span id="gender-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn giới tính</span>
					    </div>
                    </div>
                    <div class = "col-md-3">
                         <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon text-left">
				        <i class="fa fa-building-o"></i>
				        <label  for="graduate">Trình độ học vấn</label>
				        <select class="mdl-selectfield__select text-center" id="graduate" name = "idGraduate">
				        <option value = "" selected>--Chọn trình độ học vấn--</option> 
				        <c:forEach items="${graduate}" var="item">
				            <option value="${item.idGraduate }">${item.graduate }</option>
				            </c:forEach>
				        </select>
				        <span id="graduate-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn trình độ học vấn</span>
				    </div>
                    </div>
                        <div class="col-sm-3">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon text-left">
                            <i class="fa fa-calendar"></i>
                            <label  for="profile-birthdate">Ngày sinh</label>
                            <input class="mdl-textfield__input" type="date" id="birthday" name = "birthday">
                            <span id="birthday-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn ngày sinh</span>
                        </div>
						</div>
						<div class="col-md-3">
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon text-left">
                            <i class="fa fa-calendar-o"></i>
                            <label for="profile-idate">Ngày cấp CMND/CCCD</label>
                            <input class="mdl-textfield__input" type="date" id="idate" name = "idate">
                            <span id="idate-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn ngày cấp CMND/CCCD</span>
                        </div>
						</div>
						<div class="col-md-12">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-location-arrow"></i>
                            <input class="mdl-textfield__input" type="text" id="address1" name = "address1">
                            <label class="mdl-textfield__label" for="address1">Địa chỉ thường trú (Ghi rõ tên đường/tổ)</label>
                            <span id="address1-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                        <div class="col-md-12">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-location-arrow"></i>
                            <input class="mdl-textfield__input" type="text" id="address2" name = "address2">
                            <label class="mdl-textfield__label" for="address2">Địa chỉ liên lạc (Ghi rõ tên đường/tổ)</label>
                            <span id="address2-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
						<div class="col-md-6">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon text-left">
                            <i class="fa fa-calendar-o"></i>
                            <label for="create-date">Ngày bắt đầu hợp đồng</label>
                            <input class="mdl-textfield__input" type="date" id="create-date" name = "createdate">
                            <span id="create-date-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn ngày bắt đầu hợp đồng</span>
                        </div>
						</div>
						<div class="col-md-6">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon text-left">
                            <i class="fa fa-calendar"></i>
                            <label  for="end-date">Ngày kết thúc hợp đồng</label>
                            <input class="mdl-textfield__input" type="date" id="end-date" name = "enddate">
                            <span id="end-date-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Làm ơn chọn ngày kết thúc hợp đồng</span>
                        </div>
                        </div>
                        <div class= "col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-money"></i>
                            <input class="mdl-textfield__input" type="text" pattern = "[0-9]*" id="salary" name = "salary">
                            <label class="mdl-textfield__label" for="salary">Lương</label>
                            <span id="salary-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                         <div class = "col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-credit-card"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="banknumber" name = "banknumber">
                            <label class="mdl-textfield__label" for="banknumber">Số tài khoản</label>
                            <span id="banknumber-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                        <div class = "col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-university"></i>
                            <input class="mdl-textfield__input" type="text" id="bank" name = "bank">
                            <label class="mdl-textfield__label" for="bank">Ngân hàng</label>
                            <span id="bank-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        </div>
                        <div class = "col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-clock-o"></i>
                            <input class="mdl-textfield__input" type="number" min = "0" max = "10" id="worktime" name = "worktime">
                            <label class="mdl-textfield__label" for="worktime">Giờ làm việc (trên 1 ngày)</label>
                            <span id="worktime-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                        <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon text-left">
				        <i class="fa fa-building-o"></i>
				        <label  for="status">Khoa</label>
				        <select class="mdl-selectfield__select text-center" id="department" name = "idDepartment">
				        <option value = "" selected>--Chọn khoa--</option>
				        <c:forEach items="${department}" var="item">
				            <option value="${item.idDepartment }">${item.departmentName }</option>
				            </c:forEach>
				        </select>
				        <span id="department-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
				    </div>
                    </div>
                    <div class = "col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-clock-o"></i>
                            <input class="mdl-textfield__input" type="number" min = "0" max = "6" id="resttime" name = "resttime">
                            <label class="mdl-textfield__label" for="rest-time">Thời gian nghỉ (trên 1 ngày)</label>
                            <span id="resttime-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                         <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon text-left">
					        <i class="fa fa-user-md"></i>
					        <label for="position">Vị trí làm việc</label>
					        <select class="mdl-selectfield__select text-center" id="position" name = "idPosition">
					        <option value = "" selected>--Chọn vị trí làm việc--</option>
					             <c:forEach items="${position}" var="item">
					            	<option value="${item.idPosition }">${item.positionName }</option>
					            </c:forEach>
					        </select>
					        <span id="position-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
				    </div>
                    </div>
                    <div class = "col-md-4">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-calendar-times-o"></i>
                            <input class="mdl-textfield__input" type="number" min = "0" id="leavetime" name = "leavetime">
                            <label class="mdl-textfield__label" for="leave-time">Thời gian nghỉ phép (Trên 1 tháng)</label>
                            <span id="leavetime-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
                        </div>
                         <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon text-left">
				        <i class="fa fa-user-md"></i>
				        <label for="payment">Hình thức trả lương</label>
				        <select class="mdl-selectfield__select text-center" id="payment" name = "idPayment">
				        <option value = "" selected>--Chọn hình thức trả lương--</option>
				        <c:forEach items="${payment}" var="item">
				            <option value="${item.idPayment }">${item.payment }</option>
				            </c:forEach>
				        </select>
				        <span id="payment-invalid" style="color: #eb1c26; margin-top: 10px; display:none">Trường này không được để trống</span>
				    </div>
                    </div>     
            </div>
                <div class="form-submit text-center">
                    <button type = "submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Lưu</button>
                </div>
            </div>  
        </div>
    </div>
 </form><!-- End My Profile Section -->
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
    	function validate() {
    		let check = true;
			if( document.getElementById("name").value == "" ) {
	            document.getElementById("name-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("name-invalid").style.display = "none";
	         }
			if( document.getElementById("nationality").value == "" ) {
	            document.getElementById("nationality-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("nationality-invalid").style.display = "none";
	         }
			if( document.getElementById("phone").value == "" ) {
	            document.getElementById("phone-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("phone-invalid").style.display = "none";
	         }
			if( document.getElementById("iplace").value == "" ) {
	            document.getElementById("iplace-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("iplace-invalid").style.display = "none";
	         }
			if( document.getElementById("identity").value == "" ) {
	            document.getElementById("identity-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("identity-invalid").style.display = "none";
	         }
			if( document.getElementById("gender").value == "" ) {
	            document.getElementById("gender-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("gender-invalid").style.display = "none";
	         }
			if( document.getElementById("graduate").value == "" ) {
	            document.getElementById("graduate-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("graduate-invalid").style.display = "none";
	         }
			if( document.getElementById("birthday").value == "" ) {
	            document.getElementById("birthday-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("birthday-invalid").style.display = "none";
	         }
			if( document.getElementById("idate").value == "" ) {
	            document.getElementById("idate-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("idate-invalid").style.display = "none";
	         }
			if( document.getElementById("address1").value == "" ) {
	            document.getElementById("address1-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("address1-invalid").style.display = "none";
	         }
			if( document.getElementById("address2").value == "" ) {
	            document.getElementById("address2-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("address2-invalid").style.display = "none";
	         }
			if( document.getElementById("create-date").value == "" ) {
	            document.getElementById("create-date-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("create-date-invalid").style.display = "none";
	         }
			if( document.getElementById("end-date").value == "" ) {
	            document.getElementById("end-date-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("end-date-invalid").style.display = "none";
	         }
			if( document.getElementById("salary").value == "" ) {
	            document.getElementById("salary-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("salary-invalid").style.display = "none";
	         }
			if( document.getElementById("banknumber").value == "" ) {
	            document.getElementById("banknumber-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("banknumber-invalid").style.display = "none";
	         }
			if( document.getElementById("bank").value == "" ) {
	            document.getElementById("bank-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("bank-invalid").style.display = "none";
	         }
			if( document.getElementById("worktime").value == "" ) {
	            document.getElementById("worktime-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("worktime-invalid").style.display = "none";
	         }
			if( document.getElementById("department").value == "" ) {
	            document.getElementById("department-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("department-invalid").style.display = "none";
	         }
			if( document.getElementById("resttime").value == "" ) {
	            document.getElementById("resttime-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("resttime-invalid").style.display = "none";
	         }
			if( document.getElementById("position").value == "" ) {
	            document.getElementById("position-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("position-invalid").style.display = "none";
	         }
			if( document.getElementById("leavetime").value == "" ) {
	            document.getElementById("leavetime-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("leavetime-invalid").style.display = "none";
	         }
			if( document.getElementById("payment").value == "" ) {
	            document.getElementById("payment-invalid").style.display = "block";
	            check = false;
	         } else {
	        	 document.getElementById("payment-invalid").style.display = "none";
	         }
			
			return check;
    	}
    </script>
    <script>
	    var today = new Date().toISOString().split('T')[0];
	    document.getElementById("create-date").setAttribute("min", today);
	    document.getElementById("end-date").setAttribute("min", today);
	</script>

</html>