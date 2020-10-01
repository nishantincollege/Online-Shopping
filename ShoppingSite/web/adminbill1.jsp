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
xmlhttp.open("GET","ajaxbill1.jsp?bvar="+document.form1.text1.value,true);
xmlhttp.send(null);
}
function v()
{
    bill_no=document.form1.text1.value;
    if(bill_no.length==="0")
    {
     alert("Please Enter 4 digit Bill Number");  
     document.form1.text1.value="";
        document.form1.text2.value="";
        document.form1.text1.focus();
        return false;
    }
    else if(bill_no.length<"4" ||bill_no.length>"4" )
    {
        alert("Please Enter 4 digit Bill Number");
        document.form1.text1.value="";
        document.form1.text2.value="";
        document.form1.text1.focus();
        return false;
    }
}
</script>

    </head>
    <body background="images/back2.bmp">
<A href="adminmainpage1.jsp"><input type="button" id="button1" value="Admin Main" style="cursor: pointer; height: 31px; width: 100px; background-color: black; color:blue;"></A> <BR> 

    <center>
        
        

        <form name="form1">        
        <table border="0" width="50%" align="center">
                <tr><td height="40" > </td> </tr>
                <tr><td  > Enter the Bill No </td> <td  > <input type="text" name="text1" required=""> </td> <td  > <input type="button" name="find" value="   Find    " onclick="ajaxfunction(); v(); " style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"> </td></tr>
                <tr> </tr>
                <tr> <td colspan="3"> <textarea name="text2" cols="100" rows="20" disabled=""></textarea></tr>
                
        </table>
        </form>   
            
           
    </center>
    </body>
    
</html>
<%@ include file="footerfile.jsp"%>
