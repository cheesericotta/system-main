

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class editProfile
 */
@WebServlet("/editProfile")
public class editProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("username");
		//String address=request.getParameter("address");
		String email=request.getParameter("useremail");
		//String pass_1=request.getParameter("pass_1");
		String pass_2=request.getParameter("userpassword");
		
		 /*PrintWriter out = response.getWriter();
		 String jdbcURL ="jdbc:postgresql://localhost/mosque";
		    String username="postgres";
		    String password="system";
		    */
		  
		String jdbcURL ="jdbc:postgresql://ec2-3-211-221-185.compute-1.amazonaws.com:5432/dd283fabsjbk3c";
	    String username="roudqjprncsaet";
	    String password="f77b9dae0ee6b371ee0855996a822412bd842ed5fa9e492df8795c2c9632a1d6";
	    HttpSession session = request.getSession();
	    String user = (String)session.getAttribute("username");
	    
	   
	    
	    try {
	    	 Class.forName("org.postgresql.Driver");
	    	 Connection connection=DriverManager.getConnection(jdbcURL,username,password);
	    	 
	    	 PreparedStatement pst = connection
            	     .prepareStatement("update users set username = ?, userpassword = ?, useremail = ? where username='"+user+"'");
            	   pst.setString(1,name );
            	   pst.setString(2, pass_2);
            	   pst.setString(3, email );
            	  
            	   pst.executeUpdate();
            	   response.sendRedirect("Admin/Profile/indexProfile.jsp");
	 	    
	 	     
            	   connection.close();
	    	 
	            // String sql="(Select id,username,password from student where name='"+name+"' and '"+pass+"')";
	                /*  PreparedStatement pst = connection
	            	     .prepareStatement("Insert into student(email,username,password) values (?,?,?");
	            	   pst.setString(1,name );
	            	   pst.setString(2, pass_2);
	            	   pst.setString(3, email );
	            	   ResultSet rs = pst.executeQuery();
	            	  
	            	   if (rs.next()) {
	            		   RequestDispatcher requestDispatcher = request
	                               .getRequestDispatcher("Sign In/index.html");
	                       requestDispatcher.forward(request, response);
	            	   }else {
	            		    out.println("Username or Password incorrect");
	            		    response.sendRedirect("https://www.youtube.com/watch?v=xHWXZyfhQas");
	            		   
	            	   }
	            	    */

	    	
	    	/*
	    	 Class.forName("org.postgresql.Driver");
	    	 Connection connection=DriverManager.getConnection(jdbcURL,username,password);
	    	 System.out.print("connected");
	 	     String sql="Insert into users(useremail,username,userpassword)"+"values('"+email+"','"+name+"','"+pass_2+"')";
	 	     Statement stat=connection.createStatement();
	 	     int row=stat.executeUpdate(sql);
	 	     connection.close();
	 	    response.sendRedirect("Sign In/index.html");
	 	     if (row>0) {
	 	    	 response.setContentType("text/html");
	 	    	out.println("<!DOCTYPE html><html><head><title></title></head><body>");
	 	    	 out.print("new data has been inserted");
	 	    	*/
	 	     
	 	     }
	    catch(Exception e){
	    	e.printStackTrace();
	    	System.out.print("not connected");
	    	}
	    
	    
          
	    
	   
		
	}
	}