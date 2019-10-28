<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>         
<!DOCTYPE html>
<c:url var="homePage" value="/"/>


<c:url var="profile" value="/profile"/>


<c:url var="userCounter" value="/userCounter"/>

<c:url var="signUp" value="/signUp"/>


<div class="cointainer">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="${homePage}">HomePage</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="${profile}">To Profile
              <span class="sr-only">(current)</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="${userCounter}">To userCounter</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="${signUp}">Sign Up</a>
          </li>
          
          <li class="nav-item">
            <form:form action="${ pageContext.request.contextPath}/logout" method="post">
            	<input type="submit" value="logout" class="nav-link" id="logout">
            </form:form>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>