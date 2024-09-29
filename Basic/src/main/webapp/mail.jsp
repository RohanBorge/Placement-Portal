<%@page import="com.google.gson.Gson"%>
<%@page import="Entitiess.Student"%>
<%@page import="Entitiess.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
</script>
<!-- <script type="text/javascript">
   (function(){
      emailjs.init("ia0oB7aQu0X8ciY3N");
   })();
</script> -->
</head>
<body>
	<%
	
	String arr[]=request.getParameterValues("maildata");
	for(String a:arr){
		System.out.println("is"+a);
	}
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session s=sf.openSession();
		List<Student> list=s.createCriteria(Student.class).list();
		 // Convert the list to a JSON string
		  String studentListJson = new Gson().toJson(list);

		  // Set it as a request attribute
		  request.setAttribute("studentListJson", studentListJson);
		  
	%>
	<%-- <script>
	var studentListJson = '<%= request.getAttribute("studentListJson") %>';
	  var studentList = JSON.parse(studentListJson);
	
	  console.log(studentList)
	  studentList.forEach((ele)=>{
		console.log(ele.email)  
	  })
	  
	  function sendMailll1(){
		  studentList.forEach((ele)=>{
		  let templateParams={
			message:"okk",
			to_mail:ele.email
			console.log(ele.email)
			
		  }
		  emailjs.send('service_c1k4j1s', 'template_nrtzd8t', templateParams)
		    .then(function(response) {
		       console.log('SUCCESS!', response.status, response.text);
		    }, function(error) {
		       console.log('FAILED...', error);
		    });
		  })  
		  
	  }
	  
	</script> --%>
	 
	
	 <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"
    ></script>
    <script type="text/javascript">
      (function () {
        emailjs.init("FgRhIHk2uYMWvoiXd");   //public key
      })();
      
      
      function sendMail() {
    	  var params = {
    	    name: document.getElementById("name").value,
    	    email: document.getElementById("email").value,
    	    message: document.getElementById("message").value,
    	  };
    	  

    	  const serviceID = "service_ca2szj6";
    	  const templateID = "template_8ll0lrg";

    	    emailjs.send(serviceID, templateID, params)
    	    .then(res=>{
    	        document.getElementById("name").value = "";
    	        document.getElementById("email").value = "";
    	        document.getElementById("message").value = "";
    	        console.log(res);
    	        alert("Your message sent successfully!!")

    	    })
    	    .catch(err=>console.log(err));

    	}

      
      
    </script>

	<%-- <table class="table mt-5">
		<tr class="text-center">
			<th></th>
			<th class="bg-primary">Id</th>
			<th class="bg-success">Email</th>
			<th colspan="2" class="bg-secondary">Action</th>
		</tr>
		<form action="" method="post">
			
			<% for(String a:arr){ %>
			
			<tr class="text-center">
				<td class="text-center"id="email"><%=a%></td>
				<td class="bg-primary"><a class="btn btn-danger"
					href="Delete?id=<%=a%>">Delete</a></td>
			</tr>
			
			<div class="form-group">
            <h5 for="email">Email</h5>
            <input
              type="email"
              class="form-control"
              id="email"
              placeholder="Enter email"
              value="<%=a%>"
            />
         	 </div>
			<%} %>
			<div class="form-group">
            <h5 for="message">Message</h5>
            <textarea class="form-control" id="message" rows="3"></textarea>
            <button onclick='sendMailll1()'>Send Mail</button>
          	</div>
		</form>
	</table> --%>
	
	
	<div class="container border mt-3 bg-light">
      <div class="row">
        <div class="col-md-6 p-5 bg-primary text-white">
          <h1>Hi there!</h1>
          <h4>
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo,
          </h4>
        </div>
        <div class="col-md-6 border-left py-3">
          <h1>Contact form</h1>
          <div class="form-group">
            <h5 for="name">Name</h5>
            <input
              type="text"
              class="form-control"
              id="name"
              placeholder="Enter name"
            />
          </div>
          <div class="form-group">
          	<% for(String a:arr){ %>
            <h5 for="email">Email</h5>
            	<b id="email"><%=a%></b>
            	
            	<%} %>
          </div>
          <div class="form-group">
            <h5 for="message">Message</h5>
            <textarea class="form-control" id="message" rows="3"></textarea>
          </div>
          <button class="btn btn-primary" onclick="sendMail()">Submit</button>
        </div>
      </div>
    </div>
	
	
</body>
</html>