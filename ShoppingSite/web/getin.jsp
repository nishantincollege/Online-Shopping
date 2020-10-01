<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="headfile.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Blood Bank</title>
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
  document.form1.text2.value= "Hello "+document.form1.text1.value+ "  "+xmlhttp.responseText;
  //document.writeln("hello "+document.form1.text1.value+ "  "+xmlhttp.responseText);
  }
};
xmlhttp.open("GET","ajaxpro1.jsp",true);
xmlhttp.send(null);
}
</script>

    </head>
    <body background="images/back2.bmp">
        <br><br>
    <center>
        <form name="form1">        
        <table border="0" width="80%" align="center" style="margin-left: 400px;">
            <tr><td height="100" > </td> </tr><br><br><br>
                <tr><td > Enter your name </td> </tr>
                <tr><td  > <input type="text" name="text1"> </td> </tr>
                <tr><td  > <input type="button" name="Next" value="Next" onclick="ajaxfunction()" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"> </td> </tr>
                <tr><td  > <input type="text" name="text2" size="35" disabled="disabled"> </td> </tr>
        </table>
            
            
             <table border="0" width="80%" align="center">
                <tr><td height="100" > </td> </tr>
                <tr><td  align="right"> <a href="mainpage.jsp"><input type="button" id="button1" value="Move on.." style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></a>  </td> </tr>
                <tr><td  > </td> </tr>
        </table>
        </form>
    </center>
    </body>
    
</html>
<%@ include file="footerfile.jsp"%>