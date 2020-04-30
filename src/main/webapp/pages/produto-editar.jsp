<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
<fmt:setLocale value="pt-BR" />

    <title>Comidas - Editar essa Comida Deleciosa</title>
    
    <spring:url value="/resources/css" var="css" />
    <spring:url value="/resources/js" var="js" />
    <spring:url value="/resources/images" var="img" />
    
    <c:set value="${pageContext.request.contextPath}" var="contextPath" />
    
    
    <link href="${css}/bootstrap.css" rel="stylesheet">
    <link href="${css}/main.css" rel="stylesheet">
    <link href="${css}/small-business.css" rel="stylesheet">

</head>

		<body style="background-image: url(${img}/bg.jpg)">
		<div class="container">
			<div class="row align-items-center justify-content-center"> 
				<h1 class="display-4 mb-4">Comidas Deliciosas - Editar Comida</h1>
			</div>
		</div>
		<div class="container">
			<div class="col-lg-12">
				<form action="${contextPath}/comida/salvarEditar" method="POST">
					<input type="hidden" name="id" id="id" value="${comida.id}" />
				  <div class="form-group">
				    <label for="exampleInputEmail1">Nome</label>
				    <input type="text" class="form-control" id="nome" name="nome" aria-describedby="emailHelp" placeholder="Nome da Comida" value="${comida.nome}" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Descrição</label>
				    <input type="text" class="form-control" id="descricao" name="descricao" aria-describedby="emailHelp" placeholder="Descrição da Comida" value="${comida.descricao}" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Preço</label>
				    <input type="number" class="form-control" id="preco" name="preco" aria-describedby="emailHelp" placeholder="Preço da Comida" value="${comida.preco}" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">País de Origem</label>
				    <input type="text" class="form-control" id="pais_origem" name="pais_origem" aria-describedby="emailHelp" placeholder="Pais de origem da Comida" value="${comida.pais_origem}" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Calorias</label>
				    <input type="number" class="form-control" id="total_calorias" name="total_calorias" aria-describedby="emailHelp" placeholder="Total de calorias da Comida" value="${comida.total_calorias}" required >
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Tipo</label>
				    <input type="text" class="form-control" id="tipo" name="tipo" aria-describedby="emailHelp" placeholder="Tipo da Comida" value="${comida.tipo}" required>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Ingrediente(Separados por Enter)</label>
				    <textarea class="form-control" id="myList" name="myList" aria-describedby="emailHelp" placeholder="Ingrediente" required><c:forEach items="${comida.myList}" var="ingredientes">${ingredientes}
				    </c:forEach></textarea>
				  </div>

				   <div class="form-group">
				    <label for="exampleInputPassword1">Foto 1 ( Passar link )</label>
				    <input type="text" class="form-control" id="foto" name="foto" value="${comida.foto}" aria-describedby="emailHelp" placeholder="Foto 1"		>
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Foto 2 ( Passar link )</label>
				    <input type="text" class="form-control" id="foto2" name="foto2" value="${comida.foto2}" aria-describedby="emailHelp" placeholder="Foto 2">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputPassword1">Foto 3 ( Passar link )</label>
				    <input type="text" class="form-control" id="foto3" name="foto3" value="${comida.foto3}" aria-describedby="emailHelp" placeholder="Foto 3">
				  </div>
				
				  <div>
					  <button type="submit" class="btn btn-primary">Adicionar Nova comida</button>
					  <a href="${contextPath}/"><button type="button" class="btn btn-danger">Cancelar</button></a>
				  </div>	
				</form>
			</div>
		</div>

    <!-- jQuery -->
    <script src="${js}/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>