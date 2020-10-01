<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<a href="index.jsp"> <input type="button" id="button1" value="Home" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"> </a> <br> 

<%
		String t1=request.getParameter("text1");
                String p1=request.getParameter("pass1");
                String p2=request.getParameter("pass2");
                String t2=request.getParameter("text2");
                String t3=request.getParameter("text3");
                String t4=request.getParameter("text4");
                String t5=request.getParameter("text5");
                String t6=request.getParameter("text6");
                String t7=request.getParameter("text7");
                String t8=request.getParameter("text8");
                String t9=request.getParameter("text9");               
                
                String strQuery = "SELECT COUNT(*) FROM custdettab where uName='"+t1+"'";

		
                if(t1!=null&&t1!=""){
                    Statement st=con.createStatement();
                    ResultSet rs = st.executeQuery(strQuery);
                    rs.next();
                    String Countrow = rs.getString(1);
                    if(Countrow.equals("0")){
                    stmt.executeUpdate("insert into custDetTab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "','N')");
                    out.println("Record Saved Successful");
                    response.sendRedirect("mainpage.jsp");
                    }       
                    else{
                        out.println("<center><font face=Calibri size=6 color=#ff0000>User Name or Email already exists !</font></center>");
                    }
                
                }
                


%>

<script type="text/javascript">
    
function showAlert(){
alert("Hi This is Simple alert");
}

  function validate()
  {
  usernametext=document.form1.text1.value;
  var id=/^[a-zA-Z0-9,. ]+$/;
  if(usernametext==="")
         {
                alert("Please Enter the User Name");
                document.form1.text1.focus();
                return false;
          }
  
    userpsd=document.form1.pass1.value; 
    var id=/^[a-zA-Z0-9,. ]+$/;
    if(userpsd==="")
    {
     alert("Please Enter the Password");
     document.form1.pass1.focus();
     return false;
    }
     usercpsd=document.form1.pass2.value; 
    var id=/^[a-zA-Z0-9,. ]+$/;
    if(usercpsd==="")
    {
     alert("Please Enter the Password");
     document.form1.pass2.focus();
     return false;
    }   
    if(userpsd!==usercpsd)
    {
        alert("Password and Confirm Password is not Matching");
        document.form1.pass1.value="";
        document.form1.pass2.value="";
        document.form1.pass1.focus();
        return false;
        }
        
        cstname=document.form1.text2.value; 
    var id=/^[a-zA-Z0-9,. ]+$/;
    if(cstname==="")
    {
     alert("Please Enter the Customer Name");
     document.form1.text2.focus();
     return false;
    }
    
    
    address=document.form1.text3.value; 
    var id=/^[a-zA-Z0-9,. ]+$/;
    if(address==="")
    {
     alert("Please Enter the Address");
     document.form1.text3.focus();
     return false;
    }
        
     city=document.form1.text4.value; 
    var id=/^[a-zA-Z0-9,. ]+$/;
    if(city==="")
    {
     alert("To Select The City,Please Go to Admin Page And Add the city there and then come back here and try! Thank You");
     document.form1.text4.focus();
     return false;
    }   
     state=document.form1.text5.value;
     var id=/^[a-zA-Z0-9,. ]+$/;
     if(state==="")
     {
       alert("To Select The State,Please Go to Admin Page And Add the State there and then come back here and try! Thank You");
        document.form1.text5.focus();
        return false;
     }
     
     var x = document.forms["form1"]["text6"].value;
        if(isNaN(x)|| x.indexOf(" ")!==-1)
        {
               document.form1.text6.focus();
               document.form1.text6.value="";
              alert("Enter your 10 digit phone number");
              return false;
        }
        else if (x === ''||x === null)
        {
            alert("Enter the Phone Number");
            document.form1.text6.focus();
               document.form1.text6.value="";
            return false;
        }
        if (x.length > 10 || x.length < 10 )
        {
                alert("enter 10 digit phone number");
                document.form1.text6.focus();
               document.form1.text6.value="";
               return false;
        }
        
        email=document.form1.text7.value;
        if(email==="")
        {
            alert("Please Enter Email properly");
            document.form1.text7.focus();
            
        }
        qualification=document.form1.text8.value;
     var id=/^[a-zA-Z0-9,. ]+$/;
     if(qualification==="")
     {
       alert("To Select The Qualification,Please Go to Admin Page And Add the Qualification there and then come back here and try! Thank You");
        document.form1.text8.focus();
        return false;
     }
      profession=document.form1.text9.value;
     var id=/^[a-zA-Z0-9,. ]+$/;
     if(profession==="")
     {
       alert("To Select The Qualification,Please Go to Admin Page And Add the Profession there and then come back here and try! Thank You");
        document.form1.text9.focus();
        return false;
     }  
        
        
        
  }
  
</script>

















<style>
    
    #signup_id{
    border:2px solid black; 
    width: 600px; 
    margin-left: 380px; 
    border-radius: 80px;
    background: rgba(0,0,128,0.2);
    }
    </style>


    <div id="signup_id" >
<table border="0" > 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST" name="form1"   action="customersignup.jsp" onsubmit="mess();">
    <table border="0"> 
        <tr> <td height="20" colspan="2"><a href="customersignup.jsp"> <img style="-webkit-user-select: none" src="images/custsignup.bmp"> </a></td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value="" ></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value="" required=""></td> </tr>
    <tr> <td height="40"> Retype Password </td> <td> <input type="password" name="pass2" value="" required=""></td> </tr>
    <tr> <td height="40"> Customer Name </td> <td> <input type="text" name="text2" value="" required=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <input type="text" name="text3" value="" required=""></td> </tr>
    
    
    <tr> <td height="40" > City Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select cityName from CityTab order by cityname");
		out.println("<select  name=text4 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("cityname")+ " </option>");
                }
                out.println("</select>");
                rst.close();
%>  
     </td> </tr>    
    
    
    
    <tr> <td height="40"> State Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select * from stateTab order by statename");
		out.println("<select  name=text5 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("statename")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>    
    
    
    <tr> <td height="40"> Phone Nos </td> <td> <input type="text" maxlength="10" name="text6" value="" required="" ></td> </tr>
    <tr> <td height="40"> eMail Id </td> <td> <input type="email" name="text7" value="" required=""></td> </tr>

    <tr> <td height="40"> Qualification Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select edname from QualificationTab order by edname");
		out.println("<select  name=text8 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("edname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>    
    
    <tr> <td height="40"> Profession Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select jobname from professionTab order by jobname");
		out.println("<select  name=text9 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("jobname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>        

    
     
     
    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" value="SignUp" onclick="return validate();" style="cursor: pointer; height: 30px; width: 100px; background-color: black; color:red;"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table></div>
<A href="mainpage.jsp" ><input type="submit" name="Search" value="<<  Back" style="cursor: pointer; height: 30px; width: 180px; background-color: black; color:red;"></A> <BR> 
<%@ include file="footerfile.jsp"%>
