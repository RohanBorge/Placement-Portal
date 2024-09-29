<%@page import="com.google.gson.Gson"%>
<%@page import="Entitiess.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Us</title>
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous"
    />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <script
        type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"
    ></script>
	 <script type="text/javascript">
    (function () {
        emailjs.init("FgRhIHk2uYMWvoiXd");
    })();

    function sendMail() {
        var name = document.getElementById("name").value;
        var message = document.getElementById("message").value;

        const serviceID = "service_c1k4j1s";
        const templateID = "template_8ll0lrg";

        var emailInputs = document.querySelectorAll(".email-input");

        emailInputs.forEach(function (emailInput) {
            var email = emailInput.value;

            var params = {
                name: name,
                email: email,
                message: message,
            };

            emailjs.send(serviceID, templateID, params)
                .then(res => {
                    console.log(res);
                })

                .catch(err => console.log(err));
            alert("Your message sent successfully!!")

        });

        // Clear input fields after sending emails
        document.getElementById("name").value = "";
        document.getElementById("message").value = "";
    }
</script>
 
 </head>

<style>
	body{
			/* background-image: linear-gradient(red,orange,yellow);  */
			background-color: white;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
		}
		
	.gg{
		height:180px;
		overflow:auto;
	}

</style> 
 
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

<div class="container border mt-3 bg-light">
    <div class="row">
    <div class="header">
	<marquee direction="left" scrollamount="10" class="bg-primary text-uppercase text-light wel">
		<h5 class="py-2" ><i class="fa-solid fa-hand-point-right"></i>&nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp &nbsp &nbsp Welcome To BVIMIT,Navi Mumbai &nbsp <i class="fa-solid fa-hand-point-left"></i></h5>
	</marquee>
		<h1 class="text-center mb-3">MESSAGE</h1>
		
	</div>
    
        <div class="col-md-6 py-3 bg-dark text-white">
            <div class="form-group">
                <h5 for="email">Email ID</h5>
            	<div class="gg py-3">
            	
               	 <% for(String a:arr){ %>

                <input
                        type="email"
                        class="form-control email-input"
                        placeholder="Enter email"
                        value="<%=a%>"
                />
                <br/>
                <% } %>	
				</div>
            </div>
        </div>
        <div class="col-md-6 bg-dark text-light border-left py-3">
            <div class="form-group">
                <h5 for="name">Name</h5>
                <input
                        type="text"
                        class="form-control"
                        id="name"
                        placeholder="Enter Company name"
                />
            </div>
            <div class="form-group">
                <h5 for="message">Message</h5>
                <textarea class="form-control" placeholder="Enter Your Message" id="message" rows="3"></textarea>
            </div>
        </div>
			
    </div>
   			<div class="my-2 d-flex justify-content-center">
	       		 <button class="btn btn-primary " onclick="sendMail()">Submit</button>
        	</div>
</div>
</body>
</html>