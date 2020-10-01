
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                int a1=0;
                session.setAttribute( "s1var", "");
                rst=stmt.executeQuery("select * from stateTab where stateName= '" + t1 + "'");
                if (rst.next())
                {
                session.setAttribute( "s1var", "<center><font face=Calibri size=5 color=#ff0000>This record is all ready present please check</font></center>");
                a1=1;
                }
		
                if(a1!=1){
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into StateTab value('" + t1 + "','" + t2 + "')");
                out.println( "<center><font face=Calibri size=6 color=#ff0000>Record Saved Successfully</font></center>");
                               }
                
                	}

%>

<style>
#adminstate_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="adminstate_id">



<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="adminstate.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/statenames.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> State Name </td> <td> <input type="text" name="text1" value="" required=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" value="Save" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
</div>
<%@ include file="footerfile.jsp"%>