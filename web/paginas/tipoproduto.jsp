<%-- 
    Document   : testeProduto
    Created on : 22/05/2018, 16:34:21
    Author     : Jaque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:useBean id="dao" class="DAOs.DAOTipoproduto"/>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem Tipo de Produto</title>
        <link href="../css/Listas.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formularioproduto.jsp">Cadastro Produto</a>
                    </li>
                   <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formulariotipoproduto.jsp">Cadastro Tipo Produto</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formularioempresa.jsp">Cadastro Empresa</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/cliente.jsp">Clientes</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/empresa.jsp">Empresas</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/produtoL.jsp">Produtos</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/tipoproduto.jsp">Tipos de Produto</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/paginaPrincipal.jsp">Menu</a>
                    </li>
                </ul>
            </nav>
        <table id="customers">
                <thead>
                <th>ID</th>
                <th>Tipo de Produto</th>     
                </thead>
                <tbody>
                    <c:set var="resultadoLista" value="${dao.listInOrderId()}"/>
                    <c:forEach var="p" items="${resultadoLista}">
                        <tr> 
                            <td>${p.getIdTipoProduto()}</td>
                            <td>${p.getTipoProduto()}</td>
                        </tr>
                        </c:forEach>
                </tbody>

            </table>
    </body>

</html>
