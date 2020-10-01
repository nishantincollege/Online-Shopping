<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR> 

<%
		String t1=request.getParameter("text1");
                String strQuery = "SELECT COUNT(*) FROM producttab where ProdCode='"+t1+"'";
              if(t1!=null&&t1!=""){
                  Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery(strQuery);
                    rs.next();
                    String Countrow = rs.getString(1);
                    if(Countrow.equals("0")){
		String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                String t4=request.getParameter("text4");
                Integer t5=Integer.parseInt(request.getParameter("text5"));
                String t6=request.getParameter("text6");
                stmt.executeUpdate("insert into productTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'," + t5 + ",'" + t6 + "')");
		//out.println("Record Saved Successful");
                //response.sendRedirect("mainpage.jsp");
                out.println( "<center><font face=Calibri size=6 color=#ff0000>Record Saved Successfully</font></center>");
                    }              
                    else{
                         out.println("<center><font face=Calibri size=6 color=#ff0000>Product Code already exists...</font></center>");
                    }
              }
               
              

%>
<style>
#adminproduct_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 600px;
    }
</style>
<div id="adminproduct_id">



<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminproduct.jsp"><br><br>
        <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/productdetails.bmp"> </td> </tr>    
    <tr>  
    <tr> <td height="40"> Product Code </td> <td> <input type="number" name="text1" value="" required=""></td> </tr>
    <tr> <td height="40"> Product Name </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> 
            <textarea rows="5" cols="20" name="text3" required="">
    
        </textarea>
        </td> </tr>
    
    
    <tr> <td height="40"> Category </td> <td> 
   
<% 
                rst=stmt.executeQuery("select CategoryName from CategoryTab order by Categoryname");
		out.println("<select  name=text4 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("Categoryname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr>    
    
    <tr> <td height="40"> Price </td> <td> <input type="number" name="text5" value="" required=""></td> </tr>
    <tr> <td height="40"> Remarks </td> <td> <input type="text" name="text6" value="" required=""></td> </tr>

    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" value="Save" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></td> </tr>       
    
     <tr> <td height="60" colspan="2"> </td> </tr> 
    
    
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
</div>
<%@ include file="footerfile.jsp"%>
