<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR> 
  <style>
#admincustorders2_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
<div id="admincustorders2_id"> 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="6"> <img style="-webkit-user-select: none" src="images/admino1.bmp"> </td> </tr>   

    
    <% 
                rst=stmt.executeQuery("select * from mCartTab order by billno desc,slno");
		out.println("<tr> <td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Bill Number</font>"+ "</td><td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Cust Name</font>"+ "</td><td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Product Code</font>"+ "</td><td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Quantity</font>"+ "</td><td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Price</font>"+ "</td><td align=center bgcolor=#65F905  height=20> <font face=Calibri size=4 color=#003300>Total Amount</font>"+ "</td> </tr>" );
                while( rst.next())
                {
                out.println("<tr> <td align=center height=20>"+rst.getString("BillNo")+ " </td><td align=center height=20>"+rst.getString("custcode")+ " </td> <td align=center> " + rst.getString("ProductCode")+ "</td><td align=center height=20>"+rst.getString("Price")+ " </td><td align=center height=20>"+rst.getString("Qty")+ " </td><td align=center height=20>"+rst.getString("TotAmt")+ " </td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>
</div>
<%@ include file="footerfile.jsp"%>
