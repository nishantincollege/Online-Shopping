<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<%
		String t1=request.getParameter("text1");
		
                session.setAttribute( "var1", "" );
                
		if(t1!=null&&t1!="")
                {
                session.setAttribute( "var1", t1 );
                
           
                response.sendRedirect("custsearch2.jsp");
                }
              

%>


<A href="custmainpage.jsp"><input type="button" id="button1" value="Cust Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR>        

        
<style>
#custsearch1_id{
    border:2px solid black; 
    width: 500px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="custsearch1_id"><br><br>
<table border="0" align="center"> 
<tr><td height ="100" width="20%"></td><td>

<form method="POST"    action="custsearch1.jsp">      
    <table border="1" cellpadding="5" cellspacing="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/search.bmp"> </td> </tr>   
      
    <tr> <td height="40"> Product Category </td> <td> 
<% 
                rst=stmt.executeQuery("select categoryname from CategoryTab order by CategoryName");
		out.println("<select  name=text1 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("CategoryName")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%> 
     </td> </tr>      

   
    
    
    
<tr><td width="20%"> </td> <td> <input type="submit" name="Search" value="Search" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"> </td></tr>
</table>
        
</form>

</td>  </tr>    
<tr><td height="120"> </td> <td> 
</table>


</div>
<%@ include file="footerfile.jsp"%>
