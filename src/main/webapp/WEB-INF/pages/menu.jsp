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

