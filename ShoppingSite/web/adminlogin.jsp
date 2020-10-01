
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<a href="index.jsp"> <input type="button" id="button1" value="Home" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"> </a> 
<br>
<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
		//stmt.executeUpdate("insert into books_details(book_name,author) values('"+bookname+"','"+author+"')");
		rst=stmt.executeQuery("select * from AdminloginTab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		 if(t1!=null)
                {
                if (rst.next())
                {out.println("Login Successful");
                response.sendRedirect("adminmainpage1.jsp");
                 }
                
                
                else
                {out.println("Invalid Username or Password");
                }
                }
%>

<style>
    
    #adminlogin_id{
    border:2px solid black; 
    width: 550px; 
    margin-left: 380px; 
    border-radius: 80px;
    background: rgba(0,0,128,0.2);
    }
    </style>
    <div id="adminlogin_id">


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST"    action="adminlogin.jsp">
    <table border="0" > 
    <tr> <td height="20" colspan="2"> <a href="adminlogin.jsp"><img style="-webkit-user-select: none" src="images\adminlogin.bmp"/></a> </td> </tr>
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value="" required=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="text2" value="" required=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" value="Login" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>
</div>
    <A href="mainpage.jsp" ><input type="submit" name="Search" value="<<  Back" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 
<%@ include file="footerfile.jsp"%>