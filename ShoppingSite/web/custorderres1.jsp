
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp" ><input type="submit" name="Search" value="Cust Main" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 
<style>
#custorders1_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 550px;
    }
</style>
<div id="custorders1_id">


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<% 
            String var1,bvar;
            bvar=(String)session.getAttribute("b1var");
            var1=(String)session.getAttribute("custcodevar");
            String t1=request.getParameter("text1");
	    String t2=request.getParameter("text2");
            String t3=request.getParameter("text3");
            stmt1.executeUpdate("insert into PayDetTab value('" + bvar + "','" + var1 + "','" + t1 + "','" + t2 + "','" + t3 + "')");
                    
                
%>       
<table border="0" cellpadding="5" cellspacing="5"> 
<tr> <td height="20"> <img style="-webkit-user-select: none" src="images/order1.bmp"> </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20"> <h3> Thank you for your order </h3> </td> </tr>   
<tr> <td height="20"> <h3> We will despatch your order products soon. </h3>  </td> </tr>   
<tr> <td height="20"> <h3> Your order no is : <%= bvar%> </h3>  </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20"> <A href="mainpage.jsp"><input type="submit" name="Search" value="Log Out" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> </td> </tr>   
</table>
          <script type="text/javascript">
            function preventBack(){
    window.history.forward();        
    }
            setTimeout("preventBack()",0);
              window.onload = function () { null};
              
              
              
          </script>
</td><td width="25%"></td></tr>
</table>
</div>
<A href="custsearch2.jsp" ><input type="submit" name="Search" value="<<  Back" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 

<%@ include file="footerfile.jsp"%>



