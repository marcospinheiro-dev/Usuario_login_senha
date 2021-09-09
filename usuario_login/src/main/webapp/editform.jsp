<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição do Usuário</title>
</head>
<body>

	<%@page import="bean.Usuario, dao.UsuarioDao" %>
	
	<%
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getRegistroById(Integer.parseInt(id));
	%>
	
	<h1>Edição do Usuário</h1>
	
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId() %>"/>
		<table>
			<tr>
				<td>Nome:</td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Celular: </td>
				<td><input type="text" name="celular" value="<%=usuario.getCelular()%>"/></td>
			<tr>
			<tr>
				<td>Fixo: </td>
				<td><input type="text" name="fixo" value="<%=usuario.getFixo()%>"/></td>
			<tr>
			<tr>
				<td colspan="2"><input type="submit" value="Editar Usuário"></input></td>
			</tr>					
		</table>	
	</form>	

</body>
</html>