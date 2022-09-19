<%@page import="java.sql.*"%>
<%
String Aadhar=request.getParameter("Aadhar");
String Mobile=request.getParameter("Mobile");
String Area=request.getParameter("Area");
String Village=request.getParameter("Village");
String Acres=request.getParameter("Acres");
String LandFor=request.getParameter("LandFor");
String OwnerName=request.getParameter("OwnerName");
String FatherName=request.getParameter("FatherName");
String F=request.getParameter("F");
String AnnualIncome=request.getParameter("AnnualInc");


 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into landmeasure(Aadhar,Mobile,Area,Village,Acres,LandFor,OwnerName,FatherName,Date,AnnualIncome) values(?,?,?,?,?,?,?,?,?,?);");
       ps.setString(1,Aadhar);
       ps.setString(2,Mobile);
       ps.setString(3,Area);
       ps.setString(4,Village);
       ps.setString(5,Acres);
       ps.setString(6,LandFor);
       ps.setString(7,OwnerName);
       ps.setString(8,FatherName);
       ps.setString(9,F);
       ps.setString(10,AnnualIncome);
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("landmeasure details are inserted successfully");
                 response.sendRedirect("Thnkupage.html");
         }else{
                out.println("Data  NOT inserted successfully");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
