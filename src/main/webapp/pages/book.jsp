<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--<link rel='stylesheet' href='/css/bootstrap.min.css'>--%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%--<%@page import="org.json.simple.parser.JSONParser"%>--%>
<%--<%@page import="org.json.simple.JSONObject"%>--%>
<%--<%@page import="com.innowise.darya.action.BooksAction"%>--%>
<%--<%@page import="com.innowise.darya.dto.BookDTO"%>--%>
<%--<%@ taglib prefix="s" uri="/struts-tags" %>--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Struts Rais</title>
</head>
<body>


<%--<%@ JSONParser jsonParser = new JSONParser(); %>--%>
<%--<%@ JSONObject jsonObject = (JSONObject) jsonParser.parse(reader); %>--%>

<%--<s:action name="books!default" executeResult="false" />--%>
<%--<s:property value="jsonString"/><br />--%>


<%--<s:subset source="${gson.fromJson(jsonString)}" count="3">--%>
<%--    <table border="0" cellspacing="0" cellpadding="1">--%>
<%--    <s:iterator><tr>--%>
<%--        <td>--%>
<%--        <s:property />--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    </s:iterator>--%>
<%--    </table>--%>
<%--</s:subset>--%>

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



<%--<c:forEach var="book" items="${gson.fromJson(jsonString)}">--%>
<%--    <div>--%>
<%--        <c:out value="${book.bookTitle}" />--%>
<%--    </div>--%>
<%--    <br />--%>
<%--</c:forEach>--%>
<%--<button class="btn btn-primary" type="submit">Detective</button>--%>
<%--<button class="btn btn-primary" type="submit">Fantasy</button>--%>
<%--<button class="btn btn-primary" type="submit">Adventure</button>--%>
<%--<button class="btn btn-primary" type="submit">Classic</button>--%>
<%--<button class="btn btn-primary" type="submit">Drama</button>--%>
<%--<button class="btn btn-primary" type="submit">Horror</button>--%>
<%--<button class="btn btn-primary" type="submit">Mystery</button>--%>

<div class="btn-group" role="group" aria-label="Basic example" style="width : 100%;">
    <s:iterator value="section" var="ex">
        <button type="button" class="btn btn-secondary"><s:property value="id"/><s:property value="nameSection"/></button>
<%--    <button type="button" class="btn btn-secondary">Detective</button>--%>
<%--    <button type="button" class="btn btn-secondary">Fantasy</button>--%>
<%--    <button type="button" class="btn btn-secondary">Adventure</button>--%>
<%--    <button type="button" class="btn btn-secondary">Classic</button>--%>
<%--    <button type="button" class="btn btn-secondary">Drama</button>--%>
<%--    <button type="button" class="btn btn-secondary">Horror</button>--%>
<%--    <button type="button" class="btn btn-secondary">Mystery</button>--%>
</s:iterator>
</div>


<%--<table border="1">--%>
<%--    <tr>--%>
<%--        <td>Name</td>--%>
<%--        <td>Amt</td>--%>
<%--        <td>Amt</td>--%>
<%--    </tr>--%>
    <s:iterator value="book" var="ex">
        <div class="card" style="width: 18rem; float: left; height: 20rem;">
            <img src="..." class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Card title</h5>
                    <s:property value="bookTitle"/></td>
<%--                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
<%--        <tr>--%>
<%--            <td><s:property value="bookTitle"/></td>--%>
<%--            <td><s:property value="isbn"/></td>--%>
<%--            <td><s:property value="yearOfIssue"/></td>--%>
<%--&lt;%&ndash;            <td><s:textfield cssClass="num" onchange="calculateSum()"/></td>&ndash;%&gt;--%>
<%--        </tr>--%>
    </s:iterator>
<%--</table>--%>



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

</body>
<!-- Footer -->
<!-- Footer -->
<footer class="page-footer font-small cyan darken-3">

    <!-- Footer Elements -->
    <div class="container">

        <!-- Grid row-->
        <div class="row">

            <!-- Grid column -->
            <div class="col-md-12 py-5">
                <div class="mb-5 flex-center">

                    <!-- Facebook -->
                    <a class="fb-ic">
                        <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Twitter -->
                    <a class="tw-ic">
                        <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!-- Google +-->
                    <a class="gplus-ic">
                        <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Linkedin -->
                    <a class="li-ic">
                        <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Instagram-->
                    <a class="ins-ic">
                        <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
                    </a>
                    <!--Pinterest-->
                    <a class="pin-ic">
                        <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
                    </a>
                </div>
            </div>
            <!-- Grid column -->

        </div>
        <!-- Grid row-->

    </div>
    <!-- Footer Elements -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2020 Copyright:
        <a href="https://mdbootstrap.com/"> MDBootstrap.com</a>
    </div>
    <!-- Copyright -->

</footer>
<!-- Footer -->


</html>
