<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" type="text/css" href="Front/Master.css">
 --><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   
   <style>
   li a{
   font-size:19px;
   }
   		
   nav{
   backgrund:white;
   box-shadow:2px 4px 15px #AEB6BF;
   }		
   
   /* nav buttuon */
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

.button svg {
  width: 1.6em;
  margin: -0.2em 0.8em 1em;
  position: absolute;
  display: flex;
  transition: all 0.6s ease;
}

.button:hover svg {
  transform: translateX(5px);
}

.text {
  margin: 0 1.5em
}

.button a{
text-decoration:none;
}

/* image updown */

.logo11{
animation-name:infiniteupdown;
animation-duration:5s;
animation-iteration-count:infinite;
animation-timimg-function:ease;
transition:all .5s;
	
}
@keyframes infiniteupdown{
	0%{
		transform:translateY(0px);
	}
	50%{
		transform:translateY(-25px);
	}
	100%{
		transform:translateY(0px);
		
	}
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

<section >
	<div class="container  mt-5" >
	<div class="row">
		<div class="up d-flex flex-wrap justify-content-center col-12">
			<img src="IMG/hero-carousel-1.svg" class="logo11 " height="350px" />
		</div>
		<div class="down text-center mt-4 col-12">
			<h1>Welcome to <span class="text-primary">Placement Cell</span></h1>
			<h5 class="mt-3">We Will Support You In Your Entire Placement Journey.</h5>
			<button class="button mt-3" onclick="redirectToPage()">Get Started</button>   
			
		</div>
	</div>
	</div>

</section>






</body>
<script>
		/* login page */
        function redirectToPage() {
            window.location.href = "login.jsp";
        }
        /* FAQ page */
        function redirectToPage1() {
            window.location.href = "FAQ.html";
        }
    </script>
</html>
