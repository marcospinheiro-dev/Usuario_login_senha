<%@page import="dao.UsuarioDao"%>
<jsp:useBean id="u" class="bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
UsuarioDao.deletarUsuario(u);
response.sendRedirect("viewusuario.jsp");
%>