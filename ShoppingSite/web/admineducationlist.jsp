<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR> 

<style>
#admineducationtlist_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="admineducationtlist_id">

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/edlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from qualificationTab order by edname");
		out.println("<tr> <td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300> Qualification Name</font>"+ "</td><td align=center bgcolor=#65F905   height=20> <font face=Calibri size=4 color=#003300> Details of Qualification</font>"+ "</td> </tr>" );
                while( rst.next())
                {
                out.println("<tr> <td height=20 align=center>"+rst.getString("edname")+ " </td> <td align=center> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</div>
<%@ include file="footerfile.jsp"%>
