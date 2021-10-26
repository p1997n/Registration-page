

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.util.Validation"%>
<!DOCTYPE html>
<html>
   
    <body>
        <%
            String sname=request.getParameter("email");
            String spass = request.getParameter("pass");
        
        boolean IsValid = Validation.ValidateUser(sname, spass);
        
        if(IsValid){
           %>
           <jsp:forward page="welcome.jsp">
               <jsp:param name="uname" value="<%=sname%>"/>
           </jsp:forward>
        <%
        }else{
        %>
        <%="Use naame or password invalid"%>
        <jsp:include page="Home.jsp"/>
        <%
        }
        %>
    </body>
</html>
