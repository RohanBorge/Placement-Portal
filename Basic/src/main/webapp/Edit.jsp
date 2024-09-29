<%@page import="Entitiess.Student"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>

body{
			/* background-image: linear-gradient(red,orange,yellow);  */
			background-color: white;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
		}
		

.login{
			position: relative;
			width: 400px ;
			height: 580px;
			color:black;
			border: 2px solid rgba(255, 255, 255, .5);
			border-radius: 20px;
			backdrop-filter: blur(10px);
			box-shadow: 0 0 30px rgba(0,0,0, .5);
		}
		
		.in h6{
			margin:10px 0px 10px 15px;
			font-weight:bold;
			text-transform:uppercase;
			color::#1B2631;
			
		}
		.in i,.in img{
			color: #5F6A6A;
			cursor:pointer;
			
		}			
		.in input{
			width: 100%;
			color: #2E4053;
			font-weight: bold;
			height: 45px;
			background: transparent;
			border-radius:30px;
			padding-left:20px;
		}
		
		.f::placeholder{
			color:#2E4053 ;
		}
		.login .btn_button{
			width: 100%;
			height: 10%;
			border-radius:30px;
			background-color: #1B2631;
			color: white;
			text-transform: uppercase;
		}
		.ra{
			text-decoration: none;
			color: #1B2631;
		}
		.raa:hover{
			color: white;
		}
		
		 
		.wel{
			color: white;	
		}
		.signin a{
			text-decoration:none;
			color:#1B2631;
			font-weight:bold;
			font-size:20px;
		}



</style>
</head>
<body>
	
	<div class="container">
			
		<div class="form-container">
		<%
    		Long studentId = Long.parseLong(request.getParameter("id"));
    		SessionFactory sf = new Configuration().configure().buildSessionFactory();
    		Session s = sf.openSession();
    		Student student = (Student) s.get(Student.class, studentId);
			%>

			
			 <form action="UpdateStudentServlet"  method="post" autocomplete="off">
			 			
     					<div class="fform justify-content-col-center d-flex flex-wrap justify-content-center container">	  
	  						<div class="login p-4 text-dark" >
							  <div class="mb-4">
							  
							  		<h1 class="text-center text-dark fw-bold">Edit Details</h1>
							  		<!-- marquee direction="left" scrollamount="10" class="bg-secondary text-uppercase wel">
							  			<h5 class="pt-1" >Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai</h5>
							  		</marquee> -->
							  </div>
				  
							  <div class="mb-3 in">
								<input type="hidden" name="id" value="<%= student.getId() %>">
							  </div>
							  <div class=" in mb-4">
							    <div class=" ">
							    	<h6>Name</h6>
									<input type="text" class="input" id="name" name="name" value="<%= student.getName() %>" required>
							    </div>
							    <div class=" ">
							    	<h6>Email</h6>
									<input type="email" class="input" id="email" name="email" value="<%= student.getEmail() %>" required>
							    </div>
							    <div class=" ">
							    	<h6>Phone</h6>
									<input type="tel" class="input" id="phone"name="phone" value="<%= student.getPhoneNumber() %>" required>
							    </div>
							    <div class="">
							    	<h6>Address</h6>
									 <input type="text" class="input" id="address" name="address" value="<%= student.getAddress() %>"required>
							    </div>
							  </div>
							  
							  
							  	<button class="btn_button my-1	">SUBMIT</button>
							  	
	  						    <p class="signin text-center my-2">If not to Chnage...<a href="display.jsp">Back</a> </p>
							  
							</div>
	  							
	 					</div>
					</form>
			
		
			<%-- <form action="UpdateStudentServlet" method="post" class="form login">
						
						<input type="hidden" name="id" value="<%= student.getId() %>">
							
				        <label>
							<input type="text" class="input" id="name" name="name" value="<%= student.getName() %>" required>
				            <span>Name</span>
				        </label>

				            
				    <label>
						<input type="email" class="input" id="email" name="email" value="<%= student.getEmail() %>" required>
				        <span>Email</span>
				    </label> 
				        
				    <label>
						<input type="tel" class="input" id="phone"name="phone" value="<%= student.getPhoneNumber() %>" required>
						<span>Phone</span>
				    </label>
				    <label>
						 <input type="text" class="input" id="address" name="address" value="<%= student.getAddress() %>"required>
					     <span>Address</span>
				    </label>
				    <button class="submit">Submit</button>
				    <p class="signin">If not to Chnage...<a href="display.jsp">Back</a> </p>
				</form> --%>

		</div>
	</div>
</body>
</html>