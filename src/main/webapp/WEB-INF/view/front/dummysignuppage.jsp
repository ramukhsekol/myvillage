<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Sign Up Page | Village</title>
  <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
  <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
  <meta name="author" content="AbsoluteAdmin">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/loginandregister/assets/skin/default_skin/css/theme.css">
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/loginandregister/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link href="${contextPath}/resources/bootstrap/bootstrap-dialog/css/bootstrap-dialog.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" media="screen" href="${contextPath}/resources/css/loader.css"/> 
  <link rel="shortcut icon" href="${contextPath}/resources/loginandregister/assets/img/favicon.ico">
<style type="text/css">
.inputError{
color: red;
}
.loader-block{position: fixed; left: 0; right: 0; top: 0; bottom: 0; z-index: 1000; width:100%; height: 100%; z-index: 2000; background: #000; opacity:0.8;}
.loader-block-inside{position: absolute; top: 50%; left: 50%; width:200px; height: 200px; margin: -100px 0 0 -100px; background-image: url("${contextPath}/resources/css/lightbox-ico-loading.gif"); background-repeat: no-repeat; background-position: center;}

</style>
</head>

<body class="external-page sb-l-c sb-r-c">
  <div id="main" class="animated fadeIn">
    <section id="content_wrapper">
      <div id="canvas-wrapper">
        <canvas id="demo-canvas"></canvas>
      </div>
      <section id="content" class="">
        <div class="admin-form theme-info mw700" style="margin-top: 3%;" id="login1">
          <div class="row mb15 table-layout">
            <div class="col-xs-6 va-m pln">
              <a href="dashboard.html" title="Return to Dashboard">
                <img src="${contextPath}/resources/loginandregister/assets/img/logos/logo_white.png" title="AdminDesigns Logo" class="img-responsive w250">
              </a>
            </div>

            <div class="col-xs-6 text-right va-b pr5">
              <div class="login-links">
                <a href="${contextPath}/login" class="active" title="Sign In">Log In</a>
              </div>

            </div>

          </div>

          <div class="panel panel-info mt10 br-n">

            <div class="panel-heading heading-border bg-white">
              <div class="section row mn">
                <div class="col-sm-4">
                  <a href="#" class="button btn-social facebook span-left mr5 btn-block">
                    <span>
                      <i class="fa fa-facebook"></i>
                    </span>Facebook</a>
                </div>
                <div class="col-sm-4">
                  <a href="#" class="button btn-social twitter span-left mr5 btn-block">
                    <span>
                      <i class="fa fa-twitter"></i>
                    </span>Twitter</a>
                </div>
                <div class="col-sm-4">
                  <a href="#" class="button btn-social googleplus span-left btn-block">
                    <span>
                      <i class="fa fa-google-plus"></i>
                    </span>Google+</a>
                </div>
              </div>
            </div>

            <form action="${contextPath}/registration-process" method="post" id="signupvalidation" novalidate="novalidate" enctype="multipart/form-data">
              <div class="panel-body p25 bg-light">
                <div class="section-divider mt10 mb40">
                  <span>Login Information</span>
                </div>
                <div class="section row">
                  <div class="col-md-6">
                    <label for="firstName" class="field prepend-icon">
                      <input type="text" name="firstName" id="firstName" class="gui-input" placeholder="First name..." value="${users.firstName}">
                      <label for="firstName" class="field-icon">
                        <i class="fa fa-user"></i>
                      </label>
                    </label>
                  </div>

                  <div class="col-md-6">
                    <label for="lastName" class="field prepend-icon">
                      <input type="text" name="lastName" id="lastName" class="gui-input" placeholder="Last name..." value="${users.lastName}">
                      <label for="lastName" class="field-icon">
                        <i class="fa fa-user"></i>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="section">
                  <label for="email" class="field prepend-icon">
                    <input type="email" name="email" id="email" class="gui-input" placeholder="Email address" value="${users.email}">
                    <label for="email" class="field-icon">
                      <i class="fa fa-envelope"></i>
                    </label>
                  </label>
                </div>


                <div class="section">
                  <label for="password" class="field prepend-icon">
                    <input type="password" name="password" id="password" class="gui-input" placeholder="Create a password" value="${users.password}">
                    <label for="password" class="field-icon">
                      <i class="fa fa-unlock-alt"></i>
                    </label>
                  </label>
                </div>
                <!-- end section -->

                <div class="section">
                  <label for="confirmPassword" class="field prepend-icon">
                    <input type="password" name="confirmPassword" id="confirmPassword" class="gui-input" placeholder="Retype your password" value="${users.password}">
                    <label for="confirmPassword" class="field-icon">
                      <i class="fa fa-lock"></i>
                    </label>
                  </label>
                </div>
                <!-- end section -->
                
                
                
                 <div class="section-divider mt10 mb40">
                  <span>Additional Information</span>
                </div>
                <div class="section row">
                  <div class="col-md-6">
                    <label for="phoneNumber" class="field prepend-icon">
                      <input type="text" name="phoneNumber" id="phoneNumber" class="gui-input" placeholder="Phone Number" maxlength="10" value="${users.phoneNumber}">
                      <label for="phoneNumber" class="field-icon">
                        <i class="fa fa-phone-square"></i>
                      </label>
                    </label>
                  </div>

                  <div class="col-md-6">
                    <label for="dateofBirth" class="field prepend-icon">
                     <input type="text" name="dateofBirth" id="dateofBirth" class="gui-input" placeholder="Date of Birth" value="${users.dateofBirth}"/>
                      <label for="address1" class="field-icon">
                        <i class="fa fa-calendar"></i>
                      </label>
                    </label>
                  </div>
                </div>
                
                
                <div class="section row">
                  <div class="col-md-6">
                    <label for="country" class="field prepend-icon">
                      <input type="text" name="country" id="country" class="gui-input" placeholder="Country" value="${users.country}">
                      <label for="country" class="field-icon">
                        <i class="fa fa-flag-checkered"></i>
                      </label>
                    </label>
                  </div>

                  <div class="col-md-6">
                    <label for="state" class="field prepend-icon">
                     <input type="text" name="state" id="state" class="gui-input" placeholder="State" value="${users.state}"/>
                      <label for="address1" class="field-icon">
                        <i class="fa fa-institution"></i>
                      </label>
                    </label>
                  </div>
                </div>
                
                <div class="section row">
                  <div class="col-md-6">
                    <label for="city" class="field prepend-icon">
                      <input type="text" name="city" id="city" class="gui-input" placeholder="City" value="${users.city}">
                      <label for="city" class="field-icon">
                        <i class="fa fa-language"></i>
                      </label>
                    </label>
                  </div>

                  <div class="col-md-6">
                    <label for="zipcode" class="field prepend-icon">
                     <input type="text" name="zipcode" id="zipcode" class="gui-input" placeholder="Zipcode" maxlength="7" value="${users.zipcode}"/>
                      <label for="zipcode" class="field-icon">
                        <i class="fa fa-sort-numeric-asc"></i>
                      </label>
                    </label>
                  </div>
                </div>

                <div class="section">
                  <label for="address1" class="field prepend-icon">
                     <textarea class="gui-input" placeholder="Address 1" name="address1" style="height: 114px;">${users.address1}</textarea>
                      <label for="address1" class="field-icon">
                        <i class="fa fa-home"></i>
                      </label>
                    </label>
                </div>
                <div class="section">
                  <label for="address2" class="field prepend-icon">
                     <textarea class="gui-input" placeholder="Address 2" name="address2" style="height: 114px;">${users.address2}</textarea>
                      <label for="address2" class="field-icon">
                        <i class="fa fa-home"></i>
                      </label>
                    </label>
                </div>
                
                  <div class="section row">
                  <div class="col-md-6">
                    <label for="file" class="field prepend-icon">
                      <input type="file" name="file" id="file" class="gui-input" placeholder="User Profile">
                      <label for="file" class="field-icon">
                        <i class="fa  fa-picture-o"></i>
                      </label>
                    </label>
                  </div>

                  <div class="col-md-6">
                    <label for="gender" class="field prepend-icon">
                      <select name="gender" class="form-control input-lg" id="gender">
                          <option value=""> &nbsp; &nbsp;&nbsp; Gender</option>
                          <option value="Male"> &nbsp; &nbsp;&nbsp;Male</option>
                          <option value="Female"> &nbsp; &nbsp;&nbsp;Female</option>
                      </select> 
                      <label for="gender" class="field-icon">
                        <i class="fa fa-users"></i>
                      </label>
                    </label>
                    <script>
                    $(function(){
                    	$("#gender").val("${users.gender}");
                    });
                    </script>
                  </div>
                </div>


                <div class="section">
                  <label for="userProfile" class="field prepend-icon">
                   <textarea class="gui-input" placeholder="User Profile" name="userProfile" style="height: 114px;">${users.userProfile}</textarea>
                    <label for="userProfile" class="field-icon">
                      <i class="fa fa-comments-o"></i>
                    </label>
                  </label>
                </div>
                <!-- end section -->

                <div class="section-divider mv40">
                  <span>Review the Terms</span>
                </div>
                <!-- .section-divider -->

                <div class="section mb15">
                  <label class="option block mt15">
                    <input type="checkbox" name="terms">
                    <span class="checkbox"></span>I agree to the
                    <a href="#" class="theme-link"> terms of use. </a>
                  </label>
                  <label class="inputError" for="terms"></label>
                </div>

              </div>
              <div class="panel-footer clearfix">
                <button type="submit" class="button btn-primary pull-right">Create Account</button>
              </div>
            </form>
          </div>
        </div>
      </section>
    </section>
  </div>
  <div class ="loader-block" style="display: none;">
	<div class ="loader-block-inside">
		
	</div>
</div>
  <script src="${contextPath}/resources/loginandregister/jquery/jquery-1.11.1.min.js"></script>
  <script src="${contextPath}/resources/loginandregister/jquery/jquery_ui/jquery-ui.min.js"></script>
   <script src="${contextPath}/resources/frontend/assets/js/bootstrap.min.js"></script>
  <script src="${contextPath}/resources/bootstrap/bootstrap-dialog/js/bootstrap-dialog.min.js"></script> 
  <script src="${contextPath}/resources/loginandregister/canvasbg/canvasbg.js"></script>
  <script src="${contextPath}/resources/loginandregister/assets/js/utility/utility.js"></script>
  <script src="${contextPath}/resources/loginandregister/assets/js/demo/demo.js"></script>
  <script src="${contextPath}/resources/loginandregister/assets/js/main.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/loginandregister/assets/js/jquery.validate.js"></script>

  <!-- Page Javascript -->
  <script type="text/javascript">
 $(function() {
	 BootstrapDialog.alert('${message}',function(alertresult){
		 if(alertresult){
			 $(".loader-block, .loader-block-inside").show();
			 var field = "j_username="+'${email}'+"&j_password="+'${password}'; 
			 $.post('${contextPath}/guest/j_spring_security_check?'+field,function(res){
				 window.location.href="${contextPath}"+res;
			 }); 
		 }
	 });
	 
    "use strict";
    Core.init();
    Demo.init();
    CanvasBG.init({
      Loc: {
        x: window.innerWidth / 2,
        y: window.innerHeight / 3.3
      },
    });
    
    $("#dateofBirth").datepicker({
    	changeMonth: true,
        changeYear: true,
    });
    
  });
  </script>
</body>
</html>