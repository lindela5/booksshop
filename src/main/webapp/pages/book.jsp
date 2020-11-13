<%--
  Created by IntelliJ IDEA.
  User: darya
  Date: 11.11.2020
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"--%>
<%--"http://www.w3.org/TR/html4/loose.dtd">--%>

<%--<%@page language="java" contentType="text/html; charset=UTF-8"--%>
<%--        pageEncoding="UTF-8"%>--%>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%--<%@page import="org.json.simple.parser.JSONParser"%>--%>
<%--<%@page import="org.json.simple.JSONObject"%>--%>

<%--<%@page import="com.innowise.darya.action.BooksAction"%>--%>
<%--<%@page import="com.innowise.darya.dto.BookDTO"%>--%>

<%--<jsp:useBean id="users" class="com.innowise.darya.action.BooksAction" scope="page" />--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>--%>
<%--<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>--%>
<%--<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>Struts Rais</title>

<%--<%@ JSONParser jsonParser = new JSONParser(); %>--%>
<%--<%@ JSONObject jsonObject = (JSONObject) jsonParser.parse(reader); %>--%>

<%--<s:action name="books!default" executeResult="false" />--%>
<s:property value="jsonString"/><br />


<s:subset source="jsonObject" count="3">
    <table border="0" cellspacing="0" cellpadding="1">
    <s:iterator><tr>
        <td>
        <s:property />
        </td>
    </tr>
    </s:iterator>
    </table>
</s:subset>

<%--<table border="0" cellspacing="0" cellpadding="1">--%>
<%--    <tr>--%>
<%--        <th>Days of the week</th>--%>
<%--    </tr>--%>

<%--    <s:iterator value="jsonString" status="rowstatus">--%>
<%--        <tr>--%>
<%--            <s:if test="#rowstatus.odd == true">--%>
<%--                <td style="background: grey"><s:property value="bookTitle"/></td>--%>
<%--            </s:if>--%>
<%--            <s:else>--%>
<%--                <td><s:property/></td>--%>
<%--            </s:else>--%>
<%--        </tr>--%>
<%--    </s:iterator>--%>
<%--</table>--%>

<%--<table>--%>
<%--<s:iterator  status="stat" value="jsonString" >--%>
<%--    <tr id="<s:property value="#stat.index"/>">--%>
<%--        <td><s:textfield id="jsonString[%{#stat.index}].bookTitle" name="jsonString[%{#stat.index}].bookTitle"  cssClass="size30" labelposition="left"  ></s:textfield> </td>--%>
<%--        <td><s:textfield id="jsonString[%{#stat.index}].isbn" name="jsonString[%{#stat.index}].isbn"  cssClass="size30" labelposition="left"  ></s:textfield> </td>--%>
<%--    </tr>--%>
<%--</s:iterator>--%>
<%--</table>--%>
<%--&lt;%&ndash;<script src="js/book.js"></script>&ndash;%&gt;--%>



<c:forEach var="book" items="${gson.fromJson(jsonString)}">
    <div>
        <c:out value="${book.bookTitle}" />
    </div>
    <br />
</c:forEach>






<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <title>Пример JSP JSTL</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h3>Герои "12-и стульев"</h3>--%>
<%--<table border="1" cellspacing="0" cellpadding="2">--%>
<%--    <tr>--%>
<%--        <td>UID/td>--%>
<%--        <td>Name</td>--%>
<%--    </tr>--%>

<%--    <c:forEach items="${users.data}" var="user">--%>
<%--        <tr>--%>
<%--            <td>${user.id}</td>--%>
<%--            <td>${user.name}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>