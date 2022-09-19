<%@page import="java.sql.*"%>
<%
String Aadhar=request.getParameter("Aadhar");
String Mobile=request.getParameter("Mobile");
String Area=request.getParameter("Area");
String Village=request.getParameter("Village");
String Acres=request.getParameter("Acres");
String SoilType=request.getParameter("SoilType");
String OwnerName=request.getParameter("OwnerName");
String FatherName=request.getParameter("FatherName");
String Date=request.getParameter("Date");
String AnnualIncome=request.getParameter("AnnualIncome");


 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into electricity(Aadhar,Mobile,Area,Village,Acres,SoilType,OwnerName,FatherName,Date,AnnualIncome) values(?,?,?,?,?,?,?,?,?,?);");
       ps.setString(1,Aadhar);
       ps.setString(2,Mobile);
       ps.setString(3,Area);
       ps.setString(4,Village);
       ps.setString(5,Acres);
       ps.setString(6,SoilType);
       ps.setString(7,OwnerName);
       ps.setString(8,FatherName);
       ps.setString(9,Date);
       ps.setString(10,AnnualIncome);
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("electricity details are inserted successfully");
                  response.sendRedirect("Thnkupage.html");
         }else{
                out.println("Data  NOT inserted successfully");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
