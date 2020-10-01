<%-- 
    Document   : mainpage
    Created on : March 20, 2020, 11:23:13 PM
    Author     : Nishant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headfile.jsp"%>


  <%
                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";

                if (now.get(now.HOUR_OF_DAY) < 12) {
                    tod = "Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 15) {
                    tod = "Afternoon!";
                    } else if (now.get(now.HOUR_OF_DAY) < 18) {
                    tod = "Evening!";
                } else {
                    tod = "Night!";
                }


        %>

        <h1 style="margin-left: 42%;">Hi,Good <%=tod%></h1>
        
        <BR>
        <BR>
 
        <table width="80%" border="0" style="margin-top: -50px; margin-left: 120px;"> 
        
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="20" align="center"> <A href="custlogin.jsp"><img style="-webkit-user-select: none; margin-top: -180px;" src="images\custlogin.bmp"></a> </td> </tr>
        <tr> <td height="20" align="center"> <A href="customersignup.jsp"><img style="-webkit-user-select: none; margin-top: 50px;" src="images\custsignup.bmp"></a> </td> </tr>
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="20" align="center"> <A href="adminlogin.jsp"><img style="-webkit-user-select: none; margin-bottom: -1px;" src="images\adminlogin.bmp"></a> </td> </tr>
        </table>
        
</html>
<%@ include file="footerfile.jsp"%>