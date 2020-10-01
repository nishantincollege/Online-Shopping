<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<html>
    <head>
         <style>
#custmainpage_id{
    border:2px solid black; 
    width: 500px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 400px;
    }
</style>
           <script type="text/javascript">
            function preventBack(){
    window.history.forward();        
    }
            setTimeout("preventBack()",0);
              window.onload = function () { null};
              
              
              
          </script>

    </head>  
<A href="custmainpage.jsp"><input type="button" id="button1" value="Cust Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR>        
<BR>
<font face="verdana" size="3">
<div id="custmainpage_id"><br><br>
        <table border="1" align ="center" width="40%" cellpadding="10" cellspacing="10"> 
        
            
        <tr> <td bgcolor="" height="40"> <A href="custsearch1.jsp"><input type="button" id="button1" value="Search Products" style="cursor: pointer; height: 30px; width: 220px; background-color: black; color:red;"></a> </td> </tr>
        <tr> <td bgcolor="" height="40"> <A href="custsearch.jsp"><input type="button" id="button1" value="Search Products by Product Code " style="cursor: pointer; height: 30px; width: 220px; background-color: black; color:red;"></a> </td> </tr>
        <tr> <td bgcolor="" height="40"> <A href="custviewcart.jsp"><input type="button" id="button1" value="View Cart" style="cursor: pointer; height: 30px; width: 220px; background-color: black; color:red;"></a> </td> </tr>
        <tr> <td bgcolor="" height="40"> <A href="index.jsp"><input type="button" id="button1" value="Logout" style="cursor: pointer; height: 30px; width: 220px; background-color: black; color:red;"></a> </td>  </tr>
        </table>
</font>
</div>
</html>
<%@ include file="footerfile.jsp"%>