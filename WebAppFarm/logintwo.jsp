<%@page import="java.sql.*"%>
<%
String user=request.getParameter("user");
String password=request.getParameter("pwd");

 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Mouli","root","");
       Statement stm=conn.createStatement();
       ResultSet rs=stm.executeQuery("select * from login where UserName='"+user+"' and Password='"+password+"' ");

       if(rs.next()){
                
                
          out.println("login successfull");
       response.sendRedirect("Reg.html");
         }else{
                out.println("wrong email or password");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>

 