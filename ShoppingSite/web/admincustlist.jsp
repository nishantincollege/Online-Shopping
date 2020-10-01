<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR> 
 <style>
#admincustlist_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="admincustlist_id">


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/custlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from custDetTab order by uName");
		out.println("<tr> <td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300> Username</font>"+ "</td><td align=center bgcolor=#65F905   height=20> <font face=Calibri size=4 color=#003300> Cust Name</font>"+ "</td><td align=center bgcolor=#65F905   height=20> <font face=Calibri size=4 color=#003300> City Name</font>"+ "</td><td align=center bgcolor=#65F905   height=20> <font face=Calibri size=4 color=#003300> Phone Number</font>"+ "</td> </tr>" );
                while( rst.next())
                {
                out.println("<tr> <td align=center height=20>"+rst.getString("uName")+ " </td><td align=center height=20>"+rst.getString("custname")+ " </td><td align=center height=20>"+rst.getString("cityName")+ " </td> <td align=center> " + rst.getString("phonenos")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</div>
<%@ include file="footerfile.jsp"%>