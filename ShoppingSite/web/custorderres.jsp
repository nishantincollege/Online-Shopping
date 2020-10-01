
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="custmainpage.jsp" ><input type="submit" name="Search" value="Cust Main" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 

<style>
#custorders_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 550px;
    }
</style>
<div id="custorders_id">

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<% 
            String var1a,sidvar;
            Integer ivar=0;
            Integer bvar=0;
            sidvar=(String)session.getAttribute("randvar");
            rst=stmt.executeQuery("select (max(billno)+1) as billno1 from mCartTab");
            if(rst.next())
            bvar=Integer.parseInt(rst.getString("billno1"));
            //rst.close();
            java.util.Date date1 = new java.util.Date();
            DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
            String dvar = fmt1.format(new java.util.Date());
                
            
                rst=stmt.executeQuery("select * from tCartTab where sid = '"+sidvar+"' order by productcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                while( rst.next())
                {
                ivar=ivar+1;
                  stmt1.executeUpdate("insert into mCartTab value('" + bvar + "','" + dvar + "','" + ivar + "','" + rst.getString("custcode") + "','" + rst.getString("productcode") + "'," + rst.getString("qty") + "," + rst.getString("price") + "," + rst.getString("totAmt") + ")");
                    session.setAttribute( "b1var", bvar.toString() );
                }
                rst.close();
%>
<script type="text/javascript">
    function custorder()
    {
        payment=document.form4.text1.value;
        var id=/^[a-zA-Z0-9,. ]+$/;
if(payment==="")
{
    alert("Please Enter card details...");
    document.form4.text1.focus();
    return false;
}
card=document.form4.text2.value;
var id=/^[a-zA-Z0-9,. ]+$/;
if(card==="")
{
    alert("Please Enter card details...");
    document.form4.text2.focus();
    return false;
}
delivery=document.form4.text3.value;
var id=/^[a-zA-Z0-9,. ]+$/;
if(delivery==="")
{
    alert("Please Enter Delivery Instructions...");
    document.form4.text3.focus();
    return false;
}

    }
</script>

<form method="POST" name="form4"   action="custorderres1.jsp" onsubmit="return custorder();">
<table border="0" cellpadding="5" cellspacing="5"> 
<tr> <td height="20"> <img style="-webkit-user-select: none" src="images/order1.bmp"> </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20"> <h3> You are step away to finalize your order </h3> </td> </tr>   
<tr> <td height="20"> Payment Type  </td> </tr>   

<tr> <td height="20"> <select  name=text1 size=1> 
    <option> Credit Card </option>
    <option> Debit Card </option>
    <option> Bank Cheque  </option>
    <option> Cash on delivery  </option>
    <option> others  </option>
        </select>
    </td> </tr>   
<tr> <td height="20">  Card No and Details</td> </tr>  
<tr> <td height="20">   <input type="text" name="text2" ></td> </tr>  
<tr> <td height="20">  Product Delivery Instructions</td> </tr>  
<tr> <td height="20">   <input type="text" name="text3" ></td> </tr>  
<tr> <td align="center"> <input type="submit" name=" &nbsp&nbsp Finalize the order" value="Finalize the order"  style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>
</div>
<script type="text/javascript">
function goBack() {
  window.history.back();
}
</script>
<input type="submit" name="Search" value="<<  Back"  onclick="goBack();"style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 

<%@ include file="footerfile.jsp"%>


