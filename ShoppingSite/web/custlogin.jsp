<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<A href="index.jsp"><input type="button" id="button1" value="Home" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></a>  

<br>
<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                session.setAttribute( "custcodevar", "" );
		rst=stmt.executeQuery("select * from custDetTab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		
                           
                
                
                
                if(t1!=null)
                {
                    
                    
                    
                if (rst.next())
                {
                out.println("Login Successful");
                Double r1=Math.random()*558963;
                session.setAttribute( "randvar", r1.toString() );
                session.setAttribute( "custcodevar", t1 );
                response.sendRedirect("custmainpage.jsp");
                
                }
                else
                {
                    out.println("Invalid username & password");
                }

                    
                    
                    
                    
                    
                }
%>

<script type="text/javascript">
    function validation()
    {
    user=document.form2.text1.value;
    if(user==="")
    {
        alert("Please Fill Username");
        document.form2.text1.focus();
        return false;
    }
   pass=document.form2.text2.value;
   if(pass==="")
   {
       alert("Pleasr Fill Password");
       document.form2.text2.focus();
       return false;
   }
    }
       
</script>
<style>
    
    #custlogin_id{
    border:2px solid black; 
    width: 500px; 
    margin-left: 400px; 
    border-radius: 80px;
    background: rgba(0,0,128,0.2);
    }
    </style>
    <div id="custlogin_id">
<table border="0" > 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST" name="form2"   action="custlogin.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <a href="custlogin.jsp"><img style="-webkit-user-select: none" src="images/custlogin.bmp"></a> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> Username </td> <td> <input type="text" name="text1" value="" required=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="text2" value="" required=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" value="Login" onclick="validation();" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
</div>
    <A href="mainpage.jsp" ><input type="submit" name="Search" value="<<  Back" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 
<%@ include file="footerfile.jsp"%>

