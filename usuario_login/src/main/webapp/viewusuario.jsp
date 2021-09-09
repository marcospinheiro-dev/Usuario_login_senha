<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualização de Usuários</title>
</head>
<body>

		
	<%
		String usuario = (String) session.getAttribute("usuario");
		if(usuario == null) {
			response.sendRedirect("login.jsp");
		} else {
			out.print("Bem vindo, " + usuario + "<br/>");
		}
	%>

	<%@ page import="dao.UsuarioDao, bean.*, java.util.*"%>	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<h1>Listagem de Usuários</h1>
	
	<%
	List<Usuario> list = UsuarioDao.getAllUsuarios();
	request.setAttribute("list", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Celular com DDD</th>
			<th>Fixo com DDD</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>	
		<c:forEach items="${list}" var="usuario">
			<tr>
				<td>${usuario.getId()}</td>
				<td>${usuario.getNome()}</td>
				<td>${usuario.getPassword()}</td>
				<td>${usuario.getEmail()}</td>
				<td>${usuario.getCelular()}</td>
				<td>${usuario.getFixo()}</td>
				<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
				<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
			</tr>
		</c:forEach>	
	</table>
	<br>
	<a href="addusuarioform.jsp">Adicionar novo Usuário</a>
	
	
	<br/> <a href="deslogar.jsp">Deslogar</a>

</body>
</html>