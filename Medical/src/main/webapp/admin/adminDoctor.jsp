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
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                	<img src = '<c:url value="/resources/images/eevee.png"></c:url>'>
                </span>

                <div class="text logo-text">
                    <span class="name">Rainie</span>
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
                        <a href="Inventory.jsp">
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
    <form method="POST" action="<%=request.getContextPath()%>/adminEditDoctor" enctype="multipart/form-data">
    <div id="profile-page" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="theme-material-card">
            <p style = "text-align: center;"class="font-16">Thông tin bác sĩ</p>
            <div id="doctor-page" class="layer-stretch">
        <div class="layer-wrapper layer-bottom-5">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="theme-img theme-img-scalerotate">
                            <img src="<c:url value="${doctorInfo.imageUrl}" />" alt="">
                        </div>
						<input type="file" name="file" />
                   	</div>
                   	<div class="col-sm-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <input style = "display:none;" name  = "id" value = "${doctorInfo.idDoctor }">
                            <input class="mdl-textfield__input" type="text" id="profile-name" readonly value = "${doctorInfo.doctorName }">
                            <label class="mdl-textfield__label" for="profile-name">Tên bác sĩ</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-calendar"></i>
                            <input class="mdl-textfield__input" type="text" id="profile-birthdate" readonly value = "${doctorInfo.birthDay }">
                            <label class="mdl-textfield__label" for="profile-birthdate">Ngày sinh</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-venus-mars"></i>
                            <input class="mdl-textfield__input" type="text" id="profile-address-1" readonly value = "${doctorInfo.gender }">
                            <label class="mdl-textfield__label" for="profile-address-1">Giới tính</label>
                        </div>
                   	</div>
                   	<div class="col-md-4">
				    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
				        <i class="fa fa-building-o"></i>
				        <select class="mdl-selectfield__select" id="status" name = "idDepartment">
				        	<c:forEach items="${department}" var="item">
				            <option value="${item.idDepartment }" <c:out value = "${item.departmentName.equals(doctorInfo.department.departmentName)? 'selected' : ''}"/>>${item.departmentName}</option>
				            </c:forEach>
				        </select>
				    </div>
				    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
				        <i class="fa fa-user-md"></i>
				        <select class="mdl-selectfield__select" id="status" name = "idPosition">
				        	<c:forEach items="${position}" var="item">
				            <option value="${item.idPosition }" <c:out value = "${item.positionName.equals(doctorInfo.position.positionName)? 'selected' : ''}"/>>${item.positionName}</option>
				            </c:forEach>
				        </select>
				    </div>
				    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
				        <i class="fa fa-check-square-o"></i>
				        <select class="mdl-selectfield__select" id="status" name = "isWorking">
				            <option value="Vẫn còn làm việc" ${doctorInfo.isWorking == 'Vẫn còn làm việc' ? 'selected' : ''}>Vẫn còn làm việc</option>
				            <option value="Không còn làm việc nữa" ${doctorInfo.isWorking == 'Không còn làm việc nữa' ? 'selected' : ''}>Không còn làm việc nữa</option>
				        </select>
				    </div>
				</div>
                 </div>
             </div>
         </div>
                <div class="row">
                    <div class="col-md-4">
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
						    <i class="fa fa-money"></i>
						    <input class="mdl-textfield__input" type="text" pattern="[0-9]+" id="profile-salary" name="salary" required value="${doctorInfo.salary}">
						    <label class="mdl-textfield__label" for="profile-salary">Lương</label>
						    <span class="mdl-textfield__error">Làm ơn nhập số tiền lương hợp lệ!</span>
						</div>
                    </div>
                    <div class="col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-calendar-o"></i>
                            <input class="mdl-textfield__input" type="text" id="profile-exp" name="experience" pattern="[0-9]+" required value = "${doctorInfo.expYear }">
                            <label class="mdl-textfield__label" for="profile-exp">Năm kinh nghiệm</label>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-mobile"></i>
                            <input class="mdl-textfield__input" type="text" id="profile-exp" name="phone" pattern="[0-9]{10}" required value = "${doctorInfo.phone }">
                            <label class="mdl-textfield__label" for="profile-exp">Số điện thoại</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-sticky-note-o"></i>
                            <textarea class="mdl-textfield__input" rows="5" required name = "information" id="profile-about">${doctorInfo.information }</textarea>
                            <label class="mdl-textfield__label" for="profile-about">Thông tin thêm</label>
                        </div>
                    </div>
                </div>
                <div class="form-submit text-center">
               		<button onClick = "showDegree()" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Xem bằng cấp</button>
                    <button type = "submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Lưu thay đổi</button>
                </div>
            </div>  
        </div>
    </div><!-- End My Profile Section -->
    <div id="appointment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
             <div class="col-sm-12">
                        <div class="sub-ttl pt-4 font-20">Bằng cấp</div>
                        <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect button button-primary button-sm m-1">Thêm bằng mới</button> 
                        <table class="table table-hover">
                            <thead>
                                <tr style = "text-align: center;" class="table-primary-head">
                                    <th>Tên bằng</th>
                                    <th>Trường</th>
                                    <th>Năm</th>
                                    <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${degree}" var="item">
                                <tr>
                                    <td style = "text-align: center;"><c:out value="${item.degreeName}" /></td>
                                    <td style = "text-align: center;"><c:out value="${item.college}" /></td>
                                    <td style = "text-align: center;" ><span ><c:out value="${item.year}" /></span></td>
                                    <td class="text-center">
                                            <a  href="" data-toggle="tooltip" data-placement="top" title="Sửa"><i class="fa fa-pencil color-dark"></i></a>
                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Xóa" onclick=""><i class="fa fa-close font-16 color-red m-l-10"></i></a>
                                        </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
</form>
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
  function showDegree() {
    $('#appointment').modal('show');
  }

  function hide() {
    $('#appointment').modal('hide');
  }
</script>

</html>