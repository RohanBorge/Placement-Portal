<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    
   
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" type="text/css" href="Front/Master.css">
 --><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
<link rel="stylesheet" type="text/css" href="Front/style.css">
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
   
   
   <style>
   		
					
		
	 li a{
   font-size:19px;
   }
   		
   nav{
   backgrund:white;
   box-shadow:2px 4px 15px #AEB6BF;
   
   }	
   
   	.button {
  background-color: #ffffff00;
  color: blue;
  width: 8.5em;
  height: 2.9em;
  border: #3654ff 0.2em solid;
  border-radius: 11px;
  transition: all 0.6s ease;
}

.button:hover {
  background-color: #3654ff;
  color:white;
  cursor: pointer;
}	
  
	</style>
   
</head>
<body>

	
<nav class="navbar navbar-expand-lg navbar-light">
  <div class="container-fluid">
          <a href="#"><img src="IMG/bharti1.png" class="logo1 " height="90px" />
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto nav-pills">
                
              <li class="nav-item  mx-2">
                <a class="nav-link  "  aria-current="page" href="index.jsp" >Home</a>
              </li>

              <li class="nav-item mx-2">
                <a class="nav-link " href="login.jsp" >Login</a>
              </li>
              
              
              <li class="nav-item mx-2">
                <a class="nav-link " href="contact.html"  >Contact</a>
              </li>
            </ul>
            
            <div class="fasss">     
				<button class="button" onclick="redirectToPage1()">FAQ</button>   
	         </div>

          </div>

  </div>
</nav>

    
    <!-- <form class="formm" action="LoginServlet"  method="post" autocomplete="off" data-aos="zoom-in" data-aos-duration="800">
     <div class="fform justify-content-col-center d-flex flex-wrap justify-content-center container">	  
	  <div class="login p-4 text-white" >
				  <div class="mb-4">
				  		<h1 class="text-center text-dark fw-bold mb-4">Login</h1>
				  		<marquee direction="left" scrollamount="10" class="bg-secondary text-uppercase wel">
				  			<h5 class="pt-1" >Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai</h5>
				  		</marquee>
				  </div>
				  
				  <div class="mb-3 in">
					<input type="text" class="f" placeholder="Username" id="username" name="username" required>
					<i class="fa-solid fa-user h5"></i>
				    <hr>
				   </div>
				  <div class=" in mb-4">
				    <div class=" d-flex">
					    <input type="password" class="f" placeholder="Password" id="password" name="password" required>
					    <img src="IMG/eye-close.png" id="eyeicon" class="mt-2" height="20px" />
				    </div>
				    <hr>
				  </div>
				  
				  
				  <input type="submit" class="btn_button my-3" name="sub" value="submit" />
				  <div class="linkk text-center">
					<h6 class=" ra">Don't have an account?? <a href="index.jsp" class="ra raa fw-bold">Back Home</a></h6>
					</div>
				  
				</div>
	  
	 </div>
	</form>
	 -->
	 <marquee direction="left" scrollamount="10" class="bg-secondary text-uppercase my-3 wel">
		<h5 class="pt-2 text-light" ><i class="fa-solid fa-hand-point-right mx-2"></i>Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai.<i class="fa-solid fa-hand-point-left mx-2"></i></h5>
	</marquee>
	  <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        
        <!-- admin login -->
          <form action="LoginServlet" class="sign-in-form" method="post" autocomplete="off">
          
            <h2 class="title">Admin Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
<!--               <input type="text" placeholder="Username" />
 -->              <input type="text" class="f" placeholder="Username" id="username" name="username" required required/>
              
            </div>
            <div class="input-field">
            	<i><img src="IMG/eye-close.png" id="eyeicon" class="mt-2 " height="20px" /></i>
<!--               <input type="password" placeholder="Password" />
 -->			    <input type="password" class="f" placeholder="Password" id="password" name="password" required>
              
            </div>
            <input type="submit" value="submit" class="btn solid" />
            <p class="social-text">Or Sign in with social platforms</p>
            <div class="social-media">
              <a href="https://www.facebook.com/bvimit/" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://bvimit.co.in/bvimit/" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://bvimit.co.in/bvimit/" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="https://www.linkedin.com/in/bharati-vidyapeeth-institute-of-management-and-information-technology-705802225/?originalSubdomain=in" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
          
          <!-- student login -->
          <form action="LoginServlet" class="sign-up-form" method="post" autocomplete="off">
            <h2 class="title">Student Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
             <input type="text" class="f" placeholder="Username" id="username" name="username" required required/>
            </div>
            <div class="input-field">
            	<i><img src="IMG/eye-close.png" id="eyeicon" class="mt-2 " height="20px" /></i>
 			    <input type="password" class="f" placeholder="Password" id="password" name="password" required>

            </div>
             <input type="submit" value="submit" class="btn solid" />
            <p class="social-text">Or Sign in with social platforms</p>
            <div class="social-media">
              <a href="https://www.facebook.com/bvimit/" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://bvimit.co.in/bvimit/" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="https://bvimit.co.in/bvimit/" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="https://www.linkedin.com/in/bharati-vidyapeeth-institute-of-management-and-information-technology-705802225/?originalSubdomain=in" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Are You Students</h3>
            <p>
              Please Click on "For Student" to login your student account...!!!! 
            </p>
            
            <button class="btn transparent" id="sign-up-btn">
              For Student
            </button><br/>
            <img src="IMG/bvimit.png" class="logo1 mt-3" height="110px" />
            
          </div>
          <img src="img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Are You Admin</h3>
            <p>
              Please Click on "For Admin" to login your admin account...!!!! 
            
            </p>
            <button class="btn transparent" id="sign-in-btn">
              For Admin
            </button><br/>
            <img src="IMG/bvimit.png" class="logo1 mt-3" height="110px" />
          </div>
          <img src="img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script>
		const sign_in_btn = document.querySelector("#sign-in-btn");
		const sign_up_btn = document.querySelector("#sign-up-btn");
		const container = document.querySelector(".container");
		
		sign_up_btn.addEventListener("click", () => {
		  container.classList.add("sign-up-mode");
		});
		
		sign_in_btn.addEventListener("click", () => {
		  container.classList.remove("sign-up-mode");
		});
		
		
		/* eye lock */
		
		let eyeicon=document.getElementById("eyeicon");
		let password=document.getElementById("password");
		
		eyeicon.onclick=function(){
			if(password.type=="password"){
				password.type="text";
				eyeicon.src="IMG/eye-open.png";
				eyeicon.style.height="17px";				
			}
			else{
				password.type="password";
				eyeicon.src="IMG/eye-close.png";
				eyeicon.style.height="20px";
			}
		}
		
		/* login page */
        function redirectToPage() {
            window.location.href = "login.jsp";
        }
        /* FAQ page */
        function redirectToPage1() {
            window.location.href = "FAQ.html";
        }
	</script>
	
    
</body>
			
</html>
