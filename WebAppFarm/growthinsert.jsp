<%@page import="java.sql.*"%>
<%
String Aadhar=request.getParameter("Aadhar");
String Mobile=request.getParameter("Mobile");
String Crop=request.getParameter("Crop");
String Village=request.getParameter("Village");
String Color=request.getParameter("Color");
String Height=request.getParameter("Height");
String Pesticide=request.getParameter("Pesticide");
String Pstname=request.getParameter("Pstname");
String Duration=request.getParameter("Duration");
String Expdays=request.getParameter("Expdays");


 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into growth(Aadhar,Mobile,Crop,Village,Color,Height,Pesticide,Pstname,Duration,Expdays) values(?,?,?,?,?,?,?,?,?,?);");
       ps.setString(1,Aadhar);
       ps.setString(2,Mobile);
       ps.setString(3,Crop);
       ps.setString(4,Village);
       ps.setString(5,Color);
       ps.setString(6,Height);
       ps.setString(7,Pesticide);
       ps.setString(8,Pstname);
       ps.setString(9,Duration);
       ps.setString(10,Expdays);
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("Growth details are inserted successfully");
                   response.sendRedirect("Thnkupage.html");
         }else{
                out.println("Data  NOT inserted successfully");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
