package Servletts;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Entitiess.Student;


/**
 * Servlet implementation class UploadServlet
 */
@MultipartConfig
public class UploadServletts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        Part filePart = request.getPart("excelFile");
		        InputStream fileInputStream = filePart.getInputStream();

		        try (Workbook workbook = new XSSFWorkbook(fileInputStream)) {
		            Sheet sheet = workbook.getSheetAt(0); // Assuming it's the first sheet

		            for (int i = 1; i <= sheet.getLastRowNum(); i++) {
		            	Row row = sheet.getRow(i);
		                Student student = new Student();
		                Cell rollCell = row.getCell(0);
		                if (rollCell.getCellType() == CellType.NUMERIC) {
		                    // If it's a numeric cell, convert it to a string
		                    student.setRoll(String.valueOf((int) rollCell.getNumericCellValue()));
		                } else if (rollCell.getCellType() == CellType.STRING) {
		                    // If it's a string cell, read it as a string
		                    student.setRoll(rollCell.getStringCellValue());
		                }
		                
		                student.setName(row.getCell(1).getStringCellValue());
		                // Phone Number (Assuming it's in the second column, index 1)
		                Cell phoneCell = row.getCell(2);
		                if (phoneCell.getCellType() == CellType.NUMERIC) {
		                    // If it's a numeric cell, convert it to a string
		                    student.setPhoneNumber(String.valueOf((long) phoneCell.getNumericCellValue()));
		                } else if (phoneCell.getCellType() == CellType.STRING) {
		                    // If it's a string cell, read it as a string
		                    student.setPhoneNumber(phoneCell.getStringCellValue());
		                }
		                student.setEmail(row.getCell(3).getStringCellValue());
		                student.setAddress(row.getCell(4).getStringCellValue());

		                // Save the student object to the database using Hibernate
		                SessionFactory sessionFactory =new Configuration().configure().buildSessionFactory(); 
		                		
		                try (Session session = sessionFactory.openSession()) {
		                    Transaction transaction = session.beginTransaction();
		                    session.save(student);
		                    transaction.commit();
		                    

		                }
	                    response.setStatus(HttpServletResponse.SC_OK);
		                response.getWriter().write("<script>alert('data inserted..');window.location='welcome.jsp'</script>");
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		            
		            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	                response.getWriter().write("<script>alert('Sorry,Your file not save into database.please recheck your file');window.location='welcome.jsp'</script>");
		        }

		       // response.sendRedirect("<script>alert('sussueufnd')</script>");
		     //   out.print("<script>alert('data inserted..');window.location='index.jsp'</script>");
		    }

	

}
