<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Shopping</title>
<script type="text/javascript" >
function ajaxfunction()
{
var xmlhttp;
if(window.XMLHttpRequest)
{
  xmlhttp=new XMLHttpRequest();
}
else 
{
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
  if(xmlhttp.readyState===4)
  {
  document.form1.text2.value= xmlhttp.responseText;
  //document.writeln(xmlhttp.responseText);
  }
};
xmlhttp.open("GET","custsearchajax.jsp?bvar="+document.form1.text1.value,true);
xmlhttp.send(null);
}
function v()
{
    prdcode=document.form1.text1.value;
    if(prdcode.length==="0")
    {
     alert("Please Enter 3 digit Bill Number");  
     document.form1.text1.value="";
        document.form1.text2.value="";
        document.form1.text1.focus();
        return false;
    }
    else if(prdcode.length<"3" ||prdcode.length>"3" )
    {
        alert("Please Enter 3 digit Bill Number");
        document.form1.text1.value="";
        document.form1.text2.value="";
        document.form1.text1.focus();
        return false;
    }
}
</script>

    </head>
    <body background="images/back2.bmp">
<A href="custmainpage.jsp"><input type="button" id="button1" value="Cust Main" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></A> <BR>        

    <center>
        
        

        <form name="form1">        
        <table border="0" width="50%" align="center">
            <tr><td height="40" > </td> </tr><br>
            <tr><td  > Enter the Prod Code </td> <td  > <input type="text" name="text1" required=""> </td> <td  > <input type="button" name="find" value="   Find    " onclick="ajaxfunction(); v();" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"> </td></tr>
                <tr> </tr>
                <tr> <td colspan="3"> <textarea name="text2" cols="100" rows="20" disabled=""></textarea></td></tr>
                
        </table>
        </form>   
            
           
    </center>
    </body>
    
</html>
<%@ include file="footerfile.jsp"%>