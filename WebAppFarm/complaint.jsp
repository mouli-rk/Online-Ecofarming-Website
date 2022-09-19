<%@page import="java.sql.*"%>
<%
String Name=request.getParameter("Name");
String Email=request.getParameter("Email");
String Comment=request.getParameter("Comment");

 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into complaint(Name,Email,Comment) values(?,?,?);");
       ps.setString(1,Name);
       ps.setString(2,Email);
       ps.setString(3,Comment);
       
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("We have receiced  your complaint");
                   response.sendRedirect("Thnkupage.html");
         }else{
                out.println("error");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
