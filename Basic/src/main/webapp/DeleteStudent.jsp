<%@page import="Entitiess.Student"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
        .header {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .btn-primary {
            background-color: #007BFF;
            border-color: #007BFF;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-danger {
            background-color: #DC3545;
            border-color: #DC3545;
        }
        .btn-danger:hover {
            background-color: #bd2130;
            border-color: #bd2130;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Delete Student</h1>
    </div>
    <div class="container">
        <%
            // Check if the 'id' parameter is present in the request
            String studentIdParam = request.getParameter("id");
            if (studentIdParam != null && !studentIdParam.isEmpty()) {
                // Parse the 'id' parameter to get the student ID
                Long studentId = Long.parseLong(studentIdParam);

                // Handle the student deletion here (You should implement this part)
                // You can use Hibernate or any other method to delete the student based on the 'studentId'

                // Example: Deleting the student
                SessionFactory sf = new Configuration().configure().buildSessionFactory();
                Session s = sf.openSession();
                Student student = (Student) s.get(Student.class, studentId);
                if (student != null) {
                    // Delete the student
                    s.beginTransaction();
                    s.delete(student);
                    s.getTransaction().commit();
                }
                s.close();
        %>
        <div class="alert alert-success" role="alert">
            Student with ID <%= studentId %> has been successfully deleted.
        </div>
        <%
            } else {
        %>
        <div class="alert alert-danger" role="alert">
            Student ID is missing. Please provide a valid student ID for deletion.
        </div>
        <%
            }
        %>
        <a href="display.jsp" class="btn btn-primary">Back to Students Page</a>
    </div>
</body>
</html>