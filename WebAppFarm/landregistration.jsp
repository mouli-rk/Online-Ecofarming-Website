<%@page import="java.sql.*"%>
<%
String Aadhar=request.getParameter("Aadhar");
String Mobile=request.getParameter("Mobile");
String Area=request.getParameter("Area");
String Village=request.getParameter("Village");
String Acres=request.getParameter("Acres");
String LandFor=request.getParameter("LandFor");
String SellerName=request.getParameter("SellerName");
String BuyerName=request.getParameter("BuyerName");
String Date=request.getParameter("Date");
String A=request.getParameter("A");


 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/Mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into landreg(Aadhar,Mobile,Area,Village,Acres,LandFor,SellerName,BuyerName,Date,AnnualIncome) values(?,?,?,?,?,?,?,?,?,?);");
       ps.setString(1,Aadhar);
       ps.setString(2,Mobile);
       ps.setString(3,Area);
       ps.setString(4,Village);
       ps.setString(5,Acres);
       ps.setString(6,LandFor);
       ps.setString(7,SellerName);
       ps.setString(8,BuyerName);
       ps.setString(9,Date);
       ps.setString(10,A);
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("Registration successfully");
                 response.sendRedirect("Thnkupage.html");
         }else{
                out.println("Data  NOT inserted successfully");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
