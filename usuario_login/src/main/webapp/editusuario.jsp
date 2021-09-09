<%@page import="dao.UsuarioDao"%>
<jsp:useBean id="u" class="bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i = UsuarioDao.updateUsuario(u);
response.sendRedirect("viewusuario.jsp");
%>