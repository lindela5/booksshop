<%--<%@ page language="java" pageEncoding="utf-8" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
    <link rel="stylesheet" type="text/css" href="/pages/css/input.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Struts Rais</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="/pages/js/book.js"></script>

    <%--    <sj:head/>--%>
</head>
<body>
<a href="${pageContext.request.contextPath}/books">BookShop</a>
|
<a href="${pageContext.request.contextPath}/login">Login</a>
</br>
<div class="fig"><img src="https://i.ibb.co/tzy7qSS/unnamed.png" class="img-fluid" alt="Responsive image">
</div>

</br>

<%--!The second implementation--%>
<%--<div class="btn-group" role="group" aria-label="Basic example">--%>
<%--    <s:iterator value="section" var="ex">--%>


<%--&lt;%&ndash;            <s:property value="nameSection"/>&ndash;%&gt;--%>

<%--            <s:url var="ajaxLink" value="/bookSection.action">--%>
<%--                    <s:param name="sectionId"><s:property value="id"/></s:param>--%>
<%--            </s:url>--%>
<%--            <sj:a  href="%{ajaxLink}" targets="ajax-results">--%>
<%--                <button type="submit" class="btn btn-secondary" onclick="myFunction()">--%>
<%--                <s:property value="nameSection"/>--%>
<%--                </button>--%>
<%--            </sj:a>--%>

<%--    </s:iterator>--%>
<%--</div>--%>

<%--<div id="ajax-results">--%>
<%--    <h5>JQuery Struts Ajax result will go here</h5>--%>
<%--</div>--%>


<%--<div class="btn-group" role="group" aria-label="Basic example">--%>
<%--    <s:iterator value="section" var="ex">--%>
<%--&lt;%&ndash;        <s:param name="sectionId"><s:property value="id"/></s:param>&ndash;%&gt;--%>

<%--                <button type="submit" class="btn btn-secondary" onclick="myFunction()">--%>
<%--                    <input type="hidden" name="section" value=" <s:property value="id"/>">--%>
<%--                <s:property value="nameSection"/>--%>
<%--                </button>--%>

<%--    </s:iterator>--%>
<%--</div>--%>
<%--!Finish--%>


<div class="btn-group" role="group" aria-label="Basic example">

    <c:forEach items="${section}" var="section">
        <%--        <c:out value="${list}" />--%>
        <button type="submit" class="btn btn-secondary" onclick="myFunction('${section.id}')">
                      <%--            <c:out value="${section}" />--%>
               ${section.nameSection}
        </button>
    </c:forEach>

</div>

</br>

<div id="results">
    <s:iterator value="book" var="ex">
        <div id="card" class="card" >
            <img src="<s:property value="picture"/>" class="card-img-top" >
            <div class="card-body">
                <h5 class="card-title" style=><s:property value="bookTitle"/></h5>
                <s:property value="yearOfIssue"/>
                </br>
                <p> Price: <s:property value="price"/>$</p>
                </br>
                    <%--                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>--%>
                <a href="#" class="btn btn-primary">Add to cart</a>
            </div>
        </div>
    </s:iterator>

</div>
<footer id="footerWith" >
    <span>Bookshop M<sup>&#169;</sup> </span>
    <span><a href="mailto:lindela@mail.ru"> E-mail: bookshopM@mail.ru</a></span>
</footer>
</body>


</html>