 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking Lot</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <ul class="navbar-nav mr-auto">
      <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                <li class="nav-item ${activePage eq 'Cars' ? ' active' : ''}">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Cars">Cars</a>
                </li> 
            </c:if>
            <c:if test="${pageContext.request.isUserInRole('ClientRole')}">
                <li class="nav-item ${activePage eq 'Users' ? ' active' : ''}">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Users">Users</a>
                </li> 
            </c:if>
      <li class="nav-item ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? ' active' : ''}">
          <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a> 
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu" aria-labelledby="dropdown01">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
    </ul>
      </div>
    <ul class="navbar-nav ml-auto">
        <li class=""nav-item">
            <c:choose>
                <c:when test="${pageContext.request.getRemoteUser()== null}">
                    <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                </c:when>
                <c:otherwise>
                    <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>  
</nav>

