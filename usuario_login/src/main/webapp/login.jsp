<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="ext/html;" charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login.jsp" method="post">
		Usuario: <br><input type="text" name="usuario" /><br>
		Senha: <br><input type="password" name="senha" /><br>
		<input type="submit" value="Logar"/> 	
	
	</form>
	<%
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		if(usuario!=null && senha!=null && !usuario.isEmpty() && !senha.isEmpty()){
			session.setAttribute("usuario", usuario);
			response.sendRedirect("viewusuario.jsp");
		}
	%>
	

</body>
</html>