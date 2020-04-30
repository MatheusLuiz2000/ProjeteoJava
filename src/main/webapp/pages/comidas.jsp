<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
   <head>
      <fmt:setLocale value="pt-BR" />
      <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;0,700;1,300&display=swap" rel="stylesheet">
      <title>Comidas</title>
      <spring:url value="/resources/css" var="css" />
      <spring:url value="/resources/js" var="js" />
      <spring:url value="/resources/images" var="img" />
      <c:set value="${pageContext.request.contextPath}" var="contextPath" />
      <link href="${css}/bootstrap.css" rel="stylesheet">
      <link href="${css}/main.css" rel="stylesheet">
      <link href="${css}/tooltip.css" rel="stylesheet">
      <link href="${css}/small-business.css" rel="stylesheet">
   </head>
   <body>
      <a href="${contextPath}/adicionarComida" class="float" tooltip="Adicionar nova Comida" flow="up" >
      <img src="${img}/create-food.svg" class="my-float"  />
      </a> 
      <div class="container">
         <div class="row align-items-center justify-content-center">
            <h1 class="titulo-pagina mb-4">Comidas Deliciosas</h1>
         </div>
      </div>
      <div class="container mt-4">
         <c:if test="${not empty messageEditar}">
            <div class="alert alert-success" role="alert">
               ${messageEditar}
            </div>
         </c:if>
         <c:if test="${not empty messageDeletar}">
            <div class="alert alert-warning" role="alert">
               ${messageDeletar}
            </div>
         </c:if>
         <c:if test="${not empty messageCriar}">
            <div class="alert alert-success" role="alert">
               ${messageCriar}
            </div>
         </c:if>
      </div>
      <div class="container" style="margin-top:95px;">
         <div class="row align-items-center">
            <c:forEach items="${comidas}" var="comidas">
               <div class="col-lg-12 box">
                  <div class="row align-items-center title-box">
                     <div class="col-lg-8">
                        <div class="pais_origem title-box-h1">
                           <img src="${img}/lunch.svg" />
                           <h3 class="display-1 title">${comidas.nome}</h3>
                        </div>
                     </div>
                     <div class="col-lg-4">
                        <div class="action">
                           <a href="${contextPath}/comida/editar/${comidas.id}"><button type="button" class="btn btn-success">Editar comida</button></a>    		
                           <form:form action="${contextPath}/comida/deletar/${comidas.id}" method="delete">
                              <input type="submit" value="Excluir" class="btn btn-danger btn-xs">
                           </form:form>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div id="carrouseCustom" class="carousel slide carrousel-custom" data-ride="carousel">
                        <div class="carousel-inner">
                           <div class="carousel-item active">
                              <img class="d-block w-100" src="${comidas.foto}">
                           </div>
                           <div class="carousel-item">
                              <img class="d-block w-100" src="${comidas.foto2}">
                           </div>
                           <div class="carousel-item">
                              <img class="d-block w-100" src="${comidas.foto3}" >
                           </div>
                           <a class="carousel-control-prev" href="#carrouseCustom" role="button" data-slide="prev">
                           <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                           <span class="sr-only">Previous</span>
                           </a>
                           <a class="carousel-control-next" href="#carrouseCustom" role="button" data-slide="next">
                           <span class="carousel-control-next-icon" aria-hidden="true"></span> 
                           <span class="sr-only">Next</span>
                           </a>
                        </div>
                     </div>
                  </div>
                  <div class="col-lg-12">
                     <div class="pais_origem">
                        <img src="${img}/tag.svg" />
                        <h3 class="display-1 title">Descrição: </h3>
                     </div>
                     <p class="mt-5">${comidas.descricao}</p>
                     <div class="pais_origem">
                        <img src="${img}/farm.svg" />
                        <h3 class="display-1 title">Ingredientes: </h3>
                     </div>
                     <div class="lista">
                        <ul>
                           <c:forEach items="${comidas.myList}" var="ingredientes">
                              <li>
                                 ${ingredientes}
                              </li>
                           </c:forEach>
                        </ul>
                     </div>
                     <div class="pais_origem">
                        <img src="${img}/question.svg" />
                        <h3 class="display-1 title">Informações legais sobre a comida:</h3>
                     </div>
                     <div class="container-info">
                        <div class="pais_origem">
                           <img src="${img}/money.svg" />
                           <h4>
                              <fmt:formatNumber value="${comidas.preco}" minFractionDigits="2" type="currency" />
                           </h4>
                        </div>
                        <div class="pais_origem">
                           <img src="${img}/map.svg" />
                           <h4>${comidas.pais_origem}</h4>
                        </div>
                        <div class="pais_origem">
                           <img src="${img}/calorie.svg" />
                           <h4>${comidas.total_calorias} kcal</h4>
                        </div>
                        <div class="pais_origem">
                           <img src="${img}/food.svg" />
                           <h4>${comidas.tipo}</h4>
                        </div>
                     </div>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
      <!-- jQuery -->
      <script src="${js}/jquery.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
      <!-- Bootstrap Core JavaScript -->
      <script src="${js}/bootstrap.min.js"></script>
   </body>
</html>