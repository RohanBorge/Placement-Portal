package Servletts;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import Entitiess.Student; // Import the Student class

public class UpdateStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Long studentId = Long.parseLong(request.getParameter("id"));
            String newName = request.getParameter("name");
            String newEmail = request.getParameter("email");
            String newPhone = request.getParameter("phone");
            String newAddress = request.getParameter("address");

            // Create a Hibernate session and update the student
            SessionFactory sf = new Configuration().configure().buildSessionFactory();
            Session session = sf.openSession();
            Transaction t = session.beginTransaction();

            Student student = session.get(Student.class, studentId);
            student.setName(newName);
            student.setEmail(newEmail);
            student.setPhoneNumber(newPhone);
            student.setAddress(newAddress);

            session.update(student);

            t.commit();
            session.close();
            response.sendRedirect("display.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}