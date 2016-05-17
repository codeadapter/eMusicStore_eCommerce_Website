<%--
  Created by IntelliJ IDEA.
  User: ajeasyvaio
  Date: 05/04/2016
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/templates/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div id="login-box">

        <h2>Login with username and password</h2>

        <c:if test="${not empty msg}">
            <div class="msg">${msg}</div>
        </c:if>


        <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
               <div class="form-group">
                   <c:if test="${not empty error}">
                       <div class="msg" style="color: red">${error}</div>
                   </c:if>
                   <label for="username">User:</label>
                   <input type="text" id="username" name="username" class="form-control"/>
               </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control"/>
            </div>

            <input type="submit" name="Submit" class="btn btn-default"/>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/views/templates/footer.jsp"%>
