<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" 
    content="IE=edge">
    <meta name="viewport" 
    content="width=device-width, initial-scale=1.0">
    <title>Banking System</title>
    <style>
        @import url('https://fonts.gooleapis.com/css2?family=');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body{
            background: #020410;
        }
        .header{
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            padding: 25px 12.5%;
            background: transparent;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
        }
        .navbar a{
            position: relative;
            font-size: 16px;
            color: #e4e4e4;
            text-decoration: none;
            font-weight: 500;
            margin-right: 30px;
        }
        .navbar a::after{
            content: '';
            position: absolute;
            left: 0;
            bottom: -6px;
            width: 100%;
            height: 2px;
            background: #e4e4e4;
            border-radius: 5px;
            transform: translateY(10px);
            opacity: 0;
            transition: .5s;
        }
        .navbar a:hover::after{
            transform: translateY(0);
            opacity: 1;
        }
        .search-bar{
            width: 250px;
            height: 45px;
            background: transparent;
            border: 2px solid #e4e4e4;
            border-radius: 6px;
            display: flex;
            align-items: center;
        }
        .search-bar input{
            width: 100%;
            background: transparent;
            border: none;
            outline: none;
            font-size: 16px;
            color: #e4e4e4;
            padding-left: 10px;
        }
        .search-bar input::placeholder{
            color: #e4e4e4;
        }
        .search-bar button{
            width: 40px;
            height: 100%;
            background: transparent;
            border: none;
            outline: none;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
        }
        .search-bar button i{
            font-size: 22px;
            color: #e4e4e4;
        
        }
        .background{
            width: 100%;
            height: 100vh;
            background: url('img/book2.jpg') no-repeat;
            background-size: cover;
            background-position: center;
            filter: blur(3px);
        }
        .container{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 75%;
            height: 550px;
            background: url('img/book2.jpg') no-repeat;
            background-size: cover;
            background-position: center;
            border-radius: 10px;
            margin-top: 20px
            
        }
        .container .content{
            position: absolute;
            top: 0;
            left: 0;
            width: 58%;
            height: 100%;
            background: transparent;
            padding: 80px;
            color: #e4e4e4;
            display: flex;
            justify-content: space-between;
            flex-direction: column;
        
        }
        .content .logo{
            font-size: 30px;
        }
        .text-sci h2{
            font-size: 40px;
            line-height: 1;
        }
        .text-sci h2 span{
            font-size: 25px;
        }
        .text-sci p{
            font-size: 16px;
            margin: 20px 0;
        }
        .social-icons a i{
            font-size: 22px;
            color: #e4e4e4;
            margin-right: 10px;
            transition: .5s ease;
        
        }
        .social-icons a:hover i{
            transform: scale(1.2);
        
        }
        
        
        .container .logreg-box{
            position: absolute;
            top: 0;
            right: 0;
            width: calc(100% - 58%);
            height: 100%;
            overflow: hidden;
            
        }
        .logreg-box .form-box{
            position: absolute;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100%;
            background: transparent;
            backdrop-filter: blur(20px);
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
            color: #e4e4e4;
        }
        .logreg-box .form-box.login{
            transform: translateX(0);
            transition: transform .6s ease;
            transition-delay: .7s;
        
        }
        .logreg-box.active .form-box.login{
            transform: translateX(430px);
            transition-delay: 0s;
        }
        .logreg-box .form-box.register{
            transform: translateX(430px);
            transition: transform .6s ease;
            transition-delay: 0s;
        }
        .logreg-box.active .form-box.register{
            transform: translateX(0);
            transition-delay: .7s;
        }
        .form-box h2{
            font-size: 32px;
            text-align: center;
        }
        .form-box .input-box{
            position: relative;
            width: 340px;
            height: 50px;
            border-bottom: 2px solid #e4e4e4;
            margin: 30px 0;
        }
        .input-box input{
            width: 100%;
            height: 100%;
            background: transparent;
            border: none;
            outline: none;
            font-size: 16px;
            color: #e4e4e4;
            font-weight: 500;
            padding: 28px;
        }
        .input-box label{
         position: absolute;   
         top: 50%;
         left: 0;
         transform: translateY(-50%);
         font-size: 16px;
         font-weight: 500;
         pointer-events: none;
         transition: .5s  ease;
        
        }
        .input-box input:focus~label,
        .input-box input:valid~label{
            top: -5px;
            
        
        }
        .input-box .icon{
            position: absolute;
            top: 13px;
            right: 0;
            font-size: 19px;
        }
        .form-box .remember-forgot{
            font-size: 14.5px;
            font-weight: 500;
            margin: -15px 0 15px;
            display: flex;
            justify-content: space-between;
        }
        .remember-forgot label input{
            accent-color: #e4e4e4;
            margin-right: 3px;
        
        }
        .remember-forgot a{
            color: #e4e4e4;
            text-decoration: none;
        
        }
        .remember-forgot a:hover{
            text-decoration: underline;
        }
        .btn{
            width: 100%;
            height: 45px;
            background: #c4103d;
            border: none;
            outline: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            color: #e4e4e4;
            font-weight: 500;
            box-shadow: 0 0 10px rgba(0, 0, 0, .5);
        }
        .form-box .login-register{
            font-size: 14.5px;
            font-weight: 500;
            text-align: center;
            margin-top: 25px;
        
        }
        .login-register p a{
            color: #e4e4e4;
            font-weight: 600;
            text-decoration: none;
        }
        .login-register p a:hover{
            text-decoration: underline;
            
        
        }
        
        .login-link{
        color:white;
        }
        
        .register-link{
        color:white;
        }
        
        
    </style>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<script>
		function showSuccessMessage() {
			alert("Account created successfully!");
		}
	</script>

</head>
<body>
    <header class="header">
        <nav class="navbar">
            <a href="signup2.jsp">HOME</a>
            <a href=""></a>
            <a href="#">CONTACT</a>
            <a href="#">HELP</a>
        </nav>
        <form action="#" class="search-bar">
            <input type="text" placeholder="Search...">
            <button ><i class='bx bx-search'></i></button>
        </form>
    </header>
    <div class="background"></div>
    <div class="container">
        <div class="content">
            <h2 class="logo"><i class='bx bxl-firebase'></i>E- Library</h2>
            <div class="text-sci">
                <h2>Welcome! <br><span>E Library System</span></h2>

                <p>Your Learning Our Priority</p>

                <div class="social-icons">
                    <a href="#"><i class='bx bxl-linkedin'></i></a>
                    <a href="#"><i class='bx bxl-facebook'></i></a>
                    <a href="#"><i class='bx bxl-instagram'></i></a>
                    <a href="#"><i class='bx bxl-twitter'></i></a>



                </div>
            </div>
        </div>

        <div class="logreg-box">
            <div class="form-box login">
                <form action="loginAction.jsp" method="post">
                    <h2>Sign In</h2>

                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-envelope'></i></span>
                       <input type="email" name="email"  required>
                        <label>Email</label>
                    </div>

                    <div class="input-box">
                        <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                        <input type="password" name="password"  required>
                        <label>Password</label>
                    </div>

                    <div class="remember-forgot">
                        <label><input type="checkbox">Remember me</label> 
                        <a href="forgotPassword.jsp">Forgot Password</a>
                    </div>

                    <button type="submit" class="btn">Log In</button>

                    <div class="login-register">
                        <p>Don't have an account?</p>
                        <a href="#" class="register-link">Sign up</a></p>
                    </div>

                </form>
            </div>


            <div class="form-box register">
               <form action="signupAction.jsp" method="post" onsubmit="showSuccessMessage()">
		<h2>Sign Up</h2>

		<div class="input-box">
			<span class="icon"><i class='bx bxs-user'></i></span>
			<input type="text" name="name" required>
			<label>Name</label>
		</div>

		<div class="input-box">
			<span class="icon"><i class='bx bxs-envelope'></i></span>
			<input type="email" name="email" required>
			<label>Email</label>
		</div>

		<div class="input-box">
			<span class="icon"><i class='bx bxs-lock-alt'></i></span>
			<input type="number" name="mobileNumber" required>
			<label>Mobile Number</label>
		</div>

		<div class="input-box">
			<span class="icon"><i class='bx bxs-lock-alt'></i></span>
			<input type="password" name="password" required>
			<label>Password</label>
		</div>

		<div class="remember-forgot">
			<label><input type="checkbox">I agree to the terms & conditions</label> 
		</div>

		<button type="submit" class="btn">Sign Up</button>

		<div class="login-register">
			<p>Already have an account?</p>
			<a href="#" class="login-link">Sign in</a></p>
		</div>
	</form>
            </div>

            

        </div>
    </div>

    <script>
        const logregBox = document.querySelector('.logreg-box');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');

registerLink.addEventListener('click', () => {
    logregBox.classList.add('active');

});
loginLink.addEventListener('click', () => {
  logregBox.classList.remove('active');

});

$(document).ready(function () {
  $(window).scroll(function () {
    if (this.scrollY > 20) {
      $(".navbar").addClass("sticky");
    } else {
      $(".navbar").removeClass("sticky");
    }
    if (this.scrollY > 500) {
      $(".scroll-up-btn").addClass("show");
    } else {
      $(".scroll-up-btn").removeClass("show");
    }
  });

  //slide-up script
  $(".scroll-up-btn").click(function () {
    $("html").animate({ scrollTop: 0 });
  });

  // toggle menu/navbar script
  $(".menu-btn").click(function () {
    $(".navbar .menu").toggleClass("active");
    $(".menu-btn i").toggleClass("active");
  });
  
  
  //owl carousel script
  $(".carousel").owlCarousel({
    margin: 20,
    loop: true,
    autoplayTimeout: 2000,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        nav: false,
      },
      600: {
        items: 2,
        nav: false,
      },
      1000: {
        items: 3,
        nav: false,
      },
    },
  });
});




loginLink.addEventListener('click', () => {
    logregBox.classList.remove('active');

});
    </script>
    
</body>
</html>