<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

  <html>
      <head>
          <style>
              
              #mainadmin_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 50px;
    background: rgba(0,0,128,0.2);
    height: 650px;
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
<% //out.print( request.getRemoteAddr() ); %>      
<a href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></a>       
<br>
<b>
    <div id="mainadmin_id">
        <font face="verdana" size="2"><br>
        <table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> 
        
            
      <tr> <td height="20"> <A href="admincat.jsp"> <input type="button" id="button1" value="Category Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> <td> <A href="admincatlist.jsp"><input type="button" id="button1" value="Category List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </td> </tr>
       <tr> <td height="20"> <A href="adminproduct.jsp"><input type="button" id="button1" value="Product Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> <td> <A href="adminproductlist.jsp"><input type="button" id="button1" value="Product List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </td> </tr>
              <tr> <td height="20"> <A href="admineducation.jsp"> <input type="button" id="button1" value="Qualification Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> <td> <A href="admineducationlist.jsp"><input type="button" id="button1" value="Qualification List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </td> </tr>
        <tr> <td height="20"> <A href="adminjob.jsp"><input type="button" id="button1" value="Profession Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> </td> <td> <A href="adminjoblist.jsp"><input type="button" id="button1" value="Profession List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </tr>
         <tr> <td height="20"> <A href="adminstate.jsp"><input type="button" id="button1" value="State Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> </td> <td> <A href="adminstatelist.jsp"><input type="button" id="button1" value="State List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a> </td></tr>
        <tr> <td height="20"> <A href="admincity.jsp"><input type="button" id="button1" value="City Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a></td> <td> <A href="admincitylist.jsp"><input type="button" id="button1" value="City List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </tr>
              <tr> <td height="20"> <A href="admincustlist.jsp"><input type="button" id="button1" value="Customer Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a></td> <td> <A href="admincitywise.jsp"><input type="button" id="button1" value="Citywise Customers" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </tr>
              <tr> <td height="20"> <A href="admincustorders1.jsp"><input type="button" id="button1" value="Customer Orders" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a></td> <td> <A href="admincustorders2.jsp"><input type="button" id="button1" value="Customer Order Detail List" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </tr>
               <tr> <td height="20"> <A href="adminbill1.jsp"><input type="button" id="button1" value="View Individual Bill Details" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a></td> <td> <A href="mainpage.jsp"><input type="button" id="button1" value="Logout" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></a>  </tr>
        </table>
</font>
</b></div>
  </html>

  
  <%@ include file="footerfile.jsp"%>