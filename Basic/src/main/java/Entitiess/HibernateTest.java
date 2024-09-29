package Entitiess;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import java.util.List;

public class HibernateTest {
    public static void main(String[] args) {
        Configuration configuration = new Configuration().configure();
        SessionFactory sessionFactory = configuration.buildSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            List<Student> students = session.createQuery("FROM Student", Student.class).list();

            if (students.isEmpty()) {
                System.out.println("No students found in the database.");
            } else {
                for (Student student : students) {
                    System.out.println("Student ID: " + student.getId());
                    System.out.println("Roll: " + student.getRoll());
                    System.out.println("Name: " + student.getName());
                    System.out.println("Phone Number: " + student.getPhoneNumber());
                    System.out.println("Email: " + student.getEmail());
                    System.out.println("Address: " + student.getAddress());
                    System.out.println("---------------");
                }
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
            sessionFactory.close();
        }
    }
}
