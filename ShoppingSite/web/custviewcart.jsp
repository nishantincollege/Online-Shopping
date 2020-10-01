
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<A href="custmainpage.jsp" ><input type="submit" name="Search" value="Cust Main" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 
<form method="POST"    action="custorderres.jsp" onsubmit="return validatecount();">
<style>
#custviewcart_id{
    border:2px solid black; 
    width: 500px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 500px;
    }
</style>
<div id="custviewcart_id">

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>
        <br><br>
<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/viewcart2.bmp"> </td> </tr>   
<tr> <td> Product Code </td> <td> Price</td><td>Qty </td><td>Tot Amount </td></tr>
<% 
            String var1a,sidvar;
            int varTotAmount=0;
            sidvar=(String)session.getAttribute("randvar");
            
            
                rst=stmt.executeQuery("select * from tCartTab where sid = '"+sidvar+"' order by productcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
               
                while( rst.next())
                {
                out.println("<tr> <td height=20> "+rst.getString("ProductCode")+ " </td> <td height=20> "+rst.getString("Qty")+ " </td><td height=20>"+rst.getString("price")+ " </td> <td> " + rst.getString("totAmt")+ "</td></tr>" );
                
                varTotAmount=varTotAmount+Integer.parseInt(rst.getString("totAmt"));
                }
                if(varTotAmount==0){
                 out.println("<font face=Calibri size=4 color=#000000> <b><center> To confirm order, the total amount should be more than 0</center></b></font>");   
                }
                out.println("<tr> <td align=center bgcolor=#ffff99 colspan=3 height=20> <font face=Calibri size=5 color=#003300> Total Amount</font>"+ "</td><td bgcolor=#ffff99 height=20><font face=Calibri size=5 color=#003300>"+varTotAmount+"</font> </td> </tr>" );
                
%>    
<script type="text/javascript">
function goBack() {
  window.history.back();
}

function validatecount(){
    var value = "<%= varTotAmount %>";
    if(value==="0"){
        return false;
    }
}
</script>

  <tr>  <td align="Right" colspan="5"> <input type="submit" value="Confirm Order" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></td> </tr>
    </table>

</td><td width="25%"></td></tr>
</table>
</form>
</div>
<input type="button" name="Search" value="<<  Back" onclick="goBack();" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 

<%@ include file="footerfile.jsp"%>

