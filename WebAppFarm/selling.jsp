<%@page import="java.sql.*"%>
<%
String Aadhar=request.getParameter("Aadhar");
String Mobile=request.getParameter("Mobile");
String Area=request.getParameter("Area");
String Village=request.getParameter("Village");
String Acres=request.getParameter("Acres");
String CropDuration=request.getParameter("CropDuration");
String SellerName=request.getParameter("SellerName");
String CropName=request.getParameter("CropName");
String Date=request.getParameter("Date");
String Pincode=request.getParameter("Pincode");


 try{
       Class.forName("com.mysql.jdbc.Driver");
       Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/mouli","root","");
       PreparedStatement ps=conn.prepareStatement("insert into selling(Aadhar,Mobile,Area,Village,Acres,CropDuration,SellerName,CropName,Date,Pincode) values(?,?,?,?,?,?,?,?,?,?);");
       ps.setString(1,Aadhar);
       ps.setString(2,Mobile);
       ps.setString(3,Area);
       ps.setString(4,Village);
       ps.setString(5,Acres);
       ps.setString(6,CropDuration);
       ps.setString(7,SellerName);
       ps.setString(8,CropName);
       ps.setString(9,Date);
       ps.setString(10,Pincode);
       int x=ps.executeUpdate();
       if(x>0){
                 out.println("selling details are inserted successfully");
                    response.sendRedirect("Thnkupage.html");              
         }else{
                out.println("Details NOT inserted successfully");
         }
      }catch(Exception e){
                 out.println(e);
         
            }   
%>
