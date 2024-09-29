<%@page import="Entitiess.Student"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        .mt {
            height: 100px;
            padding: 1em;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <marquee direction="left" scrollamount="10" class="bg-secondary text-uppercase text-light wel">
            <h5 class="py-2"><i class="fa-solid fa-hand-point-right"></i>&nbsp; Welcome To BVIMIT, Navi Mumbai &nbsp;</h5>
        </marquee>
        <h1 class="text-center mb-3">Student Details</h1>
    </div>

    <%
List<Student> list = null; // Declare list outside try block for broader scope
SessionFactory sf = null;
Session s = null;

try {
    sf = new Configuration().configure().buildSessionFactory();
    s = sf.openSession();
    list = s.createCriteria(Student.class).list();
} catch (Exception e) {
    out.println("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
    e.printStackTrace(); // Print stack trace to server logs
} finally {
    if (s != null) {
        s.close();
    }
    if (sf != null) {
        sf.close();
    }
}
%>

    <form action="Email.jsp" method="get">
        <table class="table mt-2">
            <thead class="table-dark">
                <tr>
                    <th></th>
                    <th>Id</th>
                    <th>Roll</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th colspan="2">Action</th>
                </tr>
            </thead>
            <tbody>
                <% if (list != null && !list.isEmpty()) { %>
                    <% for (Student S : list) { %>
                        <tr>
                            <td><input type="checkbox" name="maildata" value="<%= S.getEmail() %>" /></td>
                            <td><%= S.getId() %></td>
                            <td><%= S.getRoll() %></td>
                            <td><%= S.getName() %></td>
                            <td><%= S.getEmail() %></td>
                            <td><%= S.getPhoneNumber() %></td>
                            <td><%= S.getAddress() %></td>
                            <td><a class="btn btn-primary px-4" href="Edit.jsp?id=<%= S.getId() %>">Edit</a></td>
                            <td><a class="btn btn-danger" href="DeleteStudent.jsp?id=<%= S.getId() %>">Delete</a></td>
                        </tr>
                    <% } %>
                <% } else { %>
                    <tr>
                        <td colspan="9" class="text-center">No students found.</td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <div class="m d-flex justify-content-center">
            <input type="submit" class="btn btn-info" value="Submit" />
        </div>
    </form>
</body>
</html>
