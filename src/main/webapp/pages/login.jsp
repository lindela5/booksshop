<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>--%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--&lt;%&ndash;%>
<%--    response.setHeader("pragma", "no-cache");--%>
<%--    response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");--%>
<%--    response.setHeader("Expires", "0");--%>
<%--%>--%>
<!DOCTYPE html>
<html>
<head>
    <title>
        Login
    </title>
</head>
<body>
Login
<br/>
<c:url var="loginUrl" value="/pages/login"/>
<%--<s:url var="loginUrl" value="/login.action">--%>
<form action="${loginUrl}" method="post">
    <input type="text" name="username" placeholder="Username"/><br/>
    <input type="password" name="password"  placeholder="Password"/><br/>
    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
    <button type="submit">Process</button>
</form>
</body>
</html>