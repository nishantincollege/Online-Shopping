<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<A href="custmainpage.jsp"><input type="button" id="button1" value="Cust Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR>        

<style>
#custsearch2_id{
    border:2px solid black; 
    width: 500px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="custsearch2_id">
<table border="0"> 
<tr><td height ="100" width="25%"></td><td>
        <br><br>
    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/searchlist.bmp"> </td> </tr>   
<% 
            String var1a,var2a;
            var1a=(String)session.getAttribute("var1");
           
            
                rst=stmt.executeQuery("select * from ProductTab where category = '"+var1a+"' order by prodcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                while( rst.next())
                {
                    String a1=rst.getString("ProdCode");
                    a1=a1.replace(" ","_");
                out.println("<tr> <td height=20><A href=custsearch3.jsp?pcode="+a1+">"+rst.getString("ProdCode")+ " </a> </td><td height=20>"+rst.getString("ProdName")+ " </td><td height=20>"+rst.getString("Category")+ " </td> <td> " + rst.getString("sPrice")+ "</td></tr>" );
                }
                
%>  
    
    </table>

</td><td width="25%"></td></tr>
</table>
</div>
<A href="custsearch1.jsp" ><input type="submit" name="Search" value="<<  Back" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 

<%@ include file="footerfile.jsp"%>

