<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<%--&lt;%&ndash;<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>&ndash;%&gt;--%>
<%--<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<%@taglib uri="/struts-tags" prefix="s" %>--%>
<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%--&lt;%&ndash;%>
<%--    response.setHeader("pragma", "no-cache");--%>
<%--    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");--%>
<%--    response.setHeader("Expires", "0");--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>--%>
<%--        Login--%>
<%--    </title>--%>
<%--</head>--%>
<%--<body>--%>
<%--Login--%>
<%--<a href="${pageContext.request.contextPath}/books">BookShop</a>--%>
<%--|--%>
<%--<a href="${pageContext.request.contextPath}/login">Login</a>--%>
<%--<br/>--%>
<%--<c:url var="loginUrl" value="/login.action"/>--%>
<%--&lt;%&ndash;<s:url var="loginUrl" value="/login.action">&ndash;%&gt;--%>
<%--<form action="${loginUrl}" method="post">--%>
<%--    <input type="text" name="username" placeholder="Username"/><br/>--%>
<%--    <input type="password" name="password"  placeholder="Password"/><br/>--%>
<%--&lt;%&ndash;    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />&ndash;%&gt;--%>
<%--    <button type="submit">Process</button>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>

<%--<%@ page contentType="text/html; charset=UTF-8"%>--%>
<%--<%@ taglib prefix="s" uri="/struts-tags"%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Struts 2 - Login Application</title>--%>
<%--</head>--%>

<%--<body>--%>

<%--<a href="${pageContext.request.contextPath}/books">BookShop</a>--%>
<%--|--%>
<%--<a href="${pageContext.request.contextPath}/login">Login</a>--%>

<%--<h2>Struts 2 - Login Application</h2>--%>
<%--<s:actionerror />--%>

<%--<s:form action="/login" method="post">--%>
<%--    <s:textfield name="username" key="label.username" size="20" />--%>
<%--    <s:password name="password" key="label.password" size="20" />--%>
<%--    <s:submit method="execute" key="label.login" align="center" />--%>
<%--</s:form>--%>

<%--<br>--%>
<%--Username: admin, password: admin123--%>

<%--</body>--%>

<%--</html>--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<body>
<a href="${pageContext.request.contextPath}/books">BookShop</a>
|
<a href="${pageContext.request.contextPath}/login">Login</a>
<h1>Struts2 - Spring Security Demo</h1>
<%--<s:if test="%{#parameters.error != null}">--%>
<%--    <div style="color: red">Invalid User</div>--%>
<%--</s:if>--%>
<s:form action="login" namespace="/" method="POST">
    <s:textfield name="username" label="Username"/>
    <s:password name="password" label="Password"/>
    <s:submit value="Login"/>
</s:form>
</body>
</html>